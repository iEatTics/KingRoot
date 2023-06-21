package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.Transformation;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
/* loaded from: classes.dex */
public class bhk {
    /* renamed from: c */
    public static void m6990c(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        m6999a(view, 300, animatorListenerAdapter);
    }

    /* renamed from: a */
    public static void m6999a(View view, int i, AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f);
            ofFloat.setDuration(i);
            ofFloat.setInterpolator(new AccelerateInterpolator());
            ofFloat.addListener(new C2286b(animatorListenerAdapter, view));
            ofFloat.start();
        }
    }

    /* renamed from: d */
    public static void m6989d(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        m6998a(view, 300L, animatorListenerAdapter);
    }

    /* renamed from: a */
    public static void m6998a(View view, long j, AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            view.setVisibility(0);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
            ofFloat.setDuration(j);
            ofFloat.setInterpolator(new DecelerateInterpolator());
            ofFloat.addListener(new C2286b(animatorListenerAdapter, view));
            ofFloat.start();
        }
    }

    /* renamed from: b */
    public static void m6993b(View view, int i, AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", 0.0f, 1.0f);
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", 0.0f, 1.0f);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofFloat, ofFloat2);
            animatorSet.setDuration(i);
            animatorSet.setInterpolator(new DecelerateInterpolator());
            animatorSet.addListener(new C2286b(animatorListenerAdapter, view));
            animatorSet.start();
        }
    }

    /* renamed from: b */
    public static void m6992b(View view, AnimatorListenerAdapter animatorListenerAdapter) {
        m6993b(view, 500, animatorListenerAdapter);
    }

    /* renamed from: a */
    public static void m6996a(View view, AnimatorListenerAdapter animatorListenerAdapter, float f, float f2) {
        if (view != null) {
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", f, f2);
            ofFloat.setDuration(300L);
            ofFloat.setInterpolator(new AccelerateInterpolator());
            ofFloat.addListener(new C2286b(animatorListenerAdapter, view));
            ofFloat.start();
        }
    }

    /* renamed from: c */
    public static void m6991c(final View view, final int i, final AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bhk.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "alpha", 0.2f, 1.0f);
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationY", view.getMeasuredHeight() * 0.2f, 0.0f);
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.playTogether(ofFloat, ofFloat2);
                    animatorSet.setDuration(i);
                    animatorSet.setInterpolator(new DecelerateInterpolator());
                    animatorSet.addListener(new C2286b(animatorListenerAdapter, view));
                    animatorSet.start();
                    return true;
                }
            });
        }
    }

    /* renamed from: e */
    public static void m6988e(final View view, final AnimatorListenerAdapter animatorListenerAdapter) {
        if (view != null) {
            view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bhk.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    view.getViewTreeObserver().removeOnPreDrawListener(this);
                    ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationY", view.getMeasuredHeight(), 0.0f);
                    ofFloat.setDuration(300L);
                    ofFloat.setInterpolator(new DecelerateInterpolator());
                    ofFloat.addListener(new C2286b(animatorListenerAdapter, view));
                    ofFloat.start();
                    return true;
                }
            });
        }
    }

    /* renamed from: b */
    public static void m6994b(View view, float f, float f2, long j) {
        RotateAnimation rotateAnimation = new RotateAnimation(f, f2, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setFillAfter(true);
        rotateAnimation.setDuration(j);
        view.startAnimation(rotateAnimation);
    }

    /* renamed from: a */
    public static void m6997a(View view, long j, boolean z) {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        if (z) {
            rotateAnimation.setRepeatCount(-1);
        }
        rotateAnimation.setInterpolator(new LinearInterpolator());
        rotateAnimation.setFillAfter(true);
        rotateAnimation.setDuration(j);
        view.setVisibility(0);
        view.startAnimation(rotateAnimation);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bhk$b */
    /* loaded from: classes.dex */
    public static class C2286b extends AnimatorListenerAdapter {
        private AnimatorListenerAdapter bqS;
        private View view;

        public C2286b(AnimatorListenerAdapter animatorListenerAdapter, View view) {
            this.bqS = animatorListenerAdapter;
            this.view = view;
        }

        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.view != null) {
                this.view.setVisibility(0);
            }
            if (this.bqS != null) {
                this.bqS.onAnimationStart(animator);
            }
        }

        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.view.clearAnimation();
            if (this.bqS != null) {
                this.bqS.onAnimationEnd(animator);
            }
        }

        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.bqS != null) {
                this.bqS.onAnimationCancel(animator);
            }
        }

        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            if (this.bqS != null) {
                this.bqS.onAnimationRepeat(animator);
            }
        }
    }

    /* renamed from: a */
    public static void m6995a(final View view, final boolean z, animationAnimation$AnimationListenerC2285a animationanimation_animationlistenerc2285a) {
        view.measure(-1, -2);
        final int measuredHeight = view.getMeasuredHeight();
        Animation animation = new Animation() { // from class: com.kingroot.kinguser.bhk.3
            @Override // android.view.animation.Animation
            protected void applyTransformation(float f, Transformation transformation) {
                super.applyTransformation(f, transformation);
                if (z) {
                    view.getLayoutParams().height = (int) (measuredHeight * f);
                } else {
                    view.getLayoutParams().height = (int) (measuredHeight - (measuredHeight * f));
                }
                view.requestLayout();
            }

            @Override // android.view.animation.Animation
            public boolean willChangeBounds() {
                return true;
            }
        };
        animation.setAnimationListener(animationanimation_animationlistenerc2285a);
        animation.setDuration(200L);
        view.startAnimation(animation);
    }

    /* renamed from: com.kingroot.kinguser.bhk$a  reason: invalid class name */
    /* loaded from: classes.dex */
    public static class animationAnimation$AnimationListenerC2285a implements Animation.AnimationListener {
        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationEnd(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationRepeat(Animation animation) {
        }

        @Override // android.view.animation.Animation.AnimationListener
        public void onAnimationStart(Animation animation) {
        }
    }
}
