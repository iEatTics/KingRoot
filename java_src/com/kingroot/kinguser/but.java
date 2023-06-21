package com.kingroot.kinguser;

import android.util.Log;
/* loaded from: classes.dex */
public class but {
    private static boolean bOL = true;

    /* renamed from: eF */
    public static void m5462eF(boolean z) {
        bOL = z;
    }

    /* renamed from: i */
    public static void m5461i(String str, String str2) {
        if (bOL) {
            Log.i(str, str2);
        }
    }

    /* renamed from: e */
    public static void m5463e(String str, String str2) {
        if (bOL) {
            Log.e(str, str2);
        }
    }

    /* renamed from: d */
    public static void m5464d(String str, String str2) {
        if (bOL) {
            Log.d(str, str2);
        }
    }
}
