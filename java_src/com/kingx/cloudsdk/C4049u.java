package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.u */
/* loaded from: classes.dex */
public final class C4049u extends AbstractC4027cb {

    /* renamed from: cm */
    private int f4306cm = 0;

    /* renamed from: cn */
    private int f4307cn = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        if (this.f4306cm != 0) {
            bndVar.m6246am(this.f4306cm, 0);
        }
        if (this.f4307cn != 0) {
            bndVar.m6246am(this.f4307cn, 1);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4306cm = bncVar.m6274a(this.f4306cm, 0, false);
        this.f4307cn = bncVar.m6274a(this.f4307cn, 1, false);
    }
}
