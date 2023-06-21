package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import java.util.concurrent.atomic.AtomicReference;
import sm.C4408c;
import sm.C4409d;
import sm.C4410e;
import sm.C4411f;
import sm.C4412g;
import sm.C4413h;
import sm.C4414j;
/* loaded from: classes.dex */
public class cdj {

    /* renamed from: m */
    private static String f2275m = null;

    /* renamed from: a */
    private Context f2276a;

    /* renamed from: b */
    private boolean f2277b;

    /* renamed from: c */
    private String f2278c;

    /* renamed from: d */
    private int f2279d;

    /* renamed from: e */
    private int f2280e;

    /* renamed from: f */
    private String f2281f;

    /* renamed from: g */
    private String f2282g;

    /* renamed from: h */
    private String f2283h;

    /* renamed from: i */
    private String f2284i;

    /* renamed from: j */
    private String f2285j;

    /* renamed from: l */
    private int f2287l;

    /* renamed from: k */
    private String f2286k = null;
    private C4413h bXz = null;
    private C4410e bXA = null;
    private C4408c bXB = null;
    private C4412g bXC = null;

    public cdj(Context context, String str, String str2, int i, int i2, String str3, int i3, String str4, String str5, boolean z) {
        this.f2276a = null;
        this.f2277b = false;
        this.f2278c = null;
        this.f2279d = -1;
        this.f2280e = -1;
        this.f2281f = null;
        this.f2282g = null;
        this.f2283h = null;
        this.f2284i = null;
        this.f2285j = null;
        this.f2287l = -1;
        this.f2276a = context;
        this.f2281f = str2;
        this.f2280e = i;
        this.f2287l = i2;
        this.f2278c = str3;
        this.f2279d = i3;
        this.f2282g = str4;
        this.f2283h = str5;
        this.f2277b = z;
        f2275m = cde.m4857i(this.f2276a, "4010" + this.f2279d, null);
        this.f2284i = cdp.m4814al(cdm.m4825a(this.f2276a));
        this.f2285j = cdp.m4814al(cdm.m4821c(this.f2276a));
    }

    private int afr() {
        if (f2275m == null || f2275m.equals("") || m4835n()) {
            int m4836m = m4836m();
            if (m4836m != 0) {
                return m4836m;
            }
            cde.m4856j(this.f2276a, "2001", this.f2284i);
            cde.m4856j(this.f2276a, "2002", this.f2285j);
            cde.m4856j(this.f2276a, "4010" + this.f2279d, f2275m);
        }
        return 0;
    }

    /* renamed from: e */
    private String m4844e() {
        if (TextUtils.isEmpty(this.f2286k)) {
            this.f2286k = cdp.m4814al(cdm.m4823b(this.f2276a));
        }
        return this.f2286k;
    }

    /* renamed from: f */
    private int m4843f() {
        return 0;
    }

    /* renamed from: g */
    private int m4842g() {
        return this.f2280e;
    }

    /* renamed from: h */
    private int m4841h() {
        return this.f2279d;
    }

    /* renamed from: i */
    private String m4840i() {
        return this.f2281f;
    }

    /* renamed from: j */
    private String m4839j() {
        return this.f2283h;
    }

    /* renamed from: k */
    private String m4838k() {
        return this.f2282g;
    }

    /* renamed from: l */
    private int m4837l() {
        return this.f2287l;
    }

    /* renamed from: m */
    private int m4836m() {
        C4409d c4409d;
        C4408c akO = akO();
        AtomicReference<C4409d> atomicReference = new AtomicReference<>();
        int m4845a = m4845a(akO, atomicReference);
        if (m4845a == 0 && (c4409d = atomicReference.get()) != null) {
            f2275m = c4409d.f5438a;
            if (f2275m == null || f2275m.equals("")) {
                return -2001;
            }
        }
        return m4845a;
    }

    /* renamed from: n */
    private boolean m4835n() {
        String m4814al = cdp.m4814al(cdm.m4825a(this.f2276a));
        String m4814al2 = cdp.m4814al(cdm.m4821c(this.f2276a));
        this.f2284i = cde.m4857i(this.f2276a, "2001", m4814al);
        this.f2285j = cde.m4857i(this.f2276a, "2002", m4814al2);
        if (m4814al.equals(this.f2284i) && m4814al2.equals(this.f2285j)) {
            return false;
        }
        this.f2284i = m4814al;
        this.f2285j = m4814al2;
        return true;
    }

    /* renamed from: a */
    public int m4849a() {
        return C4414j.m19cq(this.f2276a) == C4414j.EnumC4415a.CONN_WIFI ? 2 : 1;
    }

    /* renamed from: a */
    public int m4848a(cdi cdiVar, cdv cdvVar, cdv cdvVar2) {
        cdvVar.m4803a(cdiVar.f2272a);
        cdvVar.m4798b(cdiVar.f2273b);
        cdvVar.m4796c(cdiVar.f2274c);
        cdvVar.mo4802a("UTF-8");
        cdvVar2.mo4802a("UTF-8");
        return afr();
    }

    /* renamed from: a */
    public int m4847a(cdv cdvVar, cdv cdvVar2) {
        return m4846a(cdvVar, cdvVar2, false);
    }

