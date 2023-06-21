package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class arn extends arl {
    private boolean aLV = false;
    private int aLW = 0;

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MG */
    protected boolean mo9522MG() {
        this.aLV = aks.m11143BP().m10997Ef();
        long m10992Ek = aks.m11143BP().m10992Ek();
        long currentTimeMillis = System.currentTimeMillis();
        if (m10992Ek != 0 && currentTimeMillis > m10992Ek) {
            this.aLW = (int) ((currentTimeMillis - m10992Ek) / 86400000);
        }
        return !this.aLV && this.aLW == 0;
    }

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MH */
    protected boolean mo9521MH() {
        return true;
    }

    /* renamed from: Nn */
    public int m9527Nn() {
        return this.aLW;
    }
}
