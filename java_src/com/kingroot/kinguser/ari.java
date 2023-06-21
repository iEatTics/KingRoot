package com.kingroot.kinguser;
/* loaded from: classes.dex */
abstract class ari extends arl {
    private static final String TAG = aiq.asa + "_AbsAntiAcquireRootProject";
    private final art aLM = new art();
    private final aru aLN = new aru();
    private boolean aLO;
    private boolean aLP;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.arl
    /* renamed from: MG */
    public boolean mo9522MG() {
        this.aLO = this.aLN.m9506MG();
        this.aLP = this.aLM.m9509gp(2);
        return this.aLO && this.aLP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.arl
    /* renamed from: MH */
    public boolean mo9521MH() {
        if (!this.aLO) {
            this.aLN.m9505MH();
        }
        if (!this.aLP) {
            this.aLM.m9520MH();
            return true;
        }
        return true;
    }
}
