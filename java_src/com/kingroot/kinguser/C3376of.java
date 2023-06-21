package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.of */
/* loaded from: classes.dex */
class C3376of implements cci {
    final /* synthetic */ cat val$listener;

    /* renamed from: xX */
    final /* synthetic */ C3374od f3240xX;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3376of(C3374od c3374od, cat catVar) {
        this.f3240xX = c3374od;
        this.val$listener = catVar;
    }

    @Override // com.kingroot.kinguser.cci
    /* renamed from: a */
    public void mo457a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
        if (this.val$listener != null) {
            this.val$listener.mo2689a(i, i2, i3, i4, jceStruct);
        }
    }
}
