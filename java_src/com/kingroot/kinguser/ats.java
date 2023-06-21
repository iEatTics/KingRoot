package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import java.util.Random;
/* loaded from: classes.dex */
public class ats {
    public boolean aQc;
    public String mAppName;
    public Drawable mIcon;
    public String adZ = "";
    public AnimatorSet aQd = null;
    public int mPos = -1;

    /* renamed from: w */
    public void m9143w(View view) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "rotation", m9144Pw());
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(1100L);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "translationX", m9144Pw());
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setDuration(1100L);
        this.aQd = new AnimatorSet();
        this.aQd.playTogether(ofFloat, ofFloat2);
        this.aQd.start();
    }

    /* renamed from: Pw */
    private float[] m9144Pw() {
        Random random = new Random();
        float[] fArr = new float[15];
        for (int i = 0; i < 14; i++) {
            if (i % 2 == 0) {
                fArr[i] = (-4.0f) * random.nextFloat();
            } else {
                fArr[i] = 4.0f * random.nextFloat();
            }
        }
        fArr[14] = 0.0f;
        return fArr;
    }

    public String toString() {
        return "[mPkgName: " + this.adZ + ", isAdd: " + this.aQc + ", mAppName: " + this.mAppName + "]";
    }
}
