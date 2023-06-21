package com.kingroot.kinguser;

import android.content.Context;
/* renamed from: com.kingroot.kinguser.fm */
/* loaded from: classes.dex */
public class C3061fm {
    /* renamed from: a */
    public static void m3844a(Context context, Context context2) {
        C3034ev c3034ev;
        try {
            c3034ev = C3034ev.m3896a(context2.getAssets(), "tpssdk.cert");
        } catch (Exception e) {
            e.printStackTrace();
            c3034ev = null;
        }
        if (c3034ev == null) {
            throw new RuntimeException("generate license failed");
        }
        if (!c3034ev.m3897a(context)) {
            throw new RuntimeException("invalid license");
        }
    }

    /* renamed from: c */
    public static String m3843c(Context context) {
        return C3034ev.m3895b(context);
    }
}
