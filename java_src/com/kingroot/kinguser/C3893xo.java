package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xo */
/* loaded from: classes.dex */
public class C3893xo extends AbstractC3880xi {

    /* renamed from: TM */
    private float f3960TM = 0.85f;

    /* renamed from: Ue */
    private float f3961Ue = 0.65f;

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
        ViewCompat.setAlpha(view, 0.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        float max = Math.max(this.f3960TM, 1.0f + f);
        ViewCompat.setTranslationX(view, ((view.getWidth() * (1.0f - max)) / 2.0f) - (((view.getHeight() * (1.0f - max)) / 2.0f) / 2.0f));
        ViewCompat.setScaleX(view, max);
        ViewCompat.setScaleY(view, max);
        ViewCompat.setAlpha(view, (((max - this.f3960TM) / (1.0f - this.f3960TM)) * (1.0f - this.f3961Ue)) + this.f3961Ue);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        float max = Math.max(this.f3960TM, 1.0f - f);
        ViewCompat.setTranslationX(view, (((view.getHeight() * (1.0f - max)) / 2.0f) / 2.0f) + (-((view.getWidth() * (1.0f - max)) / 2.0f)));
        ViewCompat.setScaleX(view, max);
        ViewCompat.setScaleY(view, max);
        ViewCompat.setAlpha(view, (((max - this.f3960TM) / (1.0f - this.f3960TM)) * (1.0f - this.f3961Ue)) + this.f3961Ue);
    }
}
