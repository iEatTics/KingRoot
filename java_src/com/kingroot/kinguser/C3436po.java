package com.kingroot.kinguser;

import android.graphics.Bitmap;
import com.kingroot.kinguser.C3422pj;
/* renamed from: com.kingroot.kinguser.po */
/* loaded from: classes.dex */
class C3436po implements C3422pj.InterfaceC3423a {

    /* renamed from: yX */
    final /* synthetic */ C3435pn f3321yX;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3436po(C3435pn c3435pn) {
        this.f3321yX = c3435pn;
    }

    @Override // com.kingroot.kinguser.C3422pj.InterfaceC3423a
    /* renamed from: a */
    public void mo2621a(Bitmap bitmap) {
        if (bitmap != null) {
            this.f3321yX.f3310yN.setTicker(this.f3321yX.f3313yR).setContentTitle(this.f3321yX.f3313yR).setContentText(this.f3321yX.f3314yS).setAutoCancel(true).setStyle(this.f3321yX.f3317yW.bigPicture(bitmap)).setDefaults(1);
            C3132gr.m3663a(new RunnableC3437pp(this));
        }
    }
}
