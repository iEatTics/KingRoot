package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.k */
/* loaded from: classes.dex */
public final class C4039k extends AbstractC4027cb {

    /* renamed from: id */
    private int f4245id = 0;
    private String name = "";

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4245id, 0);
        bndVar.m6258T(this.name, 1);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4245id = bncVar.m6274a(this.f4245id, 0, true);
        this.name = bncVar.m6259z(1, true);
    }
}
