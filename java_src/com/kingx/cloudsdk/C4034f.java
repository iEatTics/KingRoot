package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.f */
/* loaded from: classes.dex */
public final class C4034f extends AbstractC4027cb {

    /* renamed from: id */
    private int f4234id = 0;

    /* renamed from: aK */
    private int f4232aK = 0;

    /* renamed from: aL */
    private int f4233aL = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4234id, 0);
        bndVar.m6246am(this.f4232aK, 1);
        bndVar.m6246am(this.f4233aL, 2);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4234id = bncVar.m6274a(this.f4234id, 0, true);
        this.f4232aK = bncVar.m6274a(this.f4232aK, 1, true);
        this.f4233aL = bncVar.m6274a(this.f4233aL, 2, true);
    }
}
