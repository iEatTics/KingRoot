package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.dn */
/* loaded from: classes.dex */
public final class C2999dn extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2467lo;

    /* renamed from: nx */
    static C2848cv f2468nx;

    /* renamed from: iE */
    public String f2472iE = "";

    /* renamed from: qq */
    public String f2488qq = "";

    /* renamed from: iH */
    public String f2474iH = "";

    /* renamed from: np */
    public String f2480np = "";

    /* renamed from: lc */
    public String f2478lc = "";

    /* renamed from: dT */
    public String f2471dT = "";

    /* renamed from: iM */
    public String f2475iM = "";

    /* renamed from: ct */
    public int f2469ct = 0;
    public int product = 0;

    /* renamed from: nq */
    public C2848cv f2481nq = null;

    /* renamed from: it */
    public String f2477it = "";

    /* renamed from: iF */
    public String f2473iF = "";
    public int isbuildin = 0;

    /* renamed from: nr */
    public int f2482nr = 0;

    /* renamed from: ls */
    public int f2479ls = 0;

    /* renamed from: dS */
    public int f2470dS = 0;

    /* renamed from: ns */
    public String f2483ns = "";

    /* renamed from: iP */
    public short f2476iP = 0;

    /* renamed from: nt */
    public double f2484nt = 0.0d;

    /* renamed from: nu */
    public double f2485nu = 0.0d;

    /* renamed from: nv */
    public String f2486nv = "";
    public int language = 0;

    /* renamed from: nw */
    public String f2487nw = "";

    static {
        f2467lo = !C2999dn.class.desiredAssertionStatus();
    }

    /* renamed from: v */
    public void m3903v(String str) {
        this.f2472iE = str;
    }

    /* renamed from: P */
    public void m3915P(String str) {
        this.f2488qq = str;
    }

    public void setPhone(String str) {
        this.f2474iH = str;
    }

    /* renamed from: Q */
    public void m3914Q(String str) {
        this.f2480np = str;
    }

    /* renamed from: R */
    public void m3913R(String str) {
        this.f2478lc = str;
    }

    /* renamed from: S */
    public void m3912S(String str) {
        this.f2471dT = str;
    }

    /* renamed from: T */
    public void m3911T(String str) {
        this.f2475iM = str;
    }

    /* renamed from: y */
    public void m3901y(int i) {
        this.f2469ct = i;
    }

    /* renamed from: z */
    public void m3900z(int i) {
        this.product = i;
    }

    /* renamed from: a */
    public void m3907a(C2848cv c2848cv) {
        this.f2481nq = c2848cv;
    }

    /* renamed from: E */
    public void m3916E(String str) {
        this.f2477it = str;
    }

    /* renamed from: w */
    public void m3902w(String str) {
        this.f2473iF = str;
    }

    /* renamed from: p */
    public void m3904p(int i) {
        this.isbuildin = i;
    }

    /* renamed from: A */
    public void m3919A(int i) {
        this.f2482nr = i;
    }

    /* renamed from: g */
    public void m3905g(int i) {
        this.f2479ls = i;
    }

    /* renamed from: B */
    public void m3918B(int i) {
        this.f2470dS = i;
    }

    /* renamed from: U */
    public void m3910U(String str) {
        this.f2483ns = str;
    }

    /* renamed from: b */
    public void m3906b(short s) {
        this.f2476iP = s;
    }

    public void setLongitude(double d) {
        this.f2484nt = d;
    }

    public void setLatitude(double d) {
        this.f2485nu = d;
    }

    /* renamed from: V */
    public void m3909V(String str) {
        this.f2486nv = str;
    }

    /* renamed from: C */
    public void m3917C(int i) {
        this.language = i;
    }

    /* renamed from: W */
    public void m3908W(String str) {
        this.f2487nw = str;
    }

    public C2999dn() {
        m3903v(this.f2472iE);
        m3915P(this.f2488qq);
        setPhone(this.f2474iH);
        m3914Q(this.f2480np);
        m3913R(this.f2478lc);
        m3912S(this.f2471dT);
        m3911T(this.f2475iM);
        m3901y(this.f2469ct);
        m3900z(this.product);
        m3907a(this.f2481nq);
        m3916E(this.f2477it);
        m3902w(this.f2473iF);
        m3904p(this.isbuildin);
        m3919A(this.f2482nr);
        m3905g(this.f2479ls);
        m3918B(this.f2470dS);
        m3910U(this.f2483ns);
        m3906b(this.f2476iP);
        setLongitude(this.f2484nt);
        setLatitude(this.f2485nu);
        m3909V(this.f2486nv);
        m3917C(this.language);
        m3908W(this.f2487nw);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2999dn c2999dn = (C2999dn) obj;
        return JceUtil.equals(this.f2472iE, c2999dn.f2472iE) && JceUtil.equals(this.f2488qq, c2999dn.f2488qq) && JceUtil.equals(this.f2474iH, c2999dn.f2474iH) && JceUtil.equals(this.f2480np, c2999dn.f2480np) && JceUtil.equals(this.f2478lc, c2999dn.f2478lc) && JceUtil.equals(this.f2471dT, c2999dn.f2471dT) && JceUtil.equals(this.f2475iM, c2999dn.f2475iM) && JceUtil.equals(this.f2469ct, c2999dn.f2469ct) && JceUtil.equals(this.product, c2999dn.product) && JceUtil.equals(this.f2481nq, c2999dn.f2481nq) && JceUtil.equals(this.f2477it, c2999dn.f2477it) && JceUtil.equals(this.f2473iF, c2999dn.f2473iF) && JceUtil.equals(this.isbuildin, c2999dn.isbuildin) && JceUtil.equals(this.f2482nr, c2999dn.f2482nr) && JceUtil.equals(this.f2479ls, c2999dn.f2479ls) && JceUtil.equals(this.f2470dS, c2999dn.f2470dS) && JceUtil.equals(this.f2483ns, c2999dn.f2483ns) && JceUtil.equals(this.f2476iP, c2999dn.f2476iP) && JceUtil.equals(this.f2484nt, c2999dn.f2484nt) && JceUtil.equals(this.f2485nu, c2999dn.f2485nu) && JceUtil.equals(this.f2486nv, c2999dn.f2486nv) && JceUtil.equals(this.language, c2999dn.language) && JceUtil.equals(this.f2487nw, c2999dn.f2487nw);
    }

    public int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f2467lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2472iE, 0);
        if (this.f2488qq != null) {
            jceOutputStream.write(this.f2488qq, 1);
        }
        if (this.f2474iH != null) {
            jceOutputStream.write(this.f2474iH, 2);
        }
        if (this.f2480np != null) {
            jceOutputStream.write(this.f2480np, 3);
        }
        if (this.f2478lc != null) {
            jceOutputStream.write(this.f2478lc, 4);
        }
        if (this.f2471dT != null) {
            jceOutputStream.write(this.f2471dT, 5);
        }
        if (this.f2475iM != null) {
            jceOutputStream.write(this.f2475iM, 6);
        }
        jceOutputStream.write(this.f2469ct, 7);
        jceOutputStream.write(this.product, 8);
        if (this.f2481nq != null) {
            jceOutputStream.write((JceStruct) this.f2481nq, 9);
        }
        if (this.f2477it != null) {
            jceOutputStream.write(this.f2477it, 10);
        }
        if (this.f2473iF != null) {
            jceOutputStream.write(this.f2473iF, 11);
        }
        jceOutputStream.write(this.isbuildin, 12);
        jceOutputStream.write(this.f2482nr, 13);
        jceOutputStream.write(this.f2479ls, 14);
        jceOutputStream.write(this.f2470dS, 15);
        if (this.f2483ns != null) {
            jceOutputStream.write(this.f2483ns, 16);
        }
        jceOutputStream.write(this.f2476iP, 17);
        jceOutputStream.write(this.f2484nt, 18);
        jceOutputStream.write(this.f2485nu, 19);
        if (this.f2486nv != null) {
            jceOutputStream.write(this.f2486nv, 20);
        }
        if (this.language != 0) {
            jceOutputStream.write(this.language, 21);
        }
        if (this.f2487nw != null) {
            jceOutputStream.write(this.f2487nw, 22);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m3903v(jceInputStream.readString(0, true));
        m3915P(jceInputStream.readString(1, false));
        setPhone(jceInputStream.readString(2, false));
        m3914Q(jceInputStream.readString(3, false));
        m3913R(jceInputStream.readString(4, false));
        m3912S(jceInputStream.readString(5, false));
        m3911T(jceInputStream.readString(6, false));
        m3901y(jceInputStream.read(this.f2469ct, 7, false));
        m3900z(jceInputStream.read(this.product, 8, false));
        if (f2468nx == null) {
            f2468nx = new C2848cv();
        }
        m3907a((C2848cv) jceInputStream.read((JceStruct) f2468nx, 9, false));
        m3916E(jceInputStream.readString(10, false));
        m3902w(jceInputStream.readString(11, false));
        m3904p(jceInputStream.read(this.isbuildin, 12, false));
        m3919A(jceInputStream.read(this.f2482nr, 13, false));
        m3905g(jceInputStream.read(this.f2479ls, 14, false));
        m3918B(jceInputStream.read(this.f2470dS, 15, false));
        m3910U(jceInputStream.readString(16, false));
        m3906b(jceInputStream.read(this.f2476iP, 17, false));
        setLongitude(jceInputStream.read(this.f2484nt, 18, false));
        setLatitude(jceInputStream.read(this.f2485nu, 19, false));
        m3909V(jceInputStream.readString(20, false));
        m3917C(jceInputStream.read(this.language, 21, false));
        m3908W(jceInputStream.readString(22, false));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.f2472iE, "imei");
        jceDisplayer.display(this.f2488qq, "qq");
        jceDisplayer.display(this.f2474iH, "phone");
        jceDisplayer.display(this.f2480np, "ip");
        jceDisplayer.display(this.f2478lc, "lc");
        jceDisplayer.display(this.f2471dT, "channelid");
        jceDisplayer.display(this.f2475iM, "ua");
        jceDisplayer.display(this.f2469ct, "ct");
        jceDisplayer.display(this.product, "product");
        jceDisplayer.display((JceStruct) this.f2481nq, "version");
        jceDisplayer.display(this.f2477it, "guid");
        jceDisplayer.display(this.f2473iF, "imsi");
        jceDisplayer.display(this.isbuildin, "isbuildin");
        jceDisplayer.display(this.f2482nr, "isroot");
        jceDisplayer.display(this.f2479ls, "sdkversion");
        jceDisplayer.display(this.f2470dS, "buildno");
        jceDisplayer.display(this.f2483ns, "uuid");
        jceDisplayer.display(this.f2476iP, "lang");
        jceDisplayer.display(this.f2484nt, "longitude");
        jceDisplayer.display(this.f2485nu, "latitude");
        jceDisplayer.display(this.f2486nv, "newguid");
        jceDisplayer.display(this.language, "language");
        jceDisplayer.display(this.f2487nw, "langName");
    }
}
