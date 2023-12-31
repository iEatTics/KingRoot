package android.support.p004v4.animation;

import android.os.Build;
import android.view.View;
/* renamed from: android.support.v4.animation.AnimatorCompatHelper */
/* loaded from: classes.dex */
public final class AnimatorCompatHelper {
    private static final AnimatorProvider IMPL;

    static {
        if (Build.VERSION.SDK_INT >= 12) {
            IMPL = new HoneycombMr1AnimatorCompatProvider();
        } else {
            IMPL = new DonutAnimatorCompatProvider();
        }
    }

    public static ValueAnimatorCompat emptyValueAnimator() {
        return IMPL.emptyValueAnimator();
    }

    private AnimatorCompatHelper() {
    }

    public static void clearInterpolator(View view) {
        IMPL.clearInterpolator(view);
    }
}
