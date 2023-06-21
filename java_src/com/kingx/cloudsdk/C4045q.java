package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.q */
/* loaded from: classes.dex */
public final class C4045q extends AbstractC4027cb {
    private static ArrayList<C4048t> bDm;

    /* renamed from: aC */
    public int f4294aC = 0;

    /* renamed from: aD */
    public int f4295aD = 0;

    /* renamed from: ca */
    public ArrayList<C4048t> f4296ca = null;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4294aC, 0);
        bndVar.m6246am(this.f4295aD, 1);
        bndVar.m6251a((Collection) this.f4296ca, 2);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4294aC = bncVar.m6274a(this.f4294aC, 0, true);
        this.f4295aD = bncVar.m6274a(this.f4295aD, 1, true);
        if (bDm == null) {
            bDm = new ArrayList<>();
            bDm.add(new C4048t());
        }
        this.f4296ca = (ArrayList) bncVar.m6264d(bDm, 2, true);
    }
}
