package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
/* renamed from: com.kingx.cloudsdk.m */
/* loaded from: classes.dex */
public final class C4041m extends AbstractC4027cb {

    /* renamed from: aH */
    private int f4272aH = 0;
    private int versionCode = 0;

    /* renamed from: by */
    private long f4275by = 0;

    /* renamed from: bz */
    private int f4276bz = 0;

    /* renamed from: bA */
    private int f4273bA = 0;

    /* renamed from: bB */
    private String f4274bB = "";

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4272aH, 0);
        bndVar.m6246am(this.versionCode, 1);
        bndVar.m6254a(this.f4275by, 2);
        bndVar.m6246am(this.f4276bz, 3);
        bndVar.m6246am(this.f4273bA, 4);
        if (this.f4274bB != null) {
            bndVar.m6258T(this.f4274bB, 5);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4272aH = bncVar.m6274a(this.f4272aH, 0, true);
        this.versionCode = bncVar.m6274a(this.versionCode, 1, true);
        this.f4275by = bncVar.m6273a(this.f4275by, 2, true);
        this.f4276bz = bncVar.m6274a(this.f4276bz, 3, true);
        this.f4273bA = bncVar.m6274a(this.f4273bA, 4, false);
        this.f4274bB = bncVar.m6259z(5, false);
    }
}
