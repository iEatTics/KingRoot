package cloudsdk.ext.p008kr;

import android.content.Context;
import android.os.PowerManager;
import java.util.Arrays;
import java.util.List;
/* renamed from: cloudsdk.ext.kr.WakeLockMgr */
/* loaded from: classes.dex */
public final class WakeLockMgr {

    /* renamed from: Y */
    private static int f152Y = 0;

    /* renamed from: Z */
    private static PowerManager.WakeLock f153Z = null;

    /* renamed from: cloudsdk.ext.kr.WakeLockMgr$ILockOperation */
    /* loaded from: classes.dex */
    public interface ILockOperation<T> {
        T execute(List<Object> list);
    }

    private WakeLockMgr() {
    }

    public static void lock(Context context) {
        synchronized (WakeLockMgr.class) {
            int i = f152Y + 1;
            f152Y = i;
            if (i <= 1) {
                if (f153Z == null) {
                    try {
                        f153Z = ((PowerManager) context.getSystemService("power")).newWakeLock(536870913, "");
                    } catch (SecurityException e) {
                    }
                }
                try {
                    if (f153Z != null && !f153Z.isHeld()) {
                        f153Z.acquire();
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    public static void release() {
        synchronized (WakeLockMgr.class) {
            if (f152Y > 0) {
                f152Y--;
            }
            if (f152Y <= 0) {
                try {
                    if (f153Z != null && f153Z.isHeld()) {
                        f153Z.release();
                    }
                } catch (Exception e) {
                }
                f153Z = null;
            }
        }
    }

    public static <T> T lockTask(Context context, ILockOperation<T> iLockOperation, Object... objArr) {
        try {
            lock(context);
            return iLockOperation.execute(Arrays.asList(objArr));
        } finally {
            release();
        }
    }
}
