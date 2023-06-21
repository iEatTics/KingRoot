package com.kingroot.kinguser;

import android.graphics.Point;
import android.widget.ImageView;
import com.android.animation.Animator;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.android.animation.TypeEvaluator;
import com.android.animation.ValueAnimator;
import com.kingroot.common.app.KApplication;
/* renamed from: com.kingroot.kinguser.qb */
/* loaded from: classes.dex */
public class C3450qb {

    /* renamed from: zz */
    private static int f3348zz = 600;

    /* renamed from: a */
    private static ValueAnimator m2611a(final ImageView imageView, Point point, Point point2) {
        if (point == null || point2 == null) {
            return null;
        }
        ValueAnimator ofObject = ValueAnimator.ofObject(new C3452a(new Point((point.x + point2.x) / 2, point.y - bgk.m7111c(KApplication.m13453ge(), 100.0f))), point, point2);
        ofObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.qb.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                Point point3 = (Point) valueAnimator.getAnimatedValue();
                bhi.m7003J(imageView).setTranslationX(point3.x);
                bhi.m7003J(imageView).setTranslationY(point3.y);
            }
        });
        ofObject.setTarget(imageView);
        ofObject.setDuration(f3348zz);
        return ofObject;
    }

    /* renamed from: a */
    public static AnimatorSet m2610a(ImageView imageView, Point point, Point point2, Animator.AnimatorListener animatorListener) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView, "alpha", 1.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(imageView, "scaleX", 1.0f, 0.5f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(imageView, "scaleY", 1.0f, 0.5f);
        animationInterpolatorC3896xr animationinterpolatorc3896xr = new animationInterpolatorC3896xr(EnumC3895xq.QUINT_IN);
        ofFloat2.setInterpolator(animationinterpolatorc3896xr);
        ofFloat3.setInterpolator(animationinterpolatorc3896xr);
        ValueAnimator m2611a = m2611a(imageView, point, point2);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2, ofFloat3, m2611a);
        animatorSet.setDuration(f3348zz);
        animatorSet.setTarget(imageView);
        animatorSet.addListener(animatorListener);
        return animatorSet;
    }

    /* renamed from: com.kingroot.kinguser.qb$a */
    /* loaded from: classes.dex */
    public static class C3452a implements TypeEvaluator<Point> {

        /* renamed from: zB */
        private Point f3350zB;

        public C3452a(Point point) {
            this.f3350zB = point;
        }

        @Override // com.android.animation.TypeEvaluator
        /* renamed from: a */
        public Point evaluate(float f, Point point, Point point2) {
            return new Point((int) (((1.0f - f) * (1.0f - f) * point.x) + (2.0f * f * (1.0f - f) * this.f3350zB.x) + (f * f * point2.x)), (int) (((1.0f - f) * (1.0f - f) * point.y) + (2.0f * f * (1.0f - f) * this.f3350zB.y) + (f * f * point2.y)));
        }
    }
}
