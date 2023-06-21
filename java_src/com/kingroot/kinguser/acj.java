package com.kingroot.kinguser;

import com.kingroot.kinguser.aci;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class acj extends abw {
    @Override // com.kingroot.kinguser.abw
    /* renamed from: rA */
    protected abm mo12729rA() {
        if (this.f1382ZZ.m12742rs()) {
            return this.f1382ZZ.aaa;
        }
        this.f1382ZZ.aaa = m12730rF();
        return this.f1382ZZ.aaa;
    }

    /* renamed from: rF */
    private abm m12730rF() {
        String absolutePath = aco.m12702rS().getAbsolutePath();
        abm m12820ep = abj.m12820ep(absolutePath);
        if (!abj.m12826a(m12820ep)) {
            m12820ep = abj.m12828P(absolutePath, " --global");
        }
        if (m12820ep != null) {
            return m12820ep;
        }
        return null;
    }

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rB */
    protected aci.EnumC0652a mo12728rB() {
        return aci.EnumC0652a.TYPE_ROOT_SELF_DAEMON;
    }
}
