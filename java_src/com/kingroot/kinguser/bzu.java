package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class bzu {
    private static bzv bVV;
    private static Context sContext;

    /* renamed from: ge */
    public static Context m5098ge() {
        return sContext;
    }

    /* renamed from: cp */
    public static int m5100cp(Context context) {
        ccb.m4972w(context);
        sContext = context.getApplicationContext();
        bVV = new bzw();
        return 0;
    }

    /* renamed from: g */
    public static <T> T m5099g(Class<T> cls) {
        return (T) bVV.m5096h(cls);
    }
}
