package com.kingcore.uilib;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.afs;
import java.lang.reflect.Field;
/* loaded from: classes.dex */
public class ExpandableTextView extends TextView {

    /* renamed from: AF */
    private InterfaceC0453a f534AF;

    /* renamed from: AG */
    private Interpolator f535AG;

    /* renamed from: AH */
    private Interpolator f536AH;

    /* renamed from: AI */
    private final int f537AI;

    /* renamed from: AJ */
    private long f538AJ;

    /* renamed from: AK */
    private boolean f539AK;

    /* renamed from: AL */
    private int f540AL;
    private boolean mAnimating;

    /* renamed from: com.kingcore.uilib.ExpandableTextView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0453a {
        /* renamed from: b */
        void mo10225b(ExpandableTextView expandableTextView);

        /* renamed from: c */
        void mo10224c(ExpandableTextView expandableTextView);
    }

    public ExpandableTextView(Context context) {
        this(context, null);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray typedArray = null;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, afs.C0826a.ExpandableTextView, i, 0);
            this.f538AJ = typedArray.getInt(0, 100);
            typedArray.recycle();
            this.f537AI = getMaxLines();
            setEllipsize(TextUtils.TruncateAt.END);
            this.f535AG = new AccelerateDecelerateInterpolator();
            this.f536AH = new AccelerateDecelerateInterpolator();
            if (typedArray != null) {
                try {
                    typedArray.recycle();
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
            if (typedArray != null) {
                try {
                    typedArray.recycle();
                } catch (Throwable th3) {
                }
            }
            throw th2;
        }
    }

    @Override // android.widget.TextView
    public int getMaxLines() {
        if (abd.m12839qb() >= 16) {
            return super.getMaxLines();
        }
        try {
            Field field = TextView.class.getField("mMaxMode");
            field.setAccessible(true);
            Field field2 = TextView.class.getField("mMaximum");
            field2.setAccessible(true);
            int intValue = ((Integer) field.get(this)).intValue();
            int intValue2 = ((Integer) field2.get(this)).intValue();
            if (intValue != 1) {
                return -1;
            }
            return intValue2;
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: gF */
    public boolean m13586gF() {
        return this.f539AK ? m13584gH() : m13585gG();
    }

    /* renamed from: gG */
    public boolean m13585gG() {
        if (this.f539AK || this.mAnimating || this.f537AI < 0) {
            return false;
        }
        this.mAnimating = true;
        if (this.f534AF != null) {
            this.f534AF.mo10225b(this);
        }
        measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        this.f540AL = getMeasuredHeight();
        setMaxLines(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        measure(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        ValueAnimator ofInt = ValueAnimator.ofInt(this.f540AL, getMeasuredHeight());
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.ExpandableTextView.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewGroup.LayoutParams layoutParams = ExpandableTextView.this.getLayoutParams();
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ExpandableTextView.this.setLayoutParams(layoutParams);
            }
        });
        ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.ExpandableTextView.2
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ViewGroup.LayoutParams layoutParams = ExpandableTextView.this.getLayoutParams();
                layoutParams.height = -2;
                ExpandableTextView.this.setLayoutParams(layoutParams);
                ExpandableTextView.this.f539AK = true;
                ExpandableTextView.this.mAnimating = false;
            }
        });
        ofInt.setInterpolator(this.f535AG);
        ofInt.setDuration(this.f538AJ).start();
        return true;
    }

    /* renamed from: gH */
    public boolean m13584gH() {
        if (!this.f539AK || this.mAnimating || this.f537AI < 0) {
            return false;
        }
        this.mAnimating = true;
        if (this.f534AF != null) {
            this.f534AF.mo10224c(this);
        }
        ValueAnimator ofInt = ValueAnimator.ofInt(getMeasuredHeight(), this.f540AL);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.ExpandableTextView.3
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                ViewGroup.LayoutParams layoutParams = ExpandableTextView.this.getLayoutParams();
                layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ExpandableTextView.this.setLayoutParams(layoutParams);
            }
        });
        ofInt.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.ExpandableTextView.4
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ExpandableTextView.this.setMaxLines(ExpandableTextView.this.f537AI);
                ViewGroup.LayoutParams layoutParams = ExpandableTextView.this.getLayoutParams();
                layoutParams.height = -2;
                ExpandableTextView.this.setLayoutParams(layoutParams);
                ExpandableTextView.this.f539AK = false;
                ExpandableTextView.this.mAnimating = false;
            }
        });
        ofInt.setInterpolator(this.f536AH);
        ofInt.setDuration(this.f538AJ).start();
        return true;
    }

    public void setAnimationDuration(long j) {
        this.f538AJ = j;
    }

    public void setExpandListener(InterfaceC0453a interfaceC0453a) {
        this.f534AF = interfaceC0453a;
    }

    public InterfaceC0453a getOnExpandListener() {
        return this.f534AF;
    }

    public void setInterpolator(Interpolator interpolator) {
        this.f535AG = interpolator;
        this.f536AH = interpolator;
    }

    public void setExpandInterpolator(Interpolator interpolator) {
        this.f535AG = interpolator;
    }

    public TimeInterpolator getExpandInterpolator() {
        return this.f535AG;
    }

    public void setCollapseInterpolator(Interpolator interpolator) {
        this.f536AH = interpolator;
    }

    public TimeInterpolator getCollapseInterpolator() {
        return this.f536AH;
    }

    /* renamed from: gI */
    public boolean m13583gI() {
        return this.f539AK;
    }
}
