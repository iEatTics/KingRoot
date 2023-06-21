package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.km */
/* loaded from: classes.dex */
public class C3251km implements InterfaceC3159ho {

    /* renamed from: ub */
    private static InterfaceC3159ho f2958ub;

    /* renamed from: tZ */
    private int f2959tZ;

    /* renamed from: ua */
    private String f2960ua;

    private C3251km(int i, String str) {
        this.f2959tZ = i;
        this.f2960ua = str;
    }

    /* renamed from: da */
    public static InterfaceC3159ho m3269da() {
        if (f2958ub == null) {
            f2958ub = new C3251km(0, "");
        }
        return f2958ub;
    }

    /* renamed from: g */
    public static InterfaceC3159ho m3268g(int i, String str) {
        return new C3251km(i, str);
    }

    @Override // com.kingroot.kinguser.InterfaceC3159ho
    /* renamed from: be */
    public int mo3270be() {
        return this.f2959tZ;
    }

    @Override // com.kingroot.kinguser.InterfaceC3159ho
    public String message() {
        return this.f2960ua;
    }
}
