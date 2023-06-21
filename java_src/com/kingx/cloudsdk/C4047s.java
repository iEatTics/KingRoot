package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.s */
/* loaded from: classes.dex */
public final class C4047s extends AbstractC4027cb {
    private static ArrayList<Long> bDn;

    /* renamed from: id */
    public int f4302id = 0;
    public int count = 0;
    public long time = 0;

    /* renamed from: cd */
    public int f4298cd = 0;

    /* renamed from: ce */
    public String f4299ce = "";

    /* renamed from: cf */
    public String f4300cf = "";

    /* renamed from: cg */
    public ArrayList<Long> f4301cg = null;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4302id, 0);
        bndVar.m6246am(this.count, 1);
        bndVar.m6254a(this.time, 2);
        if (this.f4298cd != 0) {
            bndVar.m6246am(this.f4298cd, 3);
        }
        if (this.f4299ce != null) {
            bndVar.m6258T(this.f4299ce, 4);
        }
        if (this.f4300cf != null) {
            bndVar.m6258T(this.f4300cf, 5);
        }
        if (this.f4301cg != null) {
            bndVar.m6251a((Collection) this.f4301cg, 6);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4302id = bncVar.m6274a(this.f4302id, 0, true);
        this.count = bncVar.m6274a(this.count, 1, true);
        this.time = bncVar.m6273a(this.time, 2, true);
        this.f4298cd = bncVar.m6274a(this.f4298cd, 3, false);
        this.f4299ce = bncVar.m6259z(4, false);
        this.f4300cf = bncVar.m6259z(5, false);
        if (bDn == null) {
            bDn = new ArrayList<>();
            bDn.add(0L);
        }
        this.f4301cg = (ArrayList) bncVar.m6264d(bDn, 6, false);
    }
}
