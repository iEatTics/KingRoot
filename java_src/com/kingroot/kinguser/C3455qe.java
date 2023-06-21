package com.kingroot.kinguser;

import android.view.MotionEvent;
import android.view.View;
import com.android.animation.ViewPropertyCompat;
import com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj;
/* renamed from: com.kingroot.kinguser.qe */
/* loaded from: classes.dex */
public class C3455qe extends AbstractView$OnTouchListenerC3464qj {

    /* renamed from: com.kingroot.kinguser.qe$b */
    /* loaded from: classes.dex */
    public static class C3457b extends AbstractView$OnTouchListenerC3464qj.AbstractC3469e {
        protected C3457b() {
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.AbstractC3469e
        /* renamed from: a */
        public boolean mo2588a(View view, MotionEvent motionEvent) {
            if (motionEvent.getHistorySize() == 0) {
                return false;
            }
            float y = motionEvent.getY(0) - motionEvent.getHistoricalY(0, 0);
            float x = motionEvent.getX(0) - motionEvent.getHistoricalX(0, 0);
            if (Math.abs(x) >= Math.abs(y)) {
                this.f3384Eg = bhi.m7003J(view).getTranslationX();
                this.f3385Eo = x;
                this.f3386Ep = this.f3385Eo > 0.0f;
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.kingroot.kinguser.qe$a */
    /* loaded from: classes.dex */
    public static class C3456a extends AbstractView$OnTouchListenerC3464qj.AbstractC3465a {
        public C3456a() {
            this.mProperty = ViewPropertyCompat.TRANSLATION_X;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.AbstractC3465a
        /* renamed from: c */
        protected void mo2589c(View view) {
            this.f3375Eg = bhi.m7003J(view).getTranslationX();
            this.f3376Eh = view.getWidth();
        }
    }

    public C3455qe(InterfaceC3477qm interfaceC3477qm) {
        this(interfaceC3477qm, 3.0f, 1.0f, -2.0f);
    }

    public C3455qe(InterfaceC3477qm interfaceC3477qm, float f, float f2, float f3) {
        super(interfaceC3477qm, f3, f, f2);
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: hn */
    protected AbstractView$OnTouchListenerC3464qj.AbstractC3469e mo2591hn() {
        return new C3457b();
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: ho */
    protected AbstractView$OnTouchListenerC3464qj.AbstractC3465a mo2590ho() {
        return new C3456a();
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: a */
    protected void mo2593a(View view, float f) {
        bhi.m7003J(view).setTranslationX(f);
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: a */
    protected void mo2592a(View view, float f, MotionEvent motionEvent) {
        bhi.m7003J(view).setTranslationX(f);
        motionEvent.offsetLocation(f - motionEvent.getX(0), 0.0f);
    }
}
