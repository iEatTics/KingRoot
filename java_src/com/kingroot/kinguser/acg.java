package com.kingroot.kinguser;

import android.os.Build;
import com.kingroot.kinguser.aci;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class acg extends abw {
    @Override // com.kingroot.kinguser.abw
    /* renamed from: rA */
    protected abm mo12729rA() {
        int i = Build.VERSION.SDK_INT;
        if (this.f1382ZZ.aaa != null && abj.m12826a(this.f1382ZZ.aaa)) {
            return this.f1382ZZ.aaa;
        }
        if (i >= 14) {
            this.f1382ZZ.aaa = abj.m12820ep("ku.sud");
        }
        return this.f1382ZZ.aaa;
    }

    @Override // com.kingroot.kinguser.abw
    /* renamed from: rB */
    protected aci.EnumC0652a mo12728rB() {
        return aci.EnumC0652a.TYPE_ROOT_KU_SU;
    }
}
