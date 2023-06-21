package com.kingroot.kinguser;

import com.kingroot.kinguser.aci;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class acb extends abw {
    private static final String aac = abu.f1371ZO + File.separator + "kd";

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rA */
    protected abm mo12729rA() {
        if (this.f1382ZZ.m12742rs()) {
            return this.f1382ZZ.aaa;
        }
        this.f1382ZZ.aaa = abj.m12820ep(aac);
        return this.f1382ZZ.aaa;
    }

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rB */
    protected aci.EnumC0652a mo12728rB() {
        return aci.EnumC0652a.TYPE_ROOT_KM_DAEMON;
    }
}
