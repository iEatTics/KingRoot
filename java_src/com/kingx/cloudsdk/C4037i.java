package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.i */
/* loaded from: classes.dex */
public final class C4037i extends AbstractC4027cb {
    private static ArrayList<String> bCV;
    private static ArrayList<String> bCW;

    /* renamed from: aO */
    private String f4238aO = "";

    /* renamed from: aP */
    private String f4239aP = "";

    /* renamed from: aQ */
    private ArrayList<String> f4240aQ = null;

    /* renamed from: aR */
    private ArrayList<String> f4241aR = null;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        if (this.f4238aO != null) {
            bndVar.m6258T(this.f4238aO, 0);
        }
        if (this.f4239aP != null) {
            bndVar.m6258T(this.f4239aP, 1);
        }
        if (this.f4240aQ != null) {
            bndVar.m6251a((Collection) this.f4240aQ, 2);
        }
        if (this.f4241aR != null) {
            bndVar.m6251a((Collection) this.f4241aR, 3);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4238aO = bncVar.m6259z(0, false);
        this.f4239aP = bncVar.m6259z(1, false);
        if (bCV == null) {
            bCV = new ArrayList<>();
            bCV.add("");
        }
        this.f4240aQ = (ArrayList) bncVar.m6264d(bCV, 2, false);
        if (bCW == null) {
            bCW = new ArrayList<>();
            bCW.add("");
        }
        this.f4241aR = (ArrayList) bncVar.m6264d(bCW, 3, false);
    }
}
