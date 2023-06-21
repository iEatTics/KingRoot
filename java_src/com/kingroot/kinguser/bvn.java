package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class bvn {
    private static bvn[] bQa;
    public static final bvn bQb;
    public static final bvn bQc;
    public static final bvn bQd;

    /* renamed from: lo */
    static final /* synthetic */ boolean f2121lo;
    private String __T;
    private int __value;

    static {
        f2121lo = !bvn.class.desiredAssertionStatus();
        bQa = new bvn[3];
        bQb = new bvn(0, 0, "CPUSH_NONE");
        bQc = new bvn(1, 1, "CPUSH_PUSH");
        bQd = new bvn(2, 2, "CPUSH_HIS");
    }

    public int value() {
        return this.__value;
    }

    public String toString() {
        return this.__T;
    }

    private bvn(int i, int i2, String str) {
        this.__T = new String();
        this.__T = str;
        this.__value = i2;
        bQa[i] = this;
    }
}
