package com.kingroot.kinguser;

import com.king.uranus.AbstractC0404cS;
import com.king.uranus.C0424s;
/* renamed from: com.kingroot.kinguser.im */
/* loaded from: classes.dex */
public class C3188im implements InterfaceC3187il {

    /* renamed from: qL */
    InterfaceC3175ib f2837qL;

    public C3188im(InterfaceC3175ib interfaceC3175ib) {
        this.f2837qL = interfaceC3175ib;
    }

    @Override // com.kingroot.kinguser.InterfaceC3187il
    /* renamed from: a */
    public int mo3493a(AbstractC0404cS abstractC0404cS) {
        if (abstractC0404cS == null || !(abstractC0404cS instanceof C0424s)) {
            return 2;
        }
        C0424s c0424s = (C0424s) abstractC0404cS;
        return this.f2837qL.mo3235e(c0424s.f405bm, c0424s.f407bo);
    }
}
