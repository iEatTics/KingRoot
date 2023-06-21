package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import java.io.Serializable;
/* loaded from: classes.dex */
public final class ConnectType implements Serializable {
    private static ConnectType[] bPS;
    public static final ConnectType bPT;
    public static final ConnectType bPU;
    public static final ConnectType bPV;
    public static final ConnectType bPW;
    public static final ConnectType bPX;
    public static final ConnectType bPY;

    /* renamed from: lo */
    static final /* synthetic */ boolean f4904lo;
    private String __T;
    private int __value;

    static {
        f4904lo = !ConnectType.class.desiredAssertionStatus();
        bPS = new ConnectType[6];
        bPT = new ConnectType(0, 0, "CT_NONE");
        bPU = new ConnectType(1, 1, "CT_GPRS");
        bPV = new ConnectType(2, 2, "CT_WIFI");
        bPW = new ConnectType(3, 3, "CT_GPRS_WAP");
        bPX = new ConnectType(4, 4, "CT_GPRS_NET");
        bPY = new ConnectType(5, 5, "CT_3G_NET");
    }

    public int value() {
        return this.__value;
    }

    public String toString() {
        return this.__T;
    }

    private ConnectType(int i, int i2, String str) {
        this.__T = new String();
        this.__T = str;
        this.__value = i2;
        bPS[i] = this;
    }
}
