package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.View;
/* renamed from: com.kingroot.kinguser.rd */
/* loaded from: classes.dex */
public final class C3513rd {
    /* renamed from: e */
    public static void m2490e(View view) {
        ViewCompat.setAlpha(view, 1.0f);
        ViewCompat.setScaleY(view, 1.0f);
        ViewCompat.setScaleX(view, 1.0f);
        ViewCompat.setTranslationY(view, 0.0f);
        ViewCompat.setTranslationX(view, 0.0f);
        ViewCompat.setRotation(view, 0.0f);
        ViewCompat.setRotationY(view, 0.0f);
        ViewCompat.setRotationX(view, 0.0f);
        ViewCompat.setPivotY(view, view.getMeasuredHeight() / 2);
        ViewCompat.setPivotX(view, view.getMeasuredWidth() / 2);
        ViewCompat.animate(view).setInterpolator(null).setStartDelay(0L);
    }
}
