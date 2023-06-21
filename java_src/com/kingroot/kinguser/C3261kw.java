package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.kw */
/* loaded from: classes.dex */
public class C3261kw implements InterfaceC3175ib {

    /* renamed from: us */
    private InterfaceC3160hp f2973us;

    /* renamed from: com.kingroot.kinguser.kw$a */
    /* loaded from: classes.dex */
    static class C3262a {

        /* renamed from: ut */
        public int f2974ut;

        /* renamed from: uu */
        public String f2975uu;

        /* renamed from: uv */
        public boolean f2976uv;

        private C3262a() {
        }

        /* renamed from: aU */
        public static C3262a m3234aU(String str) {
            String[] split = str.split("\\|");
            C3262a c3262a = new C3262a();
            if (split.length >= 3) {
                c3262a.f2974ut = Integer.parseInt(split[0]);
                c3262a.f2975uu = split[1];
                c3262a.f2976uv = Integer.parseInt(split[2]) > 0;
            }
            return c3262a;
        }
    }

    public C3261kw(InterfaceC3160hp interfaceC3160hp) {
        this.f2973us = interfaceC3160hp;
    }

    @Override // com.kingroot.kinguser.InterfaceC3175ib
    /* renamed from: e */
    public int mo3235e(int i, String str) {
        if (80 != i) {
            return 2;
        }
        C3262a m3234aU = C3262a.m3234aU(str);
        if (m3236ad(m3234aU.f2974ut) && m3237aT(m3234aU.f2975uu)) {
            C3276lh.setEnabled(m3234aU.f2976uv);
            C3260kv.m3238j(m3234aU.f2976uv);
            if (!m3234aU.f2976uv && this.f2973us != null) {
                this.f2973us.m3608bf();
            }
            return 1;
        }
        return 2;
    }

    /* renamed from: ad */
    private boolean m3236ad(int i) {
        return i == -1 || 40 == i;
    }

    /* renamed from: aT */
    private boolean m3237aT(String str) {
        return "-1".equals(str) || str.endsWith(C3339nd.m2917eY().m2926B(C3183ih.getContext()));
    }
}
