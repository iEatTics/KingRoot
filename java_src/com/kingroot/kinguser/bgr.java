package com.kingroot.kinguser;

import android.os.Environment;
import android.p003os.Environmenu;
/* loaded from: classes.dex */
public class bgr {
    private static final Object sLock = new Object();
    private static String boZ = Environment.getExternalStorageState();

    /* renamed from: iZ */
    public static boolean m7092iZ() {
        boolean equals;
        synchronized (sLock) {
            equals = Environmenu.MEDIA_MOUNTED.equals(boZ);
        }
        return equals;
    }

    /* renamed from: lp */
    public static void m7091lp(String str) {
        synchronized (sLock) {
            boZ = str;
        }
    }
}
