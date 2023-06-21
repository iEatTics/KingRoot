package com.kingroot.kinguser;

import com.king.uranus.AbstractC0404cS;
import com.king.uranus.C0421p;
/* renamed from: com.kingroot.kinguser.in */
/* loaded from: classes.dex */
public class C3189in implements InterfaceC3187il {
    @Override // com.kingroot.kinguser.InterfaceC3187il
    /* renamed from: a */
    public int mo3493a(AbstractC0404cS abstractC0404cS) {
        if (abstractC0404cS == null || !(abstractC0404cS instanceof C0421p)) {
            return 0;
        }
        C0421p c0421p = (C0421p) abstractC0404cS;
        if (c0421p.f399bj == 1) {
            return m3492aA(c0421p.f398bi);
        }
        return m3491aB(c0421p.f398bi);
    }

    /* renamed from: aA */
    private int m3492aA(String str) {
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (interfaceC3195it.mo3126h(true)) {
            return interfaceC3195it.mo3131aC(str).m3447co() ? 1 : 0;
        }
        return 0;
    }

    /* renamed from: aB */
    private int m3491aB(String str) {
        return C3197iv.m3465aD(str).m3447co() ? 1 : 0;
    }
}
