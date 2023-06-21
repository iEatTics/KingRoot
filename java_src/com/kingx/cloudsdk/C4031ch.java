package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.ch */
/* loaded from: classes.dex */
public final class C4031ch extends AbstractC4027cb {
    private static C4030cg bCU;

    /* renamed from: co */
    private String f4205co = "";

    /* renamed from: cr */
    private String f4207cr = "";

    /* renamed from: cs */
    private String f4208cs = "";

    /* renamed from: hJ */
    private String f4214hJ = "";

    /* renamed from: cu */
    public String f4210cu = "";

    /* renamed from: cw */
    public String f4212cw = "";

    /* renamed from: cB */
    public String f4203cB = "";

    /* renamed from: hK */
    private int f4215hK = 0;

    /* renamed from: ct */
    public int f4209ct = 0;

    /* renamed from: hL */
    public C4030cg f4216hL = null;

    /* renamed from: dH */
    private String f4213dH = "";

    /* renamed from: cp */
    private String f4206cp = "";

    /* renamed from: hM */
    private int f4217hM = 0;

    /* renamed from: hN */
    public int f4218hN = 0;

    /* renamed from: hx */
    public int f4223hx = 0;

    /* renamed from: cv */
    public int f4211cv = 0;

    /* renamed from: hO */
    private String f4219hO = "";

    /* renamed from: cE */
    private short f4204cE = 0;

    /* renamed from: hP */
    private double f4220hP = 0.0d;

    /* renamed from: hQ */
    private double f4221hQ = 0.0d;

    /* renamed from: hR */
    private String f4222hR = "";

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6258T(this.f4205co, 0);
        if (this.f4207cr != null) {
            bndVar.m6258T(this.f4207cr, 1);
        }
        if (this.f4208cs != null) {
            bndVar.m6258T(this.f4208cs, 2);
        }
        if (this.f4214hJ != null) {
            bndVar.m6258T(this.f4214hJ, 3);
        }
        if (this.f4210cu != null) {
            bndVar.m6258T(this.f4210cu, 4);
        }
        if (this.f4212cw != null) {
            bndVar.m6258T(this.f4212cw, 5);
        }
        if (this.f4203cB != null) {
            bndVar.m6258T(this.f4203cB, 6);
        }
        if (this.f4215hK != 0) {
            bndVar.m6246am(this.f4215hK, 7);
        }
        if (this.f4209ct != 0) {
            bndVar.m6246am(this.f4209ct, 8);
        }
        if (this.f4216hL != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4216hL, 9);
        }
        if (this.f4213dH != null) {
            bndVar.m6258T(this.f4213dH, 10);
        }
        if (this.f4206cp != null) {
            bndVar.m6258T(this.f4206cp, 11);
        }
        if (this.f4217hM != 0) {
            bndVar.m6246am(this.f4217hM, 12);
        }
        if (this.f4218hN != 0) {
            bndVar.m6246am(this.f4218hN, 13);
        }
        if (this.f4223hx != 0) {
            bndVar.m6246am(this.f4223hx, 14);
        }
        if (this.f4211cv != 0) {
            bndVar.m6246am(this.f4211cv, 15);
        }
        if (this.f4219hO != null) {
            bndVar.m6258T(this.f4219hO, 16);
        }
        if (this.f4204cE != 0) {
            bndVar.m6249a(this.f4204cE, 17);
        }
        if (this.f4220hP != 0.0d) {
            bndVar.m6256a(this.f4220hP, 18);
        }
        if (this.f4221hQ != 0.0d) {
            bndVar.m6256a(this.f4221hQ, 19);
        }
        if (this.f4222hR != null) {
            bndVar.m6258T(this.f4222hR, 20);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4205co = bncVar.m6259z(0, true);
        this.f4207cr = bncVar.m6259z(1, false);
        this.f4208cs = bncVar.m6259z(2, false);
        this.f4214hJ = bncVar.m6259z(3, false);
        this.f4210cu = bncVar.m6259z(4, false);
        this.f4212cw = bncVar.m6259z(5, false);
        this.f4203cB = bncVar.m6259z(6, false);
        this.f4215hK = bncVar.m6274a(this.f4215hK, 7, false);
        this.f4209ct = bncVar.m6274a(this.f4209ct, 8, false);
        if (bCU == null) {
            bCU = new C4030cg();
        }
        this.f4216hL = (C4030cg) bncVar.m6270a((AbstractC4027cb) bCU, 9, false);
        this.f4213dH = bncVar.m6259z(10, false);
        this.f4206cp = bncVar.m6259z(11, false);
        this.f4217hM = bncVar.m6274a(this.f4217hM, 12, false);
        this.f4218hN = bncVar.m6274a(this.f4218hN, 13, false);
        this.f4223hx = bncVar.m6274a(this.f4223hx, 14, false);
        this.f4211cv = bncVar.m6274a(this.f4211cv, 15, false);
        this.f4219hO = bncVar.m6259z(16, false);
        this.f4204cE = bncVar.m6267a(this.f4204cE, 17, false);
        this.f4220hP = bncVar.m6276a(this.f4220hP, 18, false);
        this.f4221hQ = bncVar.m6276a(this.f4221hQ, 19, false);
        this.f4222hR = bncVar.m6259z(20, false);
    }

    /* renamed from: mv */
    public final void m1182mv(String str) {
        this.f4205co = str;
    }

    /* renamed from: mw */
    public final void m1181mw(String str) {
        this.f4206cp = str;
    }

    /* renamed from: jT */
    public final void m1187jT(int i) {
        this.f4215hK = i;
    }

    /* renamed from: mD */
    public final void m1184mD(String str) {
        this.f4210cu = str;
    }

    /* renamed from: bi */
    public final void m1191bi(String str) {
        this.f4212cw = str;
    }

    /* renamed from: jU */
    public final void m1186jU(int i) {
        this.f4211cv = 801;
    }

    /* renamed from: bj */
    public final void m1190bj(String str) {
        this.f4203cB = str;
    }

    /* renamed from: jV */
    public final void m1185jV(int i) {
        this.f4209ct = 39;
    }

    /* renamed from: jS */
    public final void m1188jS(int i) {
        this.f4223hx = i;
    }

    /* renamed from: b */
    public final void m1192b(String str) {
        this.f4213dH = str;
    }

    /* renamed from: bk */
    public final void m1189bk(String str) {
        this.f4222hR = str;
    }

    /* renamed from: an */
    public final void m1194an(int i) {
        this.f4217hM = i;
    }

    /* renamed from: ao */
    public final void m1193ao(int i) {
        this.f4218hN = i;
    }

    /* renamed from: mE */
    public final void m1183mE(String str) {
    }
}
