package android.support.p004v4.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
/* renamed from: android.support.v4.content.WakefulBroadcastReceiver */
/* loaded from: classes.dex */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {
    private static final String EXTRA_WAKE_LOCK_ID = "android.support.content.wakelockid";
    private static final SparseArray<PowerManager.WakeLock> mActiveWakeLocks = new SparseArray<>();
    private static int mNextId = 1;

    public static ComponentName startWakefulService(Context context, Intent intent) {
        synchronized (mActiveWakeLocks) {
            int i = mNextId;
            mNextId++;
            if (mNextId <= 0) {
                mNextId = 1;
            }
            intent.putExtra(EXTRA_WAKE_LOCK_ID, i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(BuglyBroadcastRecevier.UPLOADLIMITED);
            mActiveWakeLocks.put(i, newWakeLock);
            return startService;
        }
    }

    public static boolean completeWakefulIntent(Intent intent) {
        boolean z = false;
        int intExtra = intent.getIntExtra(EXTRA_WAKE_LOCK_ID, 0);
        if (intExtra != 0) {
            synchronized (mActiveWakeLocks) {
                PowerManager.WakeLock wakeLock = mActiveWakeLocks.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    mActiveWakeLocks.remove(intExtra);
                    z = true;
                } else {
                    Log.w("WakefulBroadcastReceiver", "No active wake lock id #" + intExtra);
                    z = true;
                }
            }
        }
        return z;
    }
}
