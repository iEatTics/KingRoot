package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class bre {
    public static String TAG = "DiscoverySdk";
    private static bre bJQ;
    private int appid;
    private Context bJR;
    private bri bJS;
    private brq bJT;
    private bry bJU;

    private bre(Context context, int i) {
        this.appid = i;
        this.bJR = context;
        this.bJT = new brq(context);
        this.bJU = new bry(context);
    }

    /* renamed from: n */
    public static synchronized void m5698n(Context context, int i) {
        synchronized (bre.class) {
            if (bJQ == null) {
                bJQ = new bre(context, i);
            }
        }
    }

    public static bre ahy() {
        if (bJQ == null) {
            throw new NullPointerException("please call sdkInitialize() firstly!!");
        }
        return bJQ;
    }

    public Context getApplicationContext() {
        return this.bJR;
    }

    public static boolean isInitialized() {
        return bJQ != null;
    }

    /* renamed from: a */
    public void m5700a(bri briVar) {
        this.bJS = briVar;
    }

    public bri ahz() {
        if (this.bJS == null) {
            throw new NullPointerException("please call setIProNetwork() firstly!!");
        }
        return this.bJS;
    }

    public brq ahA() {
        return this.bJT;
    }

    /* renamed from: a */
    public void m5701a(brh brhVar) {
        this.bJU.m5615b(brhVar);
    }

    public brh ahB() {
        return this.bJU;
    }

    /* renamed from: a */
    public void m5702a(brg brgVar) {
        brw.ahO().m5618b(brgVar);
    }

    /* renamed from: eD */
    public static void m5699eD(boolean z) {
        bth.m5540eD(z);
    }
}
