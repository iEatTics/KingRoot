package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import com.android.animation.AnimatorSet;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3850wq;
/* loaded from: classes.dex */
public class bhj {

    /* renamed from: com.kingroot.kinguser.bhj$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2281a {
        /* renamed from: b */
        void mo1504b(View view, float f);
    }

    /* renamed from: a */
    public static AnimatorSet m7000a(C3850wq.C3855a[] c3855aArr, float[] fArr, float[] fArr2, long j, final InterfaceC2281a interfaceC2281a) {
        if (c3855aArr.length != fArr.length || fArr.length != fArr2.length || interfaceC2281a == null) {
            return null;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        ValueAnimator[] valueAnimatorArr = new ValueAnimator[c3855aArr.length];
        for (int i = 0; i < c3855aArr.length; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr[i], fArr2[i]);
            valueAnimatorArr[i] = ofFloat;
            final ViewGroup viewGroup = c3855aArr[i].f3904Ns;
            ofFloat.setDuration(j);
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.bhj.1
                @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    InterfaceC2281a.this.mo1504b(viewGroup, ((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
        }
        animatorSet.playTogether(valueAnimatorArr);
        animatorSet.setInterpolator(new DecelerateInterpolator());
        return animatorSet;
    }
}
