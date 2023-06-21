package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.j */
/* loaded from: classes.dex */
public final class C4038j extends AbstractC4027cb {

    /* renamed from: aV */
    private static ArrayList<String> f4242aV;
    private static ArrayList<String> bCV;

    /* renamed from: aQ */
    private ArrayList<String> f4243aQ = null;

    /* renamed from: aU */
    public ArrayList<String> f4244aU = null;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        if (this.f4243aQ != null) {
            bndVar.m6251a((Collection) this.f4243aQ, 0);
        }
        if (this.f4244aU != null) {
            bndVar.m6251a((Collection) this.f4244aU, 1);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        if (bCV == null) {
            bCV = new ArrayList<>();
            bCV.add("");
        }
        this.f4243aQ = (ArrayList) bncVar.m6264d(bCV, 0, false);
        if (f4242aV == null) {
            f4242aV = new ArrayList<>();
            f4242aV.add("");
        }
        this.f4244aU = (ArrayList) bncVar.m6264d(f4242aV, 1, false);
    }
}
