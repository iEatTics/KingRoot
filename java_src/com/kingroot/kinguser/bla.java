package com.kingroot.kinguser;

import com.kingroot.kinguser.abw;
import com.kingroot.kinguser.aci;
/* loaded from: classes.dex */
public class bla extends abt {
    @Override // com.kingroot.kinguser.abt, com.kingroot.kinguser.abz
    public void onStart() {
        super.onStart();
    }

    @Override // com.kingroot.kinguser.abt, com.kingroot.kinguser.abz
    /* renamed from: b */
    public void mo6516b(abw.C0647a c0647a) {
        abm m12703rF;
        super.mo6516b(c0647a);
        if (c0647a.m12742rs() && aco.m12704e(c0647a.aaa) && (m12703rF = aco.m12703rF()) != null) {
            this.f1367ZK.aaa.shutdown();
            this.f1367ZK.aaa = m12703rF;
        }
    }

    @Override // com.kingroot.kinguser.abt, com.kingroot.kinguser.abs
    /* renamed from: rt */
    protected aci mo6515rt() {
        return new aci(new aci.EnumC0652a[]{aci.EnumC0652a.TYPE_ROOT_SELF_DAEMON, aci.EnumC0652a.TYPE_ROOT_KM_DAEMON, aci.EnumC0652a.TYPE_ROOT_KU_SU, aci.EnumC0652a.TYPE_KU_DEV_SUD, aci.EnumC0652a.TYPE_ROOT_GLOBAL_SU, aci.EnumC0652a.TYPE_ROOT_ALL_PATH_SU, aci.EnumC0652a.TYPE_ROOT_KU_BACKUP, aci.EnumC0652a.TYPE_ROOT_KU_BACKUP_2});
    }

    @Override // com.kingroot.kinguser.abt, com.kingroot.kinguser.abs, com.kingroot.kinguser.abz
    /* renamed from: a */
    public void mo6517a(abw.C0647a c0647a) {
        super.mo6517a(c0647a);
        switch (c0647a.aab) {
            case TYPE_ROOT_KU_BACKUP:
                if (!c0647a.m12742rs()) {
                    ajb.m11487yT().checkAsync(false, true, null);
                    return;
                }
                return;
            case TYPE_ROOT_KU_BACKUP_2:
                if (!c0647a.m12742rs()) {
                    ajb.m11487yT().checkAsync(false, true, null);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
