package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class aev {
    private static Boolean afE = null;
    private static Boolean afF = null;

    /* renamed from: e */
    public static synchronized void m12147e(Context context, boolean z) {
        synchronized (aev.class) {
            if (afF == null || afF.booleanValue() != z) {
                afF = Boolean.valueOf(z);
                C3566rv.m2313i(context, "wod_conf").edit().putBoolean("S02", afF.booleanValue()).commit();
            }
        }
    }
}
