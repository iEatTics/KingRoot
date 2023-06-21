package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.ky */
/* loaded from: classes.dex */
public class C3264ky implements InterfaceC3362nt {

    /* renamed from: uA */
    private String f2977uA;

    /* renamed from: uw */
    private String f2978uw;

    /* renamed from: ux */
    private String f2979ux;

    /* renamed from: uy */
    private String f2980uy;

    /* renamed from: uz */
    private String f2981uz;

    private C3264ky(C3265a c3265a) {
        this.f2978uw = c3265a.f2983uw;
        this.f2979ux = c3265a.f2984ux;
        this.f2980uy = c3265a.f2985uy;
        this.f2981uz = c3265a.f2986uz;
        this.f2977uA = c3265a.f2982uA;
    }

    /* renamed from: com.kingroot.kinguser.ky$a */
    /* loaded from: classes.dex */
    public static class C3265a {

        /* renamed from: uA */
        private String f2982uA;

        /* renamed from: uw */
        private String f2983uw;

        /* renamed from: ux */
        private String f2984ux;

        /* renamed from: uy */
        private String f2985uy;

        /* renamed from: uz */
        private String f2986uz;

        public C3265a(String str) {
            this.f2983uw = str;
        }

        /* renamed from: aV */
        public C3265a m3229aV(String str) {
            this.f2984ux = str;
            return this;
        }

        /* renamed from: aW */
        public C3265a m3228aW(String str) {
            this.f2985uy = str;
            return this;
        }

        /* renamed from: aX */
        public C3265a m3227aX(String str) {
            this.f2986uz = str;
            return this;
        }

        /* renamed from: aY */
        public C3265a m3226aY(String str) {
            this.f2982uA = str;
            return this;
        }

        /* renamed from: do */
        public C3264ky m3222do() {
            return new C3264ky(this);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3362nt
    /* renamed from: dk */
    public String mo2818dk() {
        return this.f2978uw;
    }

    @Override // com.kingroot.kinguser.InterfaceC3362nt
    /* renamed from: dl */
    public String mo2817dl() {
        return this.f2979ux;
    }

    @Override // com.kingroot.kinguser.InterfaceC3362nt
    /* renamed from: bI */
    public String mo2820bI() {
        return this.f2980uy;
    }

    @Override // com.kingroot.kinguser.InterfaceC3362nt
    /* renamed from: dm */
    public String mo2816dm() {
        return this.f2977uA;
    }

    @Override // com.kingroot.kinguser.InterfaceC3362nt
    /* renamed from: bJ */
    public String mo2819bJ() {
        return this.f2981uz;
    }

    @Override // com.kingroot.kinguser.InterfaceC3362nt
    /* renamed from: dn */
    public String mo2815dn() {
        return "Prometheus";
    }
}
