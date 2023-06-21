package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.hz */
/* loaded from: classes.dex */
public class C3171hz {

    /* renamed from: ra */
    private String f2764ra;

    /* renamed from: rb */
    private String f2765rb;

    /* renamed from: rc */
    private String f2766rc;

    /* renamed from: rd */
    private String f2767rd;

    /* renamed from: re */
    private boolean f2768re;

    private C3171hz(C3172a c3172a) {
        this.f2764ra = c3172a.url;
        this.f2765rb = c3172a.f2769rf;
        this.f2766rc = c3172a.f2770rg;
        this.f2767rd = c3172a.f2771rh;
        this.f2768re = c3172a.f2772ri;
    }

    public String getUrl() {
        return this.f2764ra;
    }

    /* renamed from: bn */
    public String m3589bn() {
        return this.f2765rb;
    }

    /* renamed from: bo */
    public String m3588bo() {
        return this.f2766rc;
    }

    /* renamed from: bp */
    public String m3587bp() {
        return this.f2767rd;
    }

    /* renamed from: bq */
    public boolean m3586bq() {
        return this.f2768re;
    }

    /* renamed from: br */
    public static C3172a m3585br() {
        return new C3172a();
    }

    /* renamed from: com.kingroot.kinguser.hz$a */
    /* loaded from: classes.dex */
    public static class C3172a {

        /* renamed from: rf */
        private String f2769rf;

        /* renamed from: rg */
        private String f2770rg;

        /* renamed from: rh */
        private String f2771rh;

        /* renamed from: ri */
        private boolean f2772ri;
        private String url;

        private C3172a() {
            this.f2772ri = false;
        }

        /* renamed from: ar */
        public C3172a m3583ar(String str) {
            this.f2770rg = str;
            return this;
        }

        /* renamed from: as */
        public C3172a m3582as(String str) {
            this.f2771rh = str;
            return this;
        }

        /* renamed from: at */
        public C3172a m3581at(String str) {
            this.url = str;
            return this;
        }

        /* renamed from: au */
        public C3172a m3580au(String str) {
            this.f2769rf = str;
            return this;
        }

        /* renamed from: bs */
        public C3171hz m3578bs() {
            return new C3171hz(this);
        }
    }
}
