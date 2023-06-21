package com.kingroot.kinguser;

import android.os.Build;
/* loaded from: classes.dex */
public final class abd {

    /* renamed from: YT */
    private static final Object f1318YT = new Object();

    /* renamed from: YU */
    private static volatile Boolean f1319YU = null;

    /* renamed from: qb */
    public static int m12839qb() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: qO */
    public static boolean m12840qO() {
        Boolean bool = f1319YU;
        if (bool == null) {
            synchronized (f1318YT) {
                bool = f1319YU;
                if (bool == null) {
                    if (m12839qb() >= 21) {
                        bool = Boolean.valueOf(System.getProperty("java.library.path", "").contains("/system/lib64"));
                        f1319YU = bool;
                    } else {
                        bool = false;
                        f1319YU = bool;
                    }
                }
            }
        }
        return bool.booleanValue();
    }
}
