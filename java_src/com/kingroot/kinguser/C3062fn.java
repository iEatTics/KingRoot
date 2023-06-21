package com.kingroot.kinguser;

import android.content.Context;
/* renamed from: com.kingroot.kinguser.fn */
/* loaded from: classes.dex */
public final class C3062fn {
    /* renamed from: k */
    public static boolean m3841k(Context context) {
        if (context == null) {
            return false;
        }
        try {
            C3061fm.m3844a(context, context);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: c */
    public static String m3842c(Context context) {
        return context == null ? "" : C3061fm.m3843c(context);
    }
}
