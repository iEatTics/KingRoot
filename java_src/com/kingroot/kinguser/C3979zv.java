package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.zv */
/* loaded from: classes.dex */
public class C3979zv {

    /* renamed from: WW */
    private long f4108WW;

    private C3979zv() {
        this.f4108WW = 86400000L;
    }

    /* renamed from: pG */
    public long m1239pG() {
        return this.f4108WW;
    }

    /* renamed from: com.kingroot.kinguser.zv$a */
    /* loaded from: classes.dex */
    public static class C3981a {

        /* renamed from: WW */
        private long f4109WW = 86400000;

        /* renamed from: aa */
        public C3981a m1238aa(long j) {
            this.f4109WW = j;
            return this;
        }

        /* renamed from: pH */
        public C3979zv m1237pH() {
            C3979zv c3979zv = new C3979zv();
            c3979zv.f4108WW = this.f4109WW;
            return c3979zv;
        }
    }
}
