package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.oe */
/* loaded from: classes.dex */
class C3375oe implements cck {
    final /* synthetic */ cat val$listener;

    /* renamed from: xX */
    final /* synthetic */ C3374od f3239xX;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3375oe(C3374od c3374od, cat catVar) {
        this.f3239xX = c3374od;
        this.val$listener = catVar;
    }

    @Override // com.kingroot.kinguser.cck
    /* renamed from: a */
    public cfp<Long, Integer, JceStruct> mo2772a(int i, long j, int i2, JceStruct jceStruct) {
        if (jceStruct == null) {
            if (this.val$listener != null) {
                this.val$listener.mo2689a(i, i2, 0, 0, null);
            }
            return null;
        }
        if (this.val$listener != null) {
            this.val$listener.mo2689a(i, i2, 0, 0, jceStruct);
        }
        return null;
    }
}
