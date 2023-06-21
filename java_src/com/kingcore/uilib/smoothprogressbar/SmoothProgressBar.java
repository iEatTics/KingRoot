package com.kingcore.uilib.smoothprogressbar;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import com.kingroot.kinguser.C3485qr;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class SmoothProgressBar extends ProgressBar {
    public SmoothProgressBar(Context context) {
        this(context, null);
    }

    public SmoothProgressBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.spbStyle);
    }

    public SmoothProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        AccelerateInterpolator accelerateInterpolator;
        if (isInEditMode()) {
            setIndeterminateDrawable(new C3485qr.C3487a(context, true).m2537hy());
            return;
        }
        Resources resources = context.getResources();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.SmoothProgressBar, i, 0);
        int color = obtainStyledAttributes.getColor(1, resources.getColor(R.color.spb_default_color));
        int integer = obtainStyledAttributes.getInteger(4, resources.getInteger(R.integer.spb_default_sections_count));
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(3, resources.getDimensionPixelSize(R.dimen.spb_default_stroke_separator_length));
        float dimension = obtainStyledAttributes.getDimension(2, resources.getDimension(R.dimen.spb_default_stroke_width));
        float f = obtainStyledAttributes.getFloat(5, Float.parseFloat(resources.getString(R.string.spb_default_speed)));
        float f2 = obtainStyledAttributes.getFloat(6, f);
        float f3 = obtainStyledAttributes.getFloat(7, f);
        int integer2 = obtainStyledAttributes.getInteger(8, -1);
        boolean z = obtainStyledAttributes.getBoolean(9, resources.getBoolean(R.bool.spb_default_reversed));
        boolean z2 = obtainStyledAttributes.getBoolean(10, resources.getBoolean(R.bool.spb_default_mirror_mode));
        int resourceId = obtainStyledAttributes.getResourceId(11, 0);
        boolean z3 = obtainStyledAttributes.getBoolean(12, resources.getBoolean(R.bool.spb_default_progressiveStart_activated));
        Drawable drawable = obtainStyledAttributes.getDrawable(13);
        boolean z4 = obtainStyledAttributes.getBoolean(14, false);
        boolean z5 = obtainStyledAttributes.getBoolean(15, false);
        obtainStyledAttributes.recycle();
        Interpolator interpolator = integer2 == -1 ? getInterpolator() : null;
        if (interpolator == null) {
            switch (integer2) {
                case 1:
                    accelerateInterpolator = new LinearInterpolator();
                    break;
                case 2:
                    accelerateInterpolator = new AccelerateDecelerateInterpolator();
                    break;
                case 3:
                    accelerateInterpolator = new DecelerateInterpolator();
                    break;
                default:
                    accelerateInterpolator = new AccelerateInterpolator();
                    break;
            }
        } else {
            accelerateInterpolator = interpolator;
        }
        int[] intArray = resourceId != 0 ? resources.getIntArray(resourceId) : null;
        C3485qr.C3487a m2545D = new C3485qr.C3487a(context).m2534j(f).m2533k(f2).m2532l(f3).m2543a(accelerateInterpolator).m2542aM(integer).m2541aN(dimensionPixelSize).m2535i(dimension).m2548A(z).m2547B(z2).m2546C(z3).m2545D(z5);
        if (drawable != null) {
            m2545D.m2544a(drawable);
        }
        if (z4) {
            m2545D.m2536hz();
        }
        if (intArray != null && intArray.length > 0) {
            m2545D.m2538b(intArray);
        } else {
            m2545D.m2540aO(color);
        }
        setIndeterminateDrawable(m2545D.m2537hy());
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (isIndeterminate() && (getIndeterminateDrawable() instanceof C3485qr) && !((C3485qr) getIndeterminateDrawable()).isRunning()) {
            getIndeterminateDrawable().draw(canvas);
        }
    }

    /* renamed from: hu */
    private C3485qr m13457hu() {
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable == null || !(indeterminateDrawable instanceof C3485qr)) {
            throw new RuntimeException("The drawable is not a SmoothProgressDrawable");
        }
        return (C3485qr) indeterminateDrawable;
    }

    @Override // android.widget.ProgressBar
    public void setInterpolator(Interpolator interpolator) {
        super.setInterpolator(interpolator);
        Drawable indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null && (indeterminateDrawable instanceof C3485qr)) {
            ((C3485qr) indeterminateDrawable).setInterpolator(interpolator);
        }
    }

    public void setSmoothProgressDrawableInterpolator(Interpolator interpolator) {
        m13457hu().setInterpolator(interpolator);
    }

    public void setSmoothProgressDrawableColors(int[] iArr) {
        m13457hu().setColors(iArr);
    }

    public void setSmoothProgressDrawableColor(int i) {
        m13457hu().setColor(i);
    }

    public void setSmoothProgressDrawableSpeed(float f) {
        m13457hu().setSpeed(f);
    }

    public void setSmoothProgressDrawableProgressiveStartSpeed(float f) {
        m13457hu().m2557g(f);
    }

    public void setSmoothProgressDrawableProgressiveStopSpeed(float f) {
        m13457hu().m2555h(f);
    }

    public void setSmoothProgressDrawableSectionsCount(int i) {
        m13457hu().m2571aG(i);
    }

    public void setSmoothProgressDrawableSeparatorLength(int i) {
        m13457hu().m2570aH(i);
    }

    public void setSmoothProgressDrawableStrokeWidth(float f) {
        m13457hu().setStrokeWidth(f);
    }

    public void setSmoothProgressDrawableReversed(boolean z) {
        m13457hu().m2551x(z);
    }

    public void setSmoothProgressDrawableMirrorMode(boolean z) {
        m13457hu().m2550y(z);
    }

    public void setProgressiveStartActivated(boolean z) {
        m13457hu().setProgressiveStartActivated(z);
    }

    public void setSmoothProgressDrawableCallbacks(C3485qr.InterfaceC3488b interfaceC3488b) {
        m13457hu().m2575a(interfaceC3488b);
    }

    public void setSmoothProgressDrawableBackgroundDrawable(Drawable drawable) {
        m13457hu().setBackgroundDrawable(drawable);
    }

    public void setSmoothProgressDrawableUseGradients(boolean z) {
        m13457hu().m2549z(z);
    }
}
