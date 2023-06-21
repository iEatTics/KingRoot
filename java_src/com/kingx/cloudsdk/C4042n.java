package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.n */
/* loaded from: classes.dex */
public final class C4042n extends AbstractC4027cb {
    private static ArrayList<C4040l> bDc;
    private static ArrayList<C4040l> bDd;
    private static ArrayList<C4039k> bDe;
    private static ArrayList<C4040l> bDf;
    private static ArrayList<C4040l> bDg;
    private static ArrayList<C4040l> bDh;
    private static ArrayList<C4041m> bDi;
    private static ArrayList<C4033e> bDj;
    private static C4036h bDk;
    private static C4044p bDl;

    /* renamed from: aC */
    private int f4277aC = 0;

    /* renamed from: aD */
    private int f4278aD = 0;

    /* renamed from: bC */
    private int f4279bC = 0;

    /* renamed from: bD */
    public ArrayList<C4040l> f4280bD = null;

    /* renamed from: bE */
    private ArrayList<C4040l> f4281bE = null;

    /* renamed from: bF */
    private ArrayList<C4039k> f4282bF = null;

    /* renamed from: bG */
    public int f4283bG = 0;

    /* renamed from: bH */
    private ArrayList<C4040l> f4284bH = null;

    /* renamed from: bI */
    private ArrayList<C4040l> f4285bI = null;

    /* renamed from: bJ */
    private ArrayList<C4040l> f4286bJ = null;

    /* renamed from: bK */
    private ArrayList<C4041m> f4287bK = null;

    /* renamed from: bL */
    private ArrayList<C4033e> f4288bL = null;

    /* renamed from: bM */
    private C4036h f4289bM = null;

    /* renamed from: bN */
    private C4044p f4290bN = null;

    /* renamed from: bO */
    public long f4291bO = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4277aC, 0);
        bndVar.m6246am(this.f4278aD, 1);
        bndVar.m6246am(this.f4279bC, 2);
        bndVar.m6251a((Collection) this.f4280bD, 3);
        bndVar.m6251a((Collection) this.f4281bE, 4);
        bndVar.m6251a((Collection) this.f4282bF, 5);
        if (this.f4283bG != 0) {
            bndVar.m6246am(this.f4283bG, 6);
        }
        if (this.f4284bH != null) {
            bndVar.m6251a((Collection) this.f4284bH, 7);
        }
        if (this.f4285bI != null) {
            bndVar.m6251a((Collection) this.f4285bI, 8);
        }
        if (this.f4286bJ != null) {
            bndVar.m6251a((Collection) this.f4286bJ, 9);
        }
        if (this.f4287bK != null) {
            bndVar.m6251a((Collection) this.f4287bK, 10);
        }
        if (this.f4288bL != null) {
            bndVar.m6251a((Collection) this.f4288bL, 11);
        }
        if (this.f4289bM != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4289bM, 12);
        }
        if (this.f4290bN != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4290bN, 13);
        }
        if (this.f4291bO != 0) {
            bndVar.m6254a(this.f4291bO, 14);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4277aC = bncVar.m6274a(this.f4277aC, 0, true);
        this.f4278aD = bncVar.m6274a(this.f4278aD, 1, true);
        this.f4279bC = bncVar.m6274a(this.f4279bC, 2, true);
        if (bDc == null) {
            bDc = new ArrayList<>();
            bDc.add(new C4040l());
        }
        this.f4280bD = (ArrayList) bncVar.m6264d(bDc, 3, true);
        if (bDd == null) {
            bDd = new ArrayList<>();
            bDd.add(new C4040l());
        }
        this.f4281bE = (ArrayList) bncVar.m6264d(bDd, 4, true);
        if (bDe == null) {
            bDe = new ArrayList<>();
            bDe.add(new C4039k());
        }
        this.f4282bF = (ArrayList) bncVar.m6264d(bDe, 5, true);
        this.f4283bG = bncVar.m6274a(this.f4283bG, 6, false);
        if (bDf == null) {
            bDf = new ArrayList<>();
            bDf.add(new C4040l());
        }
        this.f4284bH = (ArrayList) bncVar.m6264d(bDf, 7, false);
        if (bDg == null) {
            bDg = new ArrayList<>();
            bDg.add(new C4040l());
        }
        this.f4285bI = (ArrayList) bncVar.m6264d(bDg, 8, false);
        if (bDh == null) {
            bDh = new ArrayList<>();
            bDh.add(new C4040l());
        }
        this.f4286bJ = (ArrayList) bncVar.m6264d(bDh, 9, false);
        if (bDi == null) {
            bDi = new ArrayList<>();
            bDi.add(new C4041m());
        }
        this.f4287bK = (ArrayList) bncVar.m6264d(bDi, 10, false);
        if (bDj == null) {
            bDj = new ArrayList<>();
            bDj.add(new C4033e());
        }
        this.f4288bL = (ArrayList) bncVar.m6264d(bDj, 11, false);
        if (bDk == null) {
            bDk = new C4036h();
        }
        this.f4289bM = (C4036h) bncVar.m6270a((AbstractC4027cb) bDk, 12, false);
        if (bDl == null) {
            bDl = new C4044p();
        }
        this.f4290bN = (C4044p) bncVar.m6270a((AbstractC4027cb) bDl, 13, false);
        this.f4291bO = bncVar.m6273a(this.f4291bO, 14, false);
    }
}
