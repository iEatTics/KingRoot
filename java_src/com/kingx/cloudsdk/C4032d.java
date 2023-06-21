package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.d */
/* loaded from: classes.dex */
public final class C4032d extends AbstractC4027cb {

    /* renamed from: aG */
    private static ArrayList<C4035g> f4224aG;

    /* renamed from: aC */
    public int f4225aC = 0;

    /* renamed from: aD */
    public int f4226aD = 0;

    /* renamed from: aE */
    public ArrayList<C4035g> f4227aE = null;

    /* renamed from: aF */
    public long f4228aF = 0;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4225aC, 0);
        bndVar.m6246am(this.f4226aD, 1);
        bndVar.m6251a((Collection) this.f4227aE, 3);
        bndVar.m6254a(this.f4228aF, 4);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4225aC = bncVar.m6274a(this.f4225aC, 0, true);
        this.f4226aD = bncVar.m6274a(this.f4226aD, 1, true);
        if (f4224aG == null) {
            f4224aG = new ArrayList<>();
            f4224aG.add(new C4035g());
        }
        this.f4227aE = (ArrayList) bncVar.m6264d(f4224aG, 3, true);
        this.f4228aF = bncVar.m6273a(this.f4228aF, 4, true);
    }
}
