package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import com.android.util.FloatProperty;
import com.android.util.Property;
import com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj;
/* renamed from: com.kingroot.kinguser.ql */
/* loaded from: classes.dex */
public class C3473ql extends AbstractView$OnTouchListenerC3464qj {
    public static Property<View, Float> TRANSLATION_Y = new FloatProperty<View>("translationY") { // from class: com.kingroot.kinguser.ql.1
        @Override // com.android.util.FloatProperty
        public void setValue(View view, float f) {
            ViewCompat.setTranslationY(view, f);
        }

        @Override // com.android.util.Property
        public Float get(View view) {
            return Float.valueOf(ViewCompat.getTranslationY(view));
        }
    };

    /* renamed from: com.kingroot.kinguser.ql$b */
    /* loaded from: classes.dex */
    public static class C3476b extends AbstractView$OnTouchListenerC3464qj.AbstractC3469e {
        protected C3476b() {
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.AbstractC3469e
        /* renamed from: a */
        public boolean mo2588a(View view, MotionEvent motionEvent) {
            if (motionEvent.getHistorySize() == 0) {
                return false;
            }
            float y = motionEvent.getY(0) - motionEvent.getHistoricalY(0, 0);
            if (Math.abs(motionEvent.getX(0) - motionEvent.getHistoricalX(0, 0)) <= Math.abs(y)) {
                this.f3384Eg = ViewCompat.getTranslationY(view);
                this.f3385Eo = y;
                this.f3386Ep = this.f3385Eo > 0.0f;
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.kingroot.kinguser.ql$a */
    /* loaded from: classes.dex */
    public static class C3475a extends AbstractView$OnTouchListenerC3464qj.AbstractC3465a {
        public C3475a() {
            this.mProperty = C3473ql.TRANSLATION_Y;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.AbstractC3465a
        /* renamed from: c */
        protected void mo2589c(View view) {
            this.f3375Eg = ViewCompat.getTranslationY(view);
            this.f3376Eh = view.getHeight();
        }
    }

    public C3473ql(InterfaceC3477qm interfaceC3477qm) {
        this(interfaceC3477qm, 3.0f, 1.0f, -2.0f);
    }

    public C3473ql(InterfaceC3477qm interfaceC3477qm, float f, float f2, float f3) {
        super(interfaceC3477qm, f3, f, f2);
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: hn */
    protected AbstractView$OnTouchListenerC3464qj.AbstractC3469e mo2591hn() {
        return new C3476b();
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: ho */
    protected AbstractView$OnTouchListenerC3464qj.AbstractC3465a mo2590ho() {
        return new C3475a();
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: a */
    protected void mo2593a(View view, float f) {
        ViewCompat.setTranslationY(view, f);
    }

    @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj
    /* renamed from: a */
    protected void mo2592a(View view, float f, MotionEvent motionEvent) {
        ViewCompat.setTranslationY(view, f);
        motionEvent.offsetLocation(f - motionEvent.getY(0), 0.0f);
    }
}
