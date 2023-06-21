package com.kingroot.kinguser;

import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.android.animation.ValueAnimator;
import com.android.util.Property;
import com.kingroot.kinguser.InterfaceC3461qi;
/* renamed from: com.kingroot.kinguser.qj */
/* loaded from: classes.dex */
public abstract class AbstractView$OnTouchListenerC3464qj implements View.OnTouchListener, InterfaceC3458qf {

    /* renamed from: DY */
    protected final InterfaceC3477qm f3367DY;

    /* renamed from: Ea */
    protected final C3471g f3369Ea;

    /* renamed from: Eb */
    protected final C3466b f3370Eb;

    /* renamed from: Ef */
    protected float f3374Ef;

    /* renamed from: DX */
    protected final C3470f f3366DX = new C3470f();

    /* renamed from: Ed */
    protected InterfaceC3459qg f3372Ed = new InterfaceC3461qi.C3462a();

    /* renamed from: Ee */
    protected InterfaceC3460qh f3373Ee = new InterfaceC3461qi.C3463b();

    /* renamed from: DZ */
    protected final C3468d f3368DZ = new C3468d();

    /* renamed from: Ec */
    protected volatile InterfaceC3467c f3371Ec = this.f3368DZ;

    /* renamed from: com.kingroot.kinguser.qj$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3465a {

        /* renamed from: Eg */
        public float f3375Eg;

        /* renamed from: Eh */
        public float f3376Eh;
        public Property<View, Float> mProperty;

