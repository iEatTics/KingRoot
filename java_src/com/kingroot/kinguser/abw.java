package com.kingroot.kinguser;

import com.kingroot.kinguser.aci;
/* loaded from: classes.dex */
public abstract class abw {

    /* renamed from: ZY */
    private abw f1381ZY = null;

    /* renamed from: ZZ */
    protected C0647a f1382ZZ;

    /* renamed from: rA */
    protected abstract abm mo12729rA();

    /* renamed from: rB */
    protected abstract aci.EnumC0652a mo12728rB();

    public abw() {
        this.f1382ZZ = null;
        this.f1382ZZ = new C0647a();
        this.f1382ZZ.aab = mo12728rB();
    }

    /* renamed from: a */
    public void m12745a(abw abwVar) {
        this.f1381ZY = abwVar;
    }

    /* renamed from: rr */
    public abm m12743rr() {
        return m12744a((abz) null);
    }

    /* renamed from: a */
    public abm m12744a(abz abzVar) {
        this.f1382ZZ.aab = mo12728rB();
        if (abzVar != null) {
            abzVar.mo12741a(mo12728rB());
        }
        if (!this.f1382ZZ.m12742rs()) {
            this.f1382ZZ.aaa = mo12729rA();
        }
        if (abzVar != null) {
            abzVar.mo6517a(this.f1382ZZ);
        }
        if (!this.f1382ZZ.m12742rs() && this.f1381ZY != null) {
            this.f1382ZZ.aaa = this.f1381ZY.m12744a(abzVar);
        }
        return this.f1382ZZ.aaa;
    }

    /* renamed from: com.kingroot.kinguser.abw$a */
    /* loaded from: classes.dex */
    public static class C0647a {
        public abm aaa = null;
        public aci.EnumC0652a aab;

        /* renamed from: rs */
        public boolean m12742rs() {
            return abj.m12826a(this.aaa);
        }
    }
}
