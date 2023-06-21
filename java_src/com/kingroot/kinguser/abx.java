package com.kingroot.kinguser;

import com.kingroot.kinguser.aci;
import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class abx extends abw {
    @Override // com.kingroot.kinguser.abw
    /* renamed from: rA */
    protected abm mo12729rA() {
        if (this.f1382ZZ.aaa != null && abj.m12826a(this.f1382ZZ.aaa)) {
            return this.f1382ZZ.aaa;
        }
        String[] split = System.getenv("PATH").split(":");
        for (int i = 0; i < split.length; i++) {
            File file = new File(split[i] + File.separator + "su");
            if (file.exists()) {
                this.f1382ZZ.aaa = abj.m12820ep(file.getAbsolutePath());
                if (this.f1382ZZ.aaa != null) {
                    break;
                }
            }
        }
        return this.f1382ZZ.aaa;
    }

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rB */
    protected aci.EnumC0652a mo12728rB() {
        return aci.EnumC0652a.TYPE_ROOT_ALL_PATH_SU;
    }
}
