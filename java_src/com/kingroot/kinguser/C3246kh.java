package com.kingroot.kinguser;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.kh */
/* loaded from: classes.dex */
public class C3246kh extends C3194is<C3242kf> {

    /* renamed from: tN */
    final /* synthetic */ HandlerC3243kg f2944tN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3246kh(HandlerC3243kg handlerC3243kg) {
        this.f2944tN = handlerC3243kg;
    }

    @Override // com.kingroot.kinguser.C3194is
    /* renamed from: c */
    public void mo3291e(C3242kf c3242kf) {
        this.f2944tN.f2942tL = null;
        this.f2944tN.sendMessage(this.f2944tN.obtainMessage(2, c3242kf));
    }

    @Override // com.kingroot.kinguser.C3194is
    /* renamed from: d  reason: avoid collision after fix types in other method */
    public void mo3293d(C3242kf c3242kf) {
        this.f2944tN.f2942tL = null;
        this.f2944tN.sendMessage(this.f2944tN.obtainMessage(3, c3242kf));
    }
}
