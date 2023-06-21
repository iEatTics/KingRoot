package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xc */
/* loaded from: classes.dex */
public class C3874xc extends AbstractC3880xi {

    /* renamed from: TM */
    private float f3941TM = 0.4f;

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
        ViewCompat.setAlpha(view, 0.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        ViewCompat.setAlpha(view, this.f3941TM + ((1.0f - this.f3941TM) * (1.0f + f)));
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        ViewCompat.setAlpha(view, this.f3941TM + ((1.0f - this.f3941TM) * (1.0f - f)));
    }
}
