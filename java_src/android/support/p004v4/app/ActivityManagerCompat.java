package android.support.p004v4.app;

import android.app.ActivityManager;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.app.ActivityManagerCompat */
/* loaded from: classes.dex */
public final class ActivityManagerCompat {
    private ActivityManagerCompat() {
    }

    public static boolean isLowRamDevice(@NonNull ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return ActivityManagerCompatKitKat.isLowRamDevice(activityManager);
        }
        return false;
    }
}
