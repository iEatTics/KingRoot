package android.support.p004v4.view.animation;

import android.view.animation.Interpolator;
/* renamed from: android.support.v4.view.animation.LookupTableInterpolator */
/* loaded from: classes.dex */
abstract class LookupTableInterpolator implements Interpolator {
    private final float mStepSize;
    private final float[] mValues;

    public LookupTableInterpolator(float[] fArr) {
        this.mValues = fArr;
        this.mStepSize = 1.0f / (this.mValues.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) ((this.mValues.length - 1) * f), this.mValues.length - 2);
        float f2 = (f - (min * this.mStepSize)) / this.mStepSize;
        return ((this.mValues[min + 1] - this.mValues[min]) * f2) + this.mValues[min];
    }
}
