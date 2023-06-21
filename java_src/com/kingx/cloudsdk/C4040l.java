package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.l */
/* loaded from: classes.dex */
public final class C4040l extends AbstractC4027cb {
    private static ArrayList<C4034f> bCX;
    private static C4037i bCY;
    private static C4038j bCZ;
    private static C4026c bDa;
    private static C4043o bDb;

    /* renamed from: id */
    public int f4271id = 0;

    /* renamed from: aM */
    public String f4246aM = "";
    public int version = 0;
    private String versionName = "";
    private String name = "";

    /* renamed from: aW */
    private String f4248aW = "";

    /* renamed from: aX */
    private int f4249aX = 0;

    /* renamed from: aY */
    private ArrayList<C4034f> f4250aY = null;
    private int level = 0;

    /* renamed from: aZ */
    private String f4251aZ = "";

    /* renamed from: ba */
    public String f4252ba = "";

    /* renamed from: bb */
    public int f4253bb = 0;

    /* renamed from: bc */
    public String f4254bc = "";

    /* renamed from: bd */
    private long f4255bd = 0;

    /* renamed from: be */
    public boolean f4256be = true;

    /* renamed from: bf */
    public int f4257bf = 0;

    /* renamed from: bg */
    private int f4258bg = 0;

    /* renamed from: bh */
    private C4037i f4259bh = null;

    /* renamed from: bi */
    public C4038j f4260bi = null;

    /* renamed from: bj */
    public boolean f4261bj = true;

    /* renamed from: bk */
    private int f4262bk = 0;

    /* renamed from: bl */
    private boolean f4263bl = true;

    /* renamed from: bm */
    private int f4264bm = 0;

    /* renamed from: bn */
    private boolean f4265bn = true;
    private int initOrder = 0;

    /* renamed from: bo */
    private C4026c f4266bo = null;

    /* renamed from: bp */
    public C4043o f4267bp = null;

    /* renamed from: aN */
    public int f4247aN = 0;

    /* renamed from: bq */
    public long f4268bq = 0;

    /* renamed from: br */
    private int f4269br = 0;

    /* renamed from: bs */
    private String f4270bs = "";

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4271id, 0);
        bndVar.m6258T(this.f4246aM, 1);
        bndVar.m6246am(this.version, 2);
        bndVar.m6258T(this.versionName, 3);
        bndVar.m6258T(this.name, 4);
        bndVar.m6258T(this.f4248aW, 5);
        bndVar.m6246am(this.f4249aX, 6);
        bndVar.m6251a((Collection) this.f4250aY, 7);
        bndVar.m6246am(this.level, 8);
        bndVar.m6258T(this.f4251aZ, 9);
        bndVar.m6258T(this.f4252ba, 10);
        bndVar.m6246am(this.f4253bb, 11);
        bndVar.m6258T(this.f4254bc, 12);
        bndVar.m6254a(this.f4255bd, 13);
        bndVar.m6248a(this.f4256be, 14);
        bndVar.m6246am(this.f4257bf, 15);
        bndVar.m6246am(this.f4258bg, 16);
        if (this.f4259bh != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4259bh, 17);
        }
        if (this.f4260bi != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4260bi, 18);
        }
        if (!this.f4261bj) {
            bndVar.m6248a(this.f4261bj, 19);
        }
        if (this.f4262bk != 0) {
            bndVar.m6246am(this.f4262bk, 20);
        }
        if (!this.f4263bl) {
            bndVar.m6248a(this.f4263bl, 21);
        }
        bndVar.m6246am(this.f4264bm, 22);
        if (!this.f4265bn) {
            bndVar.m6248a(this.f4265bn, 23);
        }
        if (this.initOrder != 0) {
            bndVar.m6246am(this.initOrder, 24);
        }
        if (this.f4266bo != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4266bo, 25);
        }
        if (this.f4267bp != null) {
            bndVar.m6253a((AbstractC4027cb) this.f4267bp, 26);
        }
        bndVar.m6246am(this.f4247aN, 27);
        if (this.f4268bq != 0) {
            bndVar.m6254a(this.f4268bq, 28);
        }
        bndVar.m6246am(this.f4269br, 29);
        if (this.f4270bs != null) {
            bndVar.m6258T(this.f4270bs, 30);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4271id = bncVar.m6274a(this.f4271id, 0, true);
        this.f4246aM = bncVar.m6259z(1, true);
        this.version = bncVar.m6274a(this.version, 2, true);
        this.versionName = bncVar.m6259z(3, true);
        this.name = bncVar.m6259z(4, true);
        this.f4248aW = bncVar.m6259z(5, true);
        this.f4249aX = bncVar.m6274a(this.f4249aX, 6, true);
        if (bCX == null) {
            bCX = new ArrayList<>();
            bCX.add(new C4034f());
        }
        this.f4250aY = (ArrayList) bncVar.m6264d(bCX, 7, true);
        this.level = bncVar.m6274a(this.level, 8, true);
        this.f4251aZ = bncVar.m6259z(9, true);
        this.f4252ba = bncVar.m6259z(10, true);
        this.f4253bb = bncVar.m6274a(this.f4253bb, 11, true);
        this.f4254bc = bncVar.m6259z(12, true);
        this.f4255bd = bncVar.m6273a(this.f4255bd, 13, true);
        boolean z = this.f4256be;
        this.f4256be = bncVar.m6260y(14, true);
        this.f4257bf = bncVar.m6274a(this.f4257bf, 15, false);
        this.f4258bg = bncVar.m6274a(this.f4258bg, 16, false);
        if (bCY == null) {
            bCY = new C4037i();
        }
        this.f4259bh = (C4037i) bncVar.m6270a((AbstractC4027cb) bCY, 17, false);
        if (bCZ == null) {
            bCZ = new C4038j();
        }
        this.f4260bi = (C4038j) bncVar.m6270a((AbstractC4027cb) bCZ, 18, false);
        boolean z2 = this.f4261bj;
        this.f4261bj = bncVar.m6260y(19, false);
        this.f4262bk = bncVar.m6274a(this.f4262bk, 20, false);
        boolean z3 = this.f4263bl;
        this.f4263bl = bncVar.m6260y(21, false);
        this.f4264bm = bncVar.m6274a(this.f4264bm, 22, false);
        boolean z4 = this.f4265bn;
        this.f4265bn = bncVar.m6260y(23, false);
        this.initOrder = bncVar.m6274a(this.initOrder, 24, false);
        if (bDa == null) {
            bDa = new C4026c();
        }
        this.f4266bo = (C4026c) bncVar.m6270a((AbstractC4027cb) bDa, 25, false);
        if (bDb == null) {
            bDb = new C4043o();
        }
        this.f4267bp = (C4043o) bncVar.m6270a((AbstractC4027cb) bDb, 26, false);
        this.f4247aN = bncVar.m6274a(this.f4247aN, 27, false);
        this.f4268bq = bncVar.m6273a(this.f4268bq, 28, false);
        this.f4269br = bncVar.m6274a(this.f4269br, 29, false);
        this.f4270bs = bncVar.m6259z(30, false);
    }
}
