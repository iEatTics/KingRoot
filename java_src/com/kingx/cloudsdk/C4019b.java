package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.b */
/* loaded from: classes.dex */
public final class C4019b extends AbstractC4027cb {
    private static ArrayList<C4013a> bBF = new ArrayList<>();
    private static ArrayList<C4013a> bBG;
    private static ArrayList<C4019b> bBH;

    /* renamed from: id */
    public int f4177id = 0;

    /* renamed from: ac */
    public int f4155ac = 0;

    /* renamed from: ad */
    private ArrayList<C4013a> f4156ad = null;
    private int type = 0;

    /* renamed from: ae */
    private String f4157ae = "";

    /* renamed from: af */
    public String f4158af = "";

    /* renamed from: ag */
    private String f4159ag = "";
    private String name = "";

    /* renamed from: ah */
    private ArrayList<C4013a> f4160ah = null;

    /* renamed from: ai */
    private int f4161ai = 0;

    /* renamed from: aj */
    private int f4162aj = 0;

    /* renamed from: ak */
    private int f4163ak = 0;

    /* renamed from: al */
    private int f4164al = 0;

    /* renamed from: am */
    public String f4165am = "";

    /* renamed from: an */
    public String f4166an = "";

    /* renamed from: ao */
    private int f4167ao = 0;

    /* renamed from: ap */
    private int f4168ap = 0;

    /* renamed from: aq */
    public int f4169aq = 0;

    /* renamed from: ar */
    public int f4170ar = 0;

    /* renamed from: as */
    private int f4171as = 0;

    /* renamed from: at */
    private long f4172at = 0;

    /* renamed from: au */
    private long f4173au = 0;

    /* renamed from: av */
    private int f4174av = 0;

    /* renamed from: aw */
    private ArrayList<C4019b> f4175aw = null;

    /* renamed from: ax */
    private int f4176ax = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4177id, 0);
        bndVar.m6246am(this.f4155ac, 1);
        bndVar.m6251a((Collection) this.f4156ad, 2);
        bndVar.m6246am(this.type, 3);
        if (this.f4157ae != null) {
            bndVar.m6258T(this.f4157ae, 4);
        }
        if (this.f4158af != null) {
            bndVar.m6258T(this.f4158af, 5);
        }
        if (this.f4159ag != null) {
            bndVar.m6258T(this.f4159ag, 6);
        }
        if (this.name != null) {
            bndVar.m6258T(this.name, 7);
        }
        if (this.f4160ah != null) {
            bndVar.m6251a((Collection) this.f4160ah, 8);
        }
        if (this.f4161ai != 0) {
            bndVar.m6246am(this.f4161ai, 9);
        }
        if (this.f4162aj != 0) {
            bndVar.m6246am(this.f4162aj, 10);
        }
        if (this.f4163ak != 0) {
            bndVar.m6246am(this.f4163ak, 11);
        }
        if (this.f4164al != 0) {
            bndVar.m6246am(this.f4164al, 12);
        }
        if (this.f4165am != null) {
            bndVar.m6258T(this.f4165am, 13);
        }
        if (this.f4166an != null) {
            bndVar.m6258T(this.f4166an, 14);
        }
        if (this.f4167ao != 0) {
            bndVar.m6246am(this.f4167ao, 15);
        }
        if (this.f4168ap != 0) {
            bndVar.m6246am(this.f4168ap, 16);
        }
        if (this.f4169aq != 0) {
            bndVar.m6246am(this.f4169aq, 17);
        }
        if (this.f4170ar != 0) {
            bndVar.m6246am(this.f4170ar, 18);
        }
        if (this.f4171as != 0) {
            bndVar.m6246am(this.f4171as, 19);
        }
        if (this.f4172at != 0) {
            bndVar.m6254a(this.f4172at, 20);
        }
        if (this.f4173au != 0) {
            bndVar.m6254a(this.f4173au, 21);
        }
        if (this.f4174av != 0) {
            bndVar.m6246am(this.f4174av, 22);
        }
        if (this.f4175aw != null) {
            bndVar.m6251a((Collection) this.f4175aw, 23);
        }
        if (this.f4176ax != 0) {
            bndVar.m6246am(this.f4176ax, 24);
        }
    }

    static {
        bBF.add(new C4013a());
        bBG = new ArrayList<>();
        bBG.add(new C4013a());
        bBH = new ArrayList<>();
        bBH.add(new C4019b());
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4177id = bncVar.m6274a(this.f4177id, 0, true);
        this.f4155ac = bncVar.m6274a(this.f4155ac, 1, true);
        this.f4156ad = (ArrayList) bncVar.m6264d(bBF, 2, true);
        this.type = bncVar.m6274a(this.type, 3, true);
        this.f4157ae = bncVar.m6259z(4, false);
        this.f4158af = bncVar.m6259z(5, false);
        this.f4159ag = bncVar.m6259z(6, false);
        this.name = bncVar.m6259z(7, false);
        this.f4160ah = (ArrayList) bncVar.m6264d(bBG, 8, false);
        this.f4161ai = bncVar.m6274a(this.f4161ai, 9, false);
        this.f4162aj = bncVar.m6274a(this.f4162aj, 10, false);
        this.f4163ak = bncVar.m6274a(this.f4163ak, 11, false);
        this.f4164al = bncVar.m6274a(this.f4164al, 12, false);
        this.f4165am = bncVar.m6259z(13, false);
        this.f4166an = bncVar.m6259z(14, false);
        this.f4167ao = bncVar.m6274a(this.f4167ao, 15, false);
        this.f4168ap = bncVar.m6274a(this.f4168ap, 16, false);
        this.f4169aq = bncVar.m6274a(this.f4169aq, 17, false);
        this.f4170ar = bncVar.m6274a(this.f4170ar, 18, false);
        this.f4171as = bncVar.m6274a(this.f4171as, 19, false);
        this.f4172at = bncVar.m6273a(this.f4172at, 20, false);
        this.f4173au = bncVar.m6273a(this.f4173au, 21, false);
        this.f4174av = bncVar.m6274a(this.f4174av, 22, false);
        this.f4175aw = (ArrayList) bncVar.m6264d(bBH, 23, false);
        this.f4176ax = bncVar.m6274a(this.f4176ax, 24, false);
    }
}
