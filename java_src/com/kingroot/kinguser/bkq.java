package com.kingroot.kinguser;

import android.util.Log;
/* loaded from: classes.dex */
public class bkq {
    /* renamed from: i */
    public static void m6546i(String str) {
        m6545i("COMMON", str);
    }

    /* renamed from: i */
    public static void m6545i(String str, String str2) {
        if (aeP()) {
            Log.i("KL__" + str, str2);
        }
    }

    /* renamed from: d */
    public static void m6551d(String str, String str2) {
        if (aeP()) {
            Log.d("KL__" + str, str2);
        }
    }

    public static boolean aeP() {
        return bkd.aeF();
    }

    /* renamed from: d */
    public static void m6550d(Throwable th) {
        m6552a("COMMON", th);
    }

    /* renamed from: a */
    public static void m6552a(String str, Throwable th) {
        if (th != null && aeP()) {
            Log.w("KL__" + str, th);
        }
    }

    /* renamed from: w */
    public static void m6544w(String str, String str2) {
        if (aeP()) {
            Log.w("KL__" + str, str2);
        }
    }

    /* renamed from: e */
    public static void m6549e(String str) {
        m6548e("COMMON", str);
    }

    /* renamed from: e */
    public static void m6548e(String str, String str2) {
        if (aeP()) {
            Log.e("KL__" + str, str2);
        }
    }

    /* renamed from: e */
    public static void m6547e(String str, String str2, Throwable th) {
        if (aeP()) {
            Log.e("KL__" + str, str2, th);
        }
    }
}
