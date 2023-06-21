package com.kingroot.kinguser;

import com.kingroot.kinguser.abw;
import com.kingroot.kinguser.aci;
/* loaded from: classes.dex */
public abstract class abs implements abz {

    /* renamed from: ZK */
    protected abw.C0647a f1367ZK;

    /* renamed from: rt */
    protected abstract aci mo6515rt();

    public abs() {
        this.f1367ZK = null;
        this.f1367ZK = new abw.C0647a();
    }

    /* renamed from: rr */
    public synchronized abm m12756rr() {
        abm abmVar;
        onStart();
        if (this.f1367ZK.m12742rs()) {
            abmVar = this.f1367ZK.aaa;
        } else {
            aci mo6515rt = mo6515rt();
            if (mo6515rt == null) {
                mo6515rt = new aci();
            }
            abw m12731rE = mo6515rt.m12731rE();
            if (m12731rE == null) {
                abmVar = null;
            } else {
                this.f1367ZK.aaa = m12731rE.m12744a(this);
                mo6516b(this.f1367ZK);
                abmVar = this.f1367ZK.aaa;
            }
        }
        return abmVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: rs */
    public boolean m12755rs() {
        return this.f1367ZK.m12742rs();
    }

    @Override // com.kingroot.kinguser.abz
    /* renamed from: a */
    public void mo12741a(aci.EnumC0652a enumC0652a) {
    }

    @Override // com.kingroot.kinguser.abz
    /* renamed from: a */
    public void mo6517a(abw.C0647a c0647a) {
        if (c0647a.m12742rs()) {
            this.f1367ZK = c0647a;
        }
    }
}
