package com.kingroot.kinguser;

import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class arr extends arl {
    private boolean aMd = false;

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MG */
    protected boolean mo9522MG() {
        this.aMd = KUApplication.aeW() && aks.m11143BP().m10983Et() == 1;
        return (aks.m11143BP().m10997Ef() || this.aMd) ? false : true;
    }

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MH */
    protected boolean mo9521MH() {
        if (this.aMd) {
            KUApplication.aeV();
            aks.m11143BP().m10779eB(2);
            return true;
        }
        return true;
    }
}