        /* renamed from: c */
        protected abstract void mo2589c(View view);
    }

    /* renamed from: com.kingroot.kinguser.qj$c */
    /* loaded from: classes.dex */
    public interface InterfaceC3467c {
        /* renamed from: a */
        boolean mo2599a(MotionEvent motionEvent);

        /* renamed from: b */
        void mo2597b(InterfaceC3467c interfaceC3467c);

        /* renamed from: b */
        boolean mo2598b(MotionEvent motionEvent);

        /* renamed from: hq */
        int mo2596hq();
    }

    /* renamed from: com.kingroot.kinguser.qj$e */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3469e {

        /* renamed from: Eg */
        public float f3384Eg;

        /* renamed from: Eo */
        public float f3385Eo;

        /* renamed from: Ep */
        public boolean f3386Ep;

        /* renamed from: a */
        protected abstract boolean mo2588a(View view, MotionEvent motionEvent);
    }

    /* renamed from: a */
    protected abstract void mo2593a(View view, float f);

    /* renamed from: a */
    protected abstract void mo2592a(View view, float f, MotionEvent motionEvent);

    /* renamed from: hn */
    protected abstract AbstractC3469e mo2591hn();

    /* renamed from: ho */
    protected abstract AbstractC3465a mo2590ho();

    /* renamed from: com.kingroot.kinguser.qj$f */
    /* loaded from: classes.dex */
    public static class C3470f {

        /* renamed from: Eg */
        protected float f3387Eg;

        /* renamed from: Ep */
        protected boolean f3388Ep;

        /* renamed from: Eq */
        protected int f3389Eq;

        protected C3470f() {
        }
    }

    /* renamed from: com.kingroot.kinguser.qj$d */
    /* loaded from: classes.dex */
    public class C3468d implements InterfaceC3467c {

        /* renamed from: En */
        final AbstractC3469e f3383En;

        public C3468d() {
            this.f3383En = AbstractView$OnTouchListenerC3464qj.this.mo2591hn();
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: hq */
        public int mo2596hq() {
            return 0;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: a */
        public boolean mo2599a(MotionEvent motionEvent) {
            if (this.f3383En.mo2588a(AbstractView$OnTouchListenerC3464qj.this.f3367DY.getView(), motionEvent)) {
                if (!(AbstractView$OnTouchListenerC3464qj.this.f3367DY.mo2585hs() && this.f3383En.f3386Ep) && (!AbstractView$OnTouchListenerC3464qj.this.f3367DY.mo2584ht() || this.f3383En.f3386Ep)) {
                    return false;
                }
                AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3389Eq = motionEvent.getPointerId(0);
                AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3387Eg = this.f3383En.f3384Eg;
                AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep = this.f3383En.f3386Ep;
                AbstractView$OnTouchListenerC3464qj.this.m2604a(AbstractView$OnTouchListenerC3464qj.this.f3369Ea);
                return AbstractView$OnTouchListenerC3464qj.this.f3369Ea.mo2599a(motionEvent);
            }
            return false;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: b */
        public boolean mo2598b(MotionEvent motionEvent) {
            return false;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: b */
        public void mo2597b(InterfaceC3467c interfaceC3467c) {
            AbstractView$OnTouchListenerC3464qj.this.f3372Ed.mo2606a(AbstractView$OnTouchListenerC3464qj.this, interfaceC3467c.mo2596hq(), mo2596hq());
        }
    }

    /* renamed from: com.kingroot.kinguser.qj$g */
    /* loaded from: classes.dex */
    public class C3471g implements InterfaceC3467c {

        /* renamed from: En */
        final AbstractC3469e f3391En;

        /* renamed from: Er */
        protected final float f3392Er;

        /* renamed from: Es */
        protected final float f3393Es;

        /* renamed from: Et */
        int f3394Et;

        public C3471g(float f, float f2) {
            this.f3391En = AbstractView$OnTouchListenerC3464qj.this.mo2591hn();
            this.f3392Er = f;
            this.f3393Es = f2;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: hq */
        public int mo2596hq() {
            return this.f3394Et;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: a */
        public boolean mo2599a(MotionEvent motionEvent) {
            if (AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3389Eq != motionEvent.getPointerId(0)) {
                AbstractView$OnTouchListenerC3464qj.this.m2604a(AbstractView$OnTouchListenerC3464qj.this.f3370Eb);
            } else {
                View view = AbstractView$OnTouchListenerC3464qj.this.f3367DY.getView();
                if (this.f3391En.mo2588a(view, motionEvent)) {
                    float f = this.f3391En.f3385Eo / (this.f3391En.f3386Ep == AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep ? this.f3392Er : this.f3393Es);
                    float f2 = this.f3391En.f3384Eg + f;
                    if ((AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep && !this.f3391En.f3386Ep && f2 <= AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3387Eg) || (!AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep && this.f3391En.f3386Ep && f2 >= AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3387Eg)) {
                        AbstractView$OnTouchListenerC3464qj.this.mo2592a(view, AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3387Eg, motionEvent);
                        AbstractView$OnTouchListenerC3464qj.this.f3373Ee.mo2605a(AbstractView$OnTouchListenerC3464qj.this, this.f3394Et, 0.0f);
                        AbstractView$OnTouchListenerC3464qj.this.m2604a(AbstractView$OnTouchListenerC3464qj.this.f3368DZ);
                    } else {
                        if (view.getParent() != null) {
                            view.getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        long eventTime = motionEvent.getEventTime() - motionEvent.getHistoricalEventTime(0);
                        if (eventTime > 0) {
                            AbstractView$OnTouchListenerC3464qj.this.f3374Ef = f / ((float) eventTime);
                        }
                        AbstractView$OnTouchListenerC3464qj.this.mo2593a(view, f2);
                        AbstractView$OnTouchListenerC3464qj.this.f3373Ee.mo2605a(AbstractView$OnTouchListenerC3464qj.this, this.f3394Et, f2);
                    }
                }
            }
            return true;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: b */
        public boolean mo2598b(MotionEvent motionEvent) {
            AbstractView$OnTouchListenerC3464qj.this.m2604a(AbstractView$OnTouchListenerC3464qj.this.f3370Eb);
            return false;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: b */
        public void mo2597b(InterfaceC3467c interfaceC3467c) {
            this.f3394Et = AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep ? 1 : 2;
            AbstractView$OnTouchListenerC3464qj.this.f3372Ed.mo2606a(AbstractView$OnTouchListenerC3464qj.this, interfaceC3467c.mo2596hq(), mo2596hq());
        }
    }

    /* renamed from: com.kingroot.kinguser.qj$b */
    /* loaded from: classes.dex */
    public class C3466b implements Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener, InterfaceC3467c {

        /* renamed from: Ei */
        protected final Interpolator f3377Ei = new DecelerateInterpolator();

        /* renamed from: Ej */
        protected final float f3378Ej;

        /* renamed from: Ek */
        protected final float f3379Ek;

        /* renamed from: El */
        protected final AbstractC3465a f3380El;

        public C3466b(float f) {
            this.f3378Ej = f;
            this.f3379Ek = 2.0f * f;
            this.f3380El = AbstractView$OnTouchListenerC3464qj.this.mo2590ho();
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: hq */
        public int mo2596hq() {
            return 3;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: b */
        public void mo2597b(InterfaceC3467c interfaceC3467c) {
            AbstractView$OnTouchListenerC3464qj.this.f3372Ed.mo2606a(AbstractView$OnTouchListenerC3464qj.this, interfaceC3467c.mo2596hq(), mo2596hq());
            Animator m2600hr = m2600hr();
            m2600hr.addListener(this);
            m2600hr.start();
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: a */
        public boolean mo2599a(MotionEvent motionEvent) {
            return true;
        }

        @Override // com.kingroot.kinguser.AbstractView$OnTouchListenerC3464qj.InterfaceC3467c
        /* renamed from: b */
        public boolean mo2598b(MotionEvent motionEvent) {
            return true;
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AbstractView$OnTouchListenerC3464qj.this.m2604a(AbstractView$OnTouchListenerC3464qj.this.f3368DZ);
        }

        @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            AbstractView$OnTouchListenerC3464qj.this.f3373Ee.mo2605a(AbstractView$OnTouchListenerC3464qj.this, 3, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        /* renamed from: hr */
        protected Animator m2600hr() {
            View view = AbstractView$OnTouchListenerC3464qj.this.f3367DY.getView();
            this.f3380El.mo2589c(view);
            if (AbstractView$OnTouchListenerC3464qj.this.f3374Ef == 0.0f || ((AbstractView$OnTouchListenerC3464qj.this.f3374Ef < 0.0f && AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep) || (AbstractView$OnTouchListenerC3464qj.this.f3374Ef > 0.0f && !AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3388Ep))) {
                return m2601e(this.f3380El.f3375Eg);
            }
            float f = (-AbstractView$OnTouchListenerC3464qj.this.f3374Ef) / this.f3378Ej;
            float f2 = f >= 0.0f ? f : 0.0f;
            float f3 = (((-AbstractView$OnTouchListenerC3464qj.this.f3374Ef) * AbstractView$OnTouchListenerC3464qj.this.f3374Ef) / this.f3379Ek) + this.f3380El.f3375Eg;
            ObjectAnimator m2602a = m2602a(view, (int) f2, f3);
            ObjectAnimator m2601e = m2601e(f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playSequentially(m2602a, m2601e);
            return animatorSet;
        }

        /* renamed from: a */
        protected ObjectAnimator m2602a(View view, int i, float f) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, this.f3380El.mProperty, f);
            ofFloat.setDuration(i);
            ofFloat.setInterpolator(this.f3377Ei);
            ofFloat.addUpdateListener(this);
            return ofFloat;
        }

        /* renamed from: e */
        protected ObjectAnimator m2601e(float f) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(AbstractView$OnTouchListenerC3464qj.this.f3367DY.getView(), this.f3380El.mProperty, AbstractView$OnTouchListenerC3464qj.this.f3366DX.f3387Eg);
            ofFloat.setDuration(Math.max((int) ((Math.abs(f) / this.f3380El.f3376Eh) * 800.0f), (int) ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION));
            ofFloat.setInterpolator(this.f3377Ei);
            ofFloat.addUpdateListener(this);
            return ofFloat;
        }
    }

    public AbstractView$OnTouchListenerC3464qj(InterfaceC3477qm interfaceC3477qm, float f, float f2, float f3) {
        this.f3367DY = interfaceC3477qm;
        this.f3370Eb = new C3466b(f);
        this.f3369Ea = new C3471g(f2, f3);
        m2603hp();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 1:
            case 3:
                return this.f3371Ec.mo2598b(motionEvent);
            case 2:
                return this.f3371Ec.mo2599a(motionEvent);
            default:
                return false;
        }
    }

    public View getView() {
        return this.f3367DY.getView();
    }

    /* renamed from: a */
    protected void m2604a(InterfaceC3467c interfaceC3467c) {
        InterfaceC3467c interfaceC3467c2 = this.f3371Ec;
        this.f3371Ec = interfaceC3467c;
        this.f3371Ec.mo2597b(interfaceC3467c2);
    }

    /* renamed from: hp */
    protected void m2603hp() {
        getView().setOnTouchListener(this);
        getView().setOverScrollMode(2);
    }
}
