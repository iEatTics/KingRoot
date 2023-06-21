package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.kj */
/* loaded from: classes.dex */
public class C3248kj implements InterfaceC3224jr {

    /* renamed from: tU */
    private String f2952tU;

    /* renamed from: tV */
    private int f2953tV;

    /* renamed from: tW */
    private int f2954tW;

    /* renamed from: tX */
    private C3255kq f2955tX;

    /* renamed from: ts */
    private int f2956ts;

    public C3248kj(C3255kq c3255kq, String str, int i, int i2, int i3) {
        this.f2953tV = 0;
        this.f2954tW = 0;
        this.f2955tX = c3255kq;
        this.f2952tU = str;
        this.f2956ts = i;
        this.f2953tV = i2;
        this.f2954tW = i3;
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    /* renamed from: cG */
    public String mo3283cG() {
        return this.f2952tU;
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    public int getPid() {
        return this.f2956ts;
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    /* renamed from: w */
    public String mo3279w() {
        return this.f2955tX.m3246de();
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    /* renamed from: x */
    public String mo3278x() {
        return this.f2955tX.m3244x();
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    /* renamed from: cH */
    public String mo3282cH() {
        return this.f2955tX.m3245df();
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    /* renamed from: cI */
    public int mo3281cI() {
        return this.f2953tV;
    }

    @Override // com.kingroot.kinguser.InterfaceC3224jr
    /* renamed from: cJ */
    public int mo3280cJ() {
        return this.f2954tW;
    }
}
