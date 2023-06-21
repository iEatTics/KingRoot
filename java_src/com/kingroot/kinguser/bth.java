package com.kingroot.kinguser;

import android.util.Log;
/* loaded from: classes.dex */
public class bth {
    private static boolean DEBUG = false;

    /* renamed from: eD */
    public static void m5540eD(boolean z) {
        DEBUG = z;
    }

    /* renamed from: i */
    public static void m5539i(String str) {
        if (DEBUG) {
            Log.i("Discovery_Log", str);
        }
    }

    /* renamed from: aG */
    public static void m5543aG(String str) {
        if (DEBUG) {
            Log.w("Discovery_Log", str);
        }
    }

    /* renamed from: d */
    public static void m5542d(String str) {
        if (DEBUG) {
            Log.d("Discovery_Log", str);
        }
    }

    /* renamed from: d */
    public static void m5541d(String str, String str2) {
        if (DEBUG) {
            Log.d(str, str2);
        }
    }
}
