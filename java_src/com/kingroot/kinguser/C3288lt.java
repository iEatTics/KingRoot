package com.kingroot.kinguser;

import com.king.uranus.C0396bq;
/* renamed from: com.kingroot.kinguser.lt */
/* loaded from: classes.dex */
public class C3288lt extends C0396bq {

    /* renamed from: vb */
    public static long f3019vb = 3000;

    /* renamed from: vc */
    private static volatile C3288lt f3020vc;

    /* renamed from: com.kingroot.kinguser.lt$a */
    /* loaded from: classes.dex */
    public class C3289a {

        /* renamed from: eF */
        public String f3021eF;

        /* renamed from: vd */
        public int f3022vd;

        public C3289a(String str, int i) {
            this.f3021eF = str;
            this.f3022vd = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.lt$b */
    /* loaded from: classes.dex */
    public class C3290b {

        /* renamed from: vd */
        public int f3024vd;

        /* renamed from: vf */
        public String f3026vf;

        public C3290b(String str, int i) {
            this.f3026vf = str;
            this.f3024vd = i;
        }
    }

    /* renamed from: eg */
    public static C3288lt m3146eg() {
        if (f3020vc == null) {
            synchronized (C3288lt.class) {
                if (f3020vc == null) {
                    f3020vc = new C3288lt();
                }
            }
        }
        return f3020vc;
    }

    /* renamed from: eh */
    public void m3145eh() {
        m13668bj("zygote");
        m13668bj("zygote64");
        m13668bj("system_server");
    }

    /* renamed from: ei */
    public C3289a m3144ei() {
        C3289a m3143m = m3143m(false);
        if (m3143m.f3022vd != 0) {
            C3285lq.m3161dW().m3158dZ();
            C3332mx.m2961eL().m2952g(m3143m.f3021eF, m3143m.f3022vd);
        } else {
            C3285lq.m3161dW().m3156eb();
        }
        return m3143m;
    }

    /* renamed from: m */
    private C3289a m3143m(boolean z) {
        int f = m13664f("zygote", z);
        int f2 = m13664f("zygote64", z);
        int f3 = m13664f("system_server", z);
        C3290b m3147d = m3147d(f, f2);
        if (m3147d.f3024vd == 0 && f3 == 0) {
            return new C3289a("", 0);
        }
        if (m3147d.f3024vd != 0 && f3 != 0) {
            boolean m3149ee = C3287ls.m3151ec().m3149ee();
            if (!z) {
                C3287ls.m3151ec().m3148ef();
            }
            if (m3149ee) {
                return new C3289a("system_server", f3);
            }
            return new C3289a(m3147d.f3026vf, m3147d.f3024vd);
        } else if (m3147d.f3024vd != 0) {
            return new C3289a(m3147d.f3026vf, m3147d.f3024vd);
        } else {
            return new C3289a("system_server", f3);
        }
    }

    /* renamed from: d */
    private C3290b m3147d(int i, int i2) {
        if (i == 0 && i2 == 0) {
            return new C3290b("", 0);
        }
        if (i != 0 && i2 != 0) {
            return new C3290b("zygote64", i2);
        }
        if (i != 0) {
            return new C3290b("zygote", i);
        }
        return new C3290b("zygote64", i2);
    }
}
