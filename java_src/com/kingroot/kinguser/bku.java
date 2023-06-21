package com.kingroot.kinguser;

import android.os.Build;
/* loaded from: classes.dex */
public final class bku {

    /* renamed from: YT */
    private static final Object f1725YT = new Object();

    /* renamed from: YU */
    private static volatile Boolean f1726YU = null;

    /* renamed from: qb */
    public static int m6529qb() {
        return Build.VERSION.SDK_INT;
    }

    /* renamed from: qO */
    public static boolean m6530qO() {
        Boolean bool = f1726YU;
        if (bool == null) {
            synchronized (f1725YT) {
                bool = f1726YU;
                if (bool == null) {
                    if (m6529qb() >= 21) {
                        bool = Boolean.valueOf(System.getProperty("java.library.path", "").contains("/system/lib64"));
                        f1726YU = bool;
                    } else {
                        bool = false;
                        f1726YU = bool;
                    }
                }
            }
        }
        return bool.booleanValue();
    }
}
