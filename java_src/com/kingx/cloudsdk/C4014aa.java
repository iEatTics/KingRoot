package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnb;
import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.aa */
/* loaded from: classes.dex */
public final class C4014aa extends AbstractC4027cb implements Cloneable {

    /* renamed from: dK */
    public int f4132dK = 2;

    /* renamed from: dL */
    public int f4133dL = 0;

    /* renamed from: dH */
    public String f4131dH = "";

    /* renamed from: dM */
    private String f4134dM = "";

    /* renamed from: dN */
    public String f4135dN = "";

    /* renamed from: cv */
    public int f4130cv = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1165a(StringBuilder sb, int i) {
        bnb bnbVar = new bnb(sb, 0);
        bnbVar.m6288S(this.f4132dK, "phonetype");
        bnbVar.m6288S(this.f4133dL, "authType");
        bnbVar.m6287aR(this.f4131dH, "guid");
        bnbVar.m6287aR(this.f4134dM, "ext1");
        bnbVar.m6287aR(this.f4135dN, "sessionId");
        bnbVar.m6288S(this.f4130cv, "buildno");
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4132dK, 0);
        bndVar.m6246am(this.f4133dL, 1);
        if (this.f4131dH != null) {
            bndVar.m6258T(this.f4131dH, 2);
        }
        if (this.f4134dM != null) {
            bndVar.m6258T(this.f4134dM, 3);
        }
        if (this.f4135dN != null) {
            bndVar.m6258T(this.f4135dN, 4);
        }
        if (this.f4130cv != 0) {
            bndVar.m6246am(this.f4130cv, 5);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4132dK = bncVar.m6274a(this.f4132dK, 0, true);
        this.f4133dL = bncVar.m6274a(this.f4133dL, 1, true);
        this.f4131dH = bncVar.m6259z(2, false);
        this.f4134dM = bncVar.m6259z(3, false);
        this.f4135dN = bncVar.m6259z(4, false);
        this.f4130cv = bncVar.m6274a(this.f4130cv, 5, false);
    }
}
