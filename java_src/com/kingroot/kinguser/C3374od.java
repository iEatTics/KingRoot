package com.kingroot.kinguser;

import android.content.Context;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.od */
/* loaded from: classes.dex */
public class C3374od implements InterfaceC3387oo {

    /* renamed from: xW */
    private C3377og f3238xW = new C3377og();

    @Override // com.kingroot.kinguser.InterfaceC3387oo
    /* renamed from: a */
    public void mo2691a(Context context, boolean z, boolean z2, boolean z3, cas casVar, cau cauVar, cgj cgjVar, car carVar) {
        this.f3238xW.m2771a(context, casVar, new C3386on(), cauVar, z, z2, null, cgjVar, carVar);
        if (cfd.bZT) {
        }
        if (!cfd.bZU) {
            this.f3238xW.m2768p(z3);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3387oo
    /* renamed from: a */
    public void mo2693a(int i, JceStruct jceStruct, cat catVar) {
        this.f3238xW.m4488aA(i, 0);
        this.f3238xW.m4494a(i, jceStruct, 0, new C3375oe(this, catVar));
    }

    @Override // com.kingroot.kinguser.InterfaceC3387oo
    /* renamed from: a */
    public void mo2692a(int i, JceStruct jceStruct, JceStruct jceStruct2, cat catVar) {
        this.f3238xW.mo4493a(i, jceStruct, jceStruct2, 0, new C3376of(this, catVar));
    }
}
