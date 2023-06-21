package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Color;
import android.support.p004v4.graphics.ColorUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.android.animation.Animator;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.android.animation.ValueAnimator;
/* loaded from: classes.dex */
public class apn implements apl {
    @Override // com.kingroot.kinguser.apl
    /* renamed from: a */
    public Animator mo9763a(View view, View view2) {
        Context context = view2.getContext();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int m9762aY = displayMetrics.heightPixels - m9762aY(context);
        apm m9764v = apm.m9764v(view);
        m9764v.getX();
        int y = m9764v.getY() - m9762aY(context);
        float m9770Lq = (i * 1.0f) / m9764v.m9770Lq();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view2, "scaleX", bhi.m7003J(view2).getScaleX(), m9770Lq);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view2, "scaleY", bhi.m7003J(view2).getScaleY(), m9770Lq);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view2, "x", bhi.m7003J(view).getTranslationX(), (i - m9764v.getWidth()) / 2);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view2, "y", bhi.m7003J(view).getTranslationY(), (m9762aY - m9764v.getHeight()) / 2);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view2, "alpha", 1.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat3, ofFloat4, ofFloat, ofFloat2, ofFloat5);
        animatorSet.setDuration(100L);
        return animatorSet;
    }

    @Override // com.kingroot.kinguser.apl
    /* renamed from: b */
    public Animator mo9761b(View view, View view2) {
        apm m9764v = apm.m9764v(view2);
        float m9770Lq = (m9764v.m9770Lq() * 1.0f) / view.getWidth();
        float height = (view2.getHeight() * 1.0f) / view.getHeight();
        float width = ((view.getWidth() - (view.getWidth() * m9770Lq)) * 0.5f) - m9764v.m9771Lp();
        float height2 = ((view.getHeight() - (height * view.getHeight())) * 0.5f) - (m9764v.getY() - m9762aY(view.getContext()));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "scaleX", bhi.m7003J(view).getScaleX(), m9770Lq);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "scaleY", bhi.m7003J(view).getScaleY(), m9770Lq);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(view, "x", bhi.m7003J(view).getTranslationX(), -width);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(view, "y", bhi.m7003J(view).getTranslationY(), -height2);
        ObjectAnimator ofFloat5 = ObjectAnimator.ofFloat(view, "alpha", 1.0f, 0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2).with(ofFloat3).with(ofFloat4).with(ofFloat5);
        animatorSet.setDuration(300L);
        return animatorSet;
    }

    @Override // com.kingroot.kinguser.apl
    /* renamed from: u */
    public Animator mo9759u(final View view) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.setDuration(350L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.apn.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float animatedFraction = valueAnimator.getAnimatedFraction();
                float f = (0.5f * animatedFraction) + 1.0f;
                bhi.m7003J(view).setScaleX(f);
                bhi.m7003J(view).setScaleY(f);
                bhi.m7003J(view).setAlpha(1.0f - animatedFraction);
            }
        });
        return ofFloat;
    }

    @Override // com.kingroot.kinguser.apl
    /* renamed from: k */
    public Animator mo9760k(final View view, final int i) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(1.0f - (Color.alpha(i) / 255.0f), 1.0f);
        ofFloat.setInterpolator(new AccelerateInterpolator());
        ofFloat.setDuration(350L);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.apn.2
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                view.setBackgroundColor(ColorUtils.setAlphaComponent(i, (int) (255.0f * (1.0f - Float.parseFloat(valueAnimator.getAnimatedValue().toString())))));
            }
        });
        return ofFloat;
    }

    /* renamed from: aY */
    private int m9762aY(Context context) {
        try {
            Class<?> cls = Class.forName("com.android.internal.R$dimen");
            return context.getResources().getDimensionPixelSize(((Integer) cls.getField("status_bar_height").get(cls.newInstance())).intValue());
        } catch (Exception e) {
            return 0;
        }
    }
}
