package com.kingroot.kinguser;

import java.util.Iterator;
import java.util.List;
/* renamed from: com.kingroot.kinguser.gd */
/* loaded from: classes.dex */
class C3118gd implements InterfaceC3064fp {

    /* renamed from: qm */
    final /* synthetic */ List f2703qm;

    /* renamed from: qn */
    final /* synthetic */ C3117gc f2704qn;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3118gd(C3117gc c3117gc, List list) {
        this.f2704qn = c3117gc;
        this.f2703qm = list;
    }

    @Override // com.kingroot.kinguser.InterfaceC3064fp
    /* renamed from: a */
    public boolean mo3725a(String str) {
        AbstractC3035ew m3739ag;
        boolean z;
        m3739ag = C3116gb.m3739ag(str);
        if (m3739ag != null) {
            Iterator it = this.f2703qm.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((AbstractC3035ew) it.next()).m3893a(m3739ag)) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                this.f2703qm.add(m3739ag);
            }
        }
        return true;
    }
}
