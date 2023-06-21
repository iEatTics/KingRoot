package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.t */
/* loaded from: classes.dex */
public final class C4048t extends AbstractC4027cb {
    private static ArrayList<C4047s> bDo;
    private static ArrayList<C4046r> bDp;

    /* renamed from: id */
    public int f4305id = 0;
    public int version = 0;

    /* renamed from: ci */
    public ArrayList<C4047s> f4303ci = null;

    /* renamed from: cj */
    private ArrayList<C4046r> f4304cj = null;

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4305id, 0);
        bndVar.m6246am(this.version, 1);
        if (this.f4303ci != null) {
            bndVar.m6251a((Collection) this.f4303ci, 2);
        }
        if (this.f4304cj != null) {
            bndVar.m6251a((Collection) this.f4304cj, 3);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4305id = bncVar.m6274a(this.f4305id, 0, true);
        this.version = bncVar.m6274a(this.version, 1, true);
        if (bDo == null) {
            bDo = new ArrayList<>();
            bDo.add(new C4047s());
        }
        this.f4303ci = (ArrayList) bncVar.m6264d(bDo, 2, false);
        if (bDp == null) {
            bDp = new ArrayList<>();
            bDp.add(new C4046r());
        }
        this.f4304cj = (ArrayList) bncVar.m6264d(bDp, 3, false);
    }
}
