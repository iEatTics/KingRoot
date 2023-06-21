package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.e */
/* loaded from: classes.dex */
public final class C4033e extends AbstractC4027cb {

    /* renamed from: aH */
    private int f4229aH = 0;
    private int versionCode = 0;

    /* renamed from: aI */
    private long f4230aI = 0;

    /* renamed from: aJ */
    private int f4231aJ = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4229aH, 0);
        bndVar.m6246am(this.versionCode, 1);
        bndVar.m6254a(this.f4230aI, 2);
        bndVar.m6246am(this.f4231aJ, 3);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4229aH = bncVar.m6274a(this.f4229aH, 0, true);
        this.versionCode = bncVar.m6274a(this.versionCode, 1, true);
        this.f4230aI = bncVar.m6273a(this.f4230aI, 2, true);
        this.f4231aJ = bncVar.m6274a(this.f4231aJ, 3, true);
    }
}
