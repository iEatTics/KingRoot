package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xb */
/* loaded from: classes.dex */
public class C3873xb extends AbstractC3880xi {
    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        ViewCompat.setPivotX(view, view.getWidth());
        ViewCompat.setScaleX(view, 1.0f + f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        ViewCompat.setPivotX(view, 0.0f);
        ViewCompat.setScaleX(view, 1.0f - f);
        ViewCompat.setAlpha(view, 1.0f);
    }
}
