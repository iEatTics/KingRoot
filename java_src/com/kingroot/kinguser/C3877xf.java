package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xf */
/* loaded from: classes.dex */
public class C3877xf extends AbstractC3880xi {

    /* renamed from: TM */
    private float f3943TM = 0.8f;

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
        ViewCompat.setAlpha(view, 0.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        ViewCompat.setAlpha(view, 1.0f);
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setScaleX(view, 1.0f);
        ViewCompat.setScaleY(view, 1.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        ViewCompat.setAlpha(view, 1.0f - f);
        ViewCompat.setTranslationX(view, (-view.getWidth()) * f);
        float f2 = this.f3943TM + ((1.0f - this.f3943TM) * (1.0f - f));
        ViewCompat.setScaleX(view, f2);
        ViewCompat.setScaleY(view, f2);
    }
}
