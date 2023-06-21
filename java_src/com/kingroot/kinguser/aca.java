package com.kingroot.kinguser;

import com.kingroot.kinguser.aci;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class aca extends abw {
    @Override // com.kingroot.kinguser.abw
    /* renamed from: rA */
    protected abm mo12729rA() {
        File file = new File("/system/usr/ikm/ikmsu");
        if (file.exists()) {
            this.f1382ZZ.aaa = abj.m12820ep(file.getAbsolutePath());
        }
        return this.f1382ZZ.aaa;
    }

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rB */
    protected aci.EnumC0652a mo12728rB() {
        return aci.EnumC0652a.TYPE_ROOT_KM_BACKUP;
    }
}
