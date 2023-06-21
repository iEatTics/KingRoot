package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.aj */
/* loaded from: classes.dex */
public final class C4015aj extends AbstractC4027cb {

    /* renamed from: ei */
    public int f4137ei = 0;

    /* renamed from: cy */
    public int f4136cy = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4137ei, 0);
        if (this.f4136cy != 0) {
            bndVar.m6246am(this.f4136cy, 1);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4137ei = bncVar.m6274a(this.f4137ei, 0, true);
        this.f4136cy = bncVar.m6274a(this.f4136cy, 1, false);
    }
}
