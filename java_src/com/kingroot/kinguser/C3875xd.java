package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xd */
/* loaded from: classes.dex */
public class C3875xd extends AbstractC3880xi {

    /* renamed from: TN */
    private float f3942TN = 90.0f;

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: c */
    public void mo1463c(View view, float f) {
        ViewCompat.setPivotX(view, view.getMeasuredWidth());
        ViewCompat.setPivotY(view, view.getMeasuredHeight() * 0.5f);
        ViewCompat.setRotationY(view, 0.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: d */
    public void mo1462d(View view, float f) {
        ViewCompat.setPivotX(view, view.getMeasuredWidth());
        ViewCompat.setPivotY(view, view.getMeasuredHeight() * 0.5f);
        ViewCompat.setRotationY(view, this.f3942TN * f);
    }

    @Override // com.kingroot.kinguser.AbstractC3880xi
    /* renamed from: e */
    public void mo1461e(View view, float f) {
        ViewCompat.setPivotX(view, 0.0f);
        ViewCompat.setPivotY(view, view.getMeasuredHeight() * 0.5f);
        ViewCompat.setRotationY(view, this.f3942TN * f);
    }
}
