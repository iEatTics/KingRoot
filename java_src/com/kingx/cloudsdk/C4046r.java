package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.r */
/* loaded from: classes.dex */
public final class C4046r extends AbstractC4027cb {

    /* renamed from: cc */
    private String f4297cc = "";
    private String value = "";
    private long time = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6258T(this.f4297cc, 0);
        bndVar.m6258T(this.value, 1);
        bndVar.m6254a(this.time, 2);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4297cc = bncVar.m6259z(0, true);
        this.value = bncVar.m6259z(1, true);
        this.time = bncVar.m6273a(this.time, 2, true);
    }
}
