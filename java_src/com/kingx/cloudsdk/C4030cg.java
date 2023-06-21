package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.cg */
/* loaded from: classes.dex */
public final class C4030cg extends AbstractC4027cb {

    /* renamed from: hG */
    public int f4200hG = 0;

    /* renamed from: hH */
    public int f4201hH = 0;

    /* renamed from: hI */
    public int f4202hI = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4200hG, 1);
        bndVar.m6246am(this.f4201hH, 2);
        bndVar.m6246am(this.f4202hI, 3);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4200hG = bncVar.m6274a(this.f4200hG, 1, true);
        this.f4201hH = bncVar.m6274a(this.f4201hH, 2, true);
        this.f4202hI = bncVar.m6274a(this.f4202hI, 3, true);
    }
}
