package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.g */
/* loaded from: classes.dex */
public final class C4035g extends AbstractC4027cb {

    /* renamed from: id */
    public int f4236id = 0;
    public int version = 0;
    public int level = 0;

    /* renamed from: aM */
    public String f4235aM = "";

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4236id, 0);
        bndVar.m6246am(this.version, 1);
        bndVar.m6246am(this.level, 2);
        if (this.f4235aM != null) {
            bndVar.m6258T(this.f4235aM, 3);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4236id = bncVar.m6274a(this.f4236id, 0, true);
        this.version = bncVar.m6274a(this.version, 1, true);
        this.level = bncVar.m6274a(this.level, 2, true);
        this.f4235aM = bncVar.m6259z(3, false);
    }
}
