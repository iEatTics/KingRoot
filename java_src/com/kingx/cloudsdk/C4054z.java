package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.z */
/* loaded from: classes.dex */
public final class C4054z extends AbstractC4027cb implements Cloneable {

    /* renamed from: dI */
    private String f4378dI = "";

    /* renamed from: dJ */
    public int f4379dJ = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        if (this.f4378dI != null) {
            bndVar.m6258T(this.f4378dI, 0);
        }
        if (this.f4379dJ != 0) {
            bndVar.m6246am(this.f4379dJ, 1);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4378dI = bncVar.m6259z(0, false);
        this.f4379dJ = bncVar.m6274a(this.f4379dJ, 1, false);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1165a(StringBuilder sb, int i) {
    }
}
