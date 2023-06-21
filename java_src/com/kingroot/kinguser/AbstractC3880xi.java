package com.kingroot.kinguser;

import android.support.p004v4.view.ViewPager;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xi */
/* loaded from: classes.dex */
public abstract class AbstractC3880xi implements ViewPager.PageTransformer {
    /* renamed from: c */
    public abstract void mo1463c(View view, float f);

    /* renamed from: d */
    public abstract void mo1462d(View view, float f);

    /* renamed from: e */
    public abstract void mo1461e(View view, float f);

    @Override // android.support.p004v4.view.ViewPager.PageTransformer
    public void transformPage(View view, float f) {
        if (f < -1.0f) {
            mo1463c(view, f);
        } else if (f <= 0.0f) {
            mo1462d(view, f);
        } else if (f <= 1.0f) {
            mo1461e(view, f);
        } else {
            mo1463c(view, f);
        }
    }

    /* renamed from: a */
    public static AbstractC3880xi m1480a(EnumC3884xl enumC3884xl) {
        switch (enumC3884xl) {
            case Default:
                return new C3876xe();
            case Alpha:
                return new C3874xc();
            case Rotate:
                return new C3882xj();
            case Cube:
                return new C3875xd();
            case Flip:
                return new C3879xh();
            case Accordion:
                return new C3873xb();
            case ZoomFade:
                return new C3892xn();
            case Fade:
                return new C3878xg();
            case ZoomCenter:
                return new C3885xm();
            case ZoomStack:
                return new C3894xp();
            case Stack:
                return new C3883xk();
            case Depth:
                return new C3877xf();
            case Zoom:
                return new C3893xo();
            default:
                return new C3876xe();
        }
    }
}