    /* renamed from: a */
    public int m4846a(cdv cdvVar, cdv cdvVar2, boolean z) {
        boolean z2;
        byte[] m4833b;
        try {
            byte[] mo4804a = cdvVar.mo4804a();
            if (z) {
                byte[] m4834a = cdk.m4834a(mo4804a);
                if (m4834a == null) {
                    z2 = false;
                } else {
                    mo4804a = m4834a;
                    z2 = true;
                }
            } else {
                z2 = false;
            }
            byte[] m4830a = cdl.m4830a(mo4804a, cdl.m4832a());
            int length = m4830a.length;
            String str = this.f2277b ? "http://wuptest.cs0309.3g.qq.com" : "http://pmir.3g.qq.com";
            if (z2) {
                str = String.format("%s?mc=2", str);
            }
            C4414j c4414j = new C4414j(this.f2276a);
            int m17d = c4414j.m17d(str, m4830a);
            if (m17d != 0) {
                return m17d;
            }
            AtomicReference<byte[]> atomicReference = new AtomicReference<>();
            int m20a = c4414j.m20a(false, atomicReference);
            if (m20a == 0) {
                byte[] bArr = atomicReference.get();
                if (bArr != null && bArr.length > 0) {
                    int length2 = bArr.length + length;
                    byte[] m4829b = cdl.m4829b(bArr, cdl.m4832a());
                    if (z2 && (m4833b = cdk.m4833b(m4829b)) != null) {
                        m4829b = m4833b;
                    }
                    cdvVar2.mo4800a(m4829b);
                }
                return 0;
            }
            return m20a;
        } catch (IllegalArgumentException e) {
            return -6057;
        } catch (Exception e2) {
            return -6000;
        }
    }

    /* renamed from: a */
    public int m4845a(C4408c c4408c, AtomicReference<C4409d> atomicReference) {
        cdv cdvVar = new cdv(true);
        cdv cdvVar2 = new cdv(true);
        cdi m4850kW = cdh.m4850kW(0);
        cdvVar.m4803a(m4850kW.f2272a);
        cdvVar.m4798b(m4850kW.f2273b);
        cdvVar.m4796c(m4850kW.f2274c);
        cdvVar.mo4802a("UTF-8");
        cdvVar2.mo4802a("UTF-8");
        cdvVar.mo4801a("phonetype", (String) akM());
        cdvVar.mo4801a("userinfo", (String) akN());
        cdvVar.mo4801a("deviceinfo", (String) c4408c);
        int m4847a = m4847a(cdvVar, cdvVar2);
        if (m4847a != 0) {
            return m4847a;
        }
        C4409d c4409d = (C4409d) cdvVar2.m4806b("guidinfo", new C4409d());
        if (c4409d != null) {
            atomicReference.set(c4409d);
        }
        return 0;
    }

    public C4410e akM() {
        if (this.bXA == null) {
            this.bXA = new C4410e();
            this.bXA.f5439a = 2;
            this.bXA.f5440b = m4837l();
        }
        return this.bXA;
    }

    public C4413h akN() {
        int i;
        int i2;
        int i3;
        if (this.bXz == null) {
            this.bXz = new C4413h();
            this.bXz.f5473i = m4841h();
            this.bXz.f5480p = m4842g();
            this.bXz.f5470f = m4838k();
            this.bXz.f5469e = m4839j();
            String[] split = m4840i().trim().split("[\\.]");
            if (split == null || split.length < 3) {
                i = 0;
                i2 = 0;
                i3 = 0;
            } else {
                i3 = Integer.parseInt(split[0]);
                i2 = Integer.parseInt(split[1]);
                i = Integer.parseInt(split[2]);
            }
            this.bXz.f5474j = new C4411f();
            this.bXz.f5474j.f5441a = i3;
            this.bXz.f5474j.f5442b = i2;
            this.bXz.f5474j.f5443c = i;
            this.bXz.f5476l = m4844e();
            this.bXz.f5477m = m4843f();
            this.bXz.f5471g = cdp.m4814al(cdm.m4826a());
            this.bXz.f5479o = cdm.m4822c();
        }
        this.bXz.f5465a = this.f2284i;
        this.bXz.f5475k = f2275m;
        this.bXz.f5478n = 0;
        this.bXz.f5472h = m4849a();
        return this.bXz;
    }

    public C4408c akO() {
        if (this.bXB == null) {
            this.bXB = new C4408c();
            this.bXB.f5429b = m4844e();
            this.bXB.f5431d = cdp.m4814al(cdm.m4820d(this.f2276a));
            this.bXB.f5432e = cdp.m4814al(cdm.m4819e(this.f2276a));
            this.bXB.f5433f = cdm.m4822c();
            this.bXB.f5434g = cdp.m4814al(cdm.m4826a());
            this.bXB.f5435h = cdp.m4814al(cdm.m4824b());
            this.bXB.f5436i = "";
        }
        this.bXB.f5428a = this.f2284i;
        this.bXB.f5430c = this.f2285j;
        this.bXB.f5437j = f2275m;
        return this.bXB;
    }
}
