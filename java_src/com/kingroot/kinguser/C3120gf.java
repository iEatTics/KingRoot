package com.kingroot.kinguser;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.gf */
/* loaded from: classes.dex */
public final class C3120gf implements InterfaceC3064fp {

    /* renamed from: ql */
    final /* synthetic */ List f2706ql;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3120gf(List list) {
        this.f2706ql = list;
    }

    @Override // com.kingroot.kinguser.InterfaceC3064fp
    /* renamed from: a */
    public boolean mo3725a(String str) {
        AbstractC3035ew m3739ag;
        m3739ag = C3116gb.m3739ag(str);
        if (m3739ag != null) {
            this.f2706ql.add(m3739ag);
            return true;
        }
        return true;
    }
}
