package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xh */
/* loaded from: classes.dex */
public class C3879xh extends AbstractC3880xi {
    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        ViewCompat.setTranslationX(view, (-view.getWidth()) * f);
        ViewCompat.setRotationY(view, 180.0f * f);
        if (f > -0.5d) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        ViewCompat.setTranslationX(view, (-view.getWidth()) * f);
        ViewCompat.setRotationY(view, 180.0f * f);
        if (f < 0.5d) {
            view.setVisibility(0);
        } else {
            view.setVisibility(4);
        }
    }
}
