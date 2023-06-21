package com.kingroot.kinguser;

import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.ge */
/* loaded from: classes.dex */
public final class C3119ge implements InterfaceC3064fp {

    /* renamed from: ql */
    final /* synthetic */ List f2705ql;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3119ge(List list) {
        this.f2705ql = list;
    }

    @Override // com.kingroot.kinguser.InterfaceC3064fp
    /* renamed from: a */
    public boolean mo3725a(String str) {
        AbstractC3035ew m3739ag;
        m3739ag = C3116gb.m3739ag(str);
        if (m3739ag != null) {
            this.f2705ql.add(m3739ag);
            return true;
        }
        return true;
    }
}
