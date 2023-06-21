package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xp */
/* loaded from: classes.dex */
public class C3894xp extends AbstractC3880xi {
    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        ViewCompat.setTranslationX(view, (-view.getWidth()) * f);
        ViewCompat.setPivotX(view, view.getWidth() * 0.5f);
        ViewCompat.setPivotY(view, view.getHeight() * 0.5f);
        ViewCompat.setScaleX(view, 1.0f + f);
        ViewCompat.setScaleY(view, 1.0f + f);
        if (f < -0.95f) {
            ViewCompat.setAlpha(view, 0.0f);
        } else {
            ViewCompat.setAlpha(view, 1.0f);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        ViewCompat.setTranslationX(view, (-view.getWidth()) * f);
        ViewCompat.setPivotX(view, view.getWidth() * 0.5f);
        ViewCompat.setPivotY(view, view.getHeight() * 0.5f);
        ViewCompat.setScaleX(view, 1.0f + f);
        ViewCompat.setScaleY(view, 1.0f + f);
        if (f > 0.95f) {
            ViewCompat.setAlpha(view, 0.0f);
        } else {
            ViewCompat.setAlpha(view, 1.0f);
        }
    }
}
