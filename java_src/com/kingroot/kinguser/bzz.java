package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bzz extends Exception {

    /* renamed from: JH */
    private String f2193JH;
    private int errCode;

    /* renamed from: a */
    public int m5093a() {
        return this.errCode;
    }

    public bzz(int i, String str) {
        super(str);
        this.errCode = i;
        this.f2193JH = str;
    }
}
