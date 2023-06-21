package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class bty {
    private static bty bOe;
    private buk bOf;
    private Context context;

    /* renamed from: bP */
    public static synchronized void m5495bP(Context context) {
        synchronized (bty.class) {
            bOe = new bty(context);
        }
    }

    private bty(Context context) {
        this.context = context;
    }

    public Context getContext() {
        return this.context;
    }

    /* renamed from: eF */
    public void m5494eF(boolean z) {
        but.m5462eF(z);
    }

    public static bty aie() {
        if (bOe == null) {
            throw new NullPointerException("please call sdkInitialize() firstly!!");
        }
        return bOe;
    }

    public buk aif() {
        if (this.bOf == null) {
            throw new NullPointerException("please call setmProNetWork() firstly!!");
        }
        return this.bOf;
    }

    /* renamed from: a */
    public void m5496a(buk bukVar) {
        this.bOf = bukVar;
    }
}
