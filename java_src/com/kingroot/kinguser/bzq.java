package com.kingroot.kinguser;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bzq extends cah<bzo> {
    final /* synthetic */ bzp bVP;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bzq(bzp bzpVar) {
        this.bVP = bzpVar;
    }

    @Override // com.kingroot.kinguser.cah
    /* renamed from: c */
    public void mo5071b(bzo bzoVar) {
        this.bVP.bVN = null;
        this.bVP.sendMessage(this.bVP.obtainMessage(2, bzoVar));
    }

    @Override // com.kingroot.kinguser.cah
    /* renamed from: d */
    public void mo5072a(bzo bzoVar) {
        this.bVP.bVN = null;
        this.bVP.sendMessage(this.bVP.obtainMessage(3, bzoVar));
    }
}
