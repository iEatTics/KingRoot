package com.kingroot.kinguser;

import android.os.PowerManager;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.common.app.KApplication;
import java.util.Arrays;
import java.util.List;
/* renamed from: com.kingroot.kinguser.zk */
/* loaded from: classes.dex */
public class C3956zk {

    /* renamed from: WA */
    private static int f4083WA = 0;

    /* renamed from: WB */
    private static PowerManager.WakeLock f4084WB = null;

    /* renamed from: WC */
    private static final SparseArray<PowerManager.WakeLock> f4085WC = new SparseArray<>();

    /* renamed from: com.kingroot.kinguser.zk$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3957a<T> {
        T execute(List<Object> list);
    }

    /* renamed from: a */
    public static PowerManager.WakeLock m1303a(long j, int i, String str, boolean z) {
        try {
            PowerManager.WakeLock newWakeLock = ((PowerManager) KApplication.m13453ge().getSystemService("power")).newWakeLock(i, str);
            if (newWakeLock != null) {
                newWakeLock.setReferenceCounted(z);
                newWakeLock.acquire(j);
                C3951zg.m1322d("commonk_framework_wk_mgr", "wakelock " + str + " force lock at:" + acu.m12570g((String) null, System.currentTimeMillis()));
                synchronized (f4085WC) {
                    f4085WC.put(str.hashCode(), newWakeLock);
                }
                return newWakeLock;
            }
        } catch (SecurityException e) {
            e.printStackTrace();
        }
        return null;
    }

    /* renamed from: y */
    public static void m1300y(int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            PowerManager powerManager = (PowerManager) KApplication.m13453ge().getSystemService("power");
            synchronized (f4085WC) {
                PowerManager.WakeLock wakeLock = f4085WC.get(str.hashCode());
                if (wakeLock == null) {
                    try {
                        wakeLock = powerManager.newWakeLock(i, str);
                        f4085WC.put(str.hashCode(), wakeLock);
                    } catch (SecurityException e) {
                    }
                }
                if (wakeLock != null && !wakeLock.isHeld()) {
                    wakeLock.acquire();
                    C3951zg.m1322d("commonk_framework_wk_mgr", "wakelock " + str + " has acquired at " + acu.m12570g((String) null, System.currentTimeMillis()));
                }
            }
        }
    }

    /* renamed from: dw */
    public static void m1301dw(String str) {
        if (!TextUtils.isEmpty(str)) {
            synchronized (f4085WC) {
                PowerManager.WakeLock wakeLock = f4085WC.get(str.hashCode());
                if (wakeLock != null) {
                    if (wakeLock.isHeld()) {
                        wakeLock.release();
                        C3951zg.m1322d("commonk_framework_wk_mgr", "wakelock " + str + " has released at " + acu.m12570g((String) null, System.currentTimeMillis()));
                    }
                    f4085WC.remove(str.hashCode());
                }
            }
        }
    }

    private static void lock() {
        synchronized (C3956zk.class) {
            f4083WA++;
            C3951zg.m1322d("k_framework_wk_mgr", "WakeLockMgr|lock, count:" + f4083WA);
            if (f4083WA <= 1) {
                if (f4084WB == null) {
                    try {
                        f4084WB = ((PowerManager) bzt.m5101ge().getSystemService("power")).newWakeLock(536870913, "k_framework_wk_mgr");
                    } catch (SecurityException e) {
                        e.printStackTrace();
                    }
                }
                try {
                    if (f4084WB != null && !f4084WB.isHeld()) {
                        f4084WB.acquire();
                        C3951zg.m1322d("k_framework_wk_mgr", "WakeLockMgr|acquire lock");
                    }
                } catch (Exception e2) {
                }
            }
        }
    }

    private static void release() {
        synchronized (C3956zk.class) {
            if (f4083WA > 0) {
                f4083WA--;
            }
            C3951zg.m1322d("k_framework_wk_mgr", "WakeLockMgr|release, count:" + f4083WA);
            if (f4083WA <= 0) {
                try {
                    if (f4084WB != null && f4084WB.isHeld()) {
                        f4084WB.release();
                        C3951zg.m1322d("k_framework_wk_mgr", "WakeLockMgr|release lock");
                    }
                } catch (Exception e) {
                }
                f4084WB = null;
            }
        }
    }

    /* renamed from: a */
    public static <T> T m1302a(InterfaceC3957a<T> interfaceC3957a, Object... objArr) {
        try {
            lock();
            return interfaceC3957a.execute(Arrays.asList(objArr));
        } finally {
            release();
        }
    }
}
