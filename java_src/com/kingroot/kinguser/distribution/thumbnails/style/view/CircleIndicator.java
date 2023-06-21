package com.kingroot.kinguser.distribution.thumbnails.style.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.GradientDrawable;
import android.support.p004v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.android.animation.Animator;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.kingroot.kinguser.afs;
/* loaded from: classes.dex */
public class CircleIndicator extends LinearLayout {
    private ViewPager aHW;
    private GradientDrawable aHX;
    private Animator aHY;
    private Animator aHZ;
    private Animator aIa;
    private Animator aIb;
    private int aIc;
    private int aId;
    private int aIe;
    private DataSetObserver aIf;
    private int mIndicatorHeight;
    private final ViewPager.OnPageChangeListener mInternalPageChangeListener;

    public CircleIndicator(Context context) {
        this(context, null);
    }

    public CircleIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aIc = -1;
        this.aId = -1;
        this.mIndicatorHeight = -1;
        this.aIe = -1;
        this.mInternalPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.CircleIndicator.1
            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                View childAt;
                if (CircleIndicator.this.aHW.getAdapter() != null && CircleIndicator.this.aHW.getAdapter().getCount() > 0) {
                    if (CircleIndicator.this.aHZ.isRunning()) {
                        CircleIndicator.this.aHZ.end();
                        CircleIndicator.this.aHZ.cancel();
                    }
                    if (CircleIndicator.this.aHY.isRunning()) {
                        CircleIndicator.this.aHY.end();
                        CircleIndicator.this.aHY.cancel();
                    }
                    if (CircleIndicator.this.aIe >= 0 && (childAt = CircleIndicator.this.getChildAt(CircleIndicator.this.aIe)) != null) {
                        childAt.setBackgroundDrawable(CircleIndicator.this.aHX);
                        CircleIndicator.this.aHZ.setTarget(childAt);
                        CircleIndicator.this.aHZ.start();
                    }
                    View childAt2 = CircleIndicator.this.getChildAt(i);
                    if (childAt2 != null) {
                        childAt2.setBackgroundDrawable(CircleIndicator.this.aHX);
                        CircleIndicator.this.aHY.setTarget(childAt2);
                        CircleIndicator.this.aHY.start();
                    }
                    CircleIndicator.this.aIe = i;
                }
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        };
        this.aIf = new DataSetObserver() { // from class: com.kingroot.kinguser.distribution.thumbnails.style.view.CircleIndicator.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                int count;
                super.onChanged();
                if (CircleIndicator.this.aHW != null && (count = CircleIndicator.this.aHW.getAdapter().getCount()) != CircleIndicator.this.getChildCount()) {
                    if (CircleIndicator.this.aIe < count) {
                        CircleIndicator.this.aIe = CircleIndicator.this.aHW.getCurrentItem();
                    } else {
                        CircleIndicator.this.aIe = -1;
                    }
                    CircleIndicator.this.m4020Ls();
                }
            }
        };
        m4012d(context, attributeSet);
    }

    /* renamed from: d */
    private void m4012d(Context context, AttributeSet attributeSet) {
        this.aHX = new GradientDrawable();
        this.aHX.setShape(1);
        this.aHX.setColor(-1);
        m4008g(context, attributeSet);
        m4016aZ(context);
    }

    /* renamed from: g */
    private void m4008g(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.CircleIndicator);
            this.aId = obtainStyledAttributes.getDimensionPixelSize(0, -1);
            this.mIndicatorHeight = obtainStyledAttributes.getDimensionPixelSize(1, -1);
            this.aIc = obtainStyledAttributes.getDimensionPixelSize(2, -1);
            setOrientation(obtainStyledAttributes.getInt(3, -1) != 1 ? 0 : 1);
            int i = obtainStyledAttributes.getInt(4, -1);
            if (i < 0) {
                i = 17;
            }
            setGravity(i);
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: aZ */
    private void m4016aZ(Context context) {
        this.aId = this.aId < 0 ? m4007r(5.0f) : this.aId;
        this.mIndicatorHeight = this.mIndicatorHeight < 0 ? m4007r(5.0f) : this.mIndicatorHeight;
        this.aIc = this.aIc < 0 ? m4007r(5.0f) : this.aIc;
        this.aHY = m4021Lr();
        this.aIa = m4021Lr();
        this.aIa.setDuration(0L);
        this.aHZ = m4014ba(context);
        this.aIb = m4014ba(context);
        this.aIb.setDuration(0L);
    }

    /* renamed from: Lr */
    private Animator m4021Lr() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object) null, "alpha", 0.5f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object) null, "scaleX", 1.0f, 1.8f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object) null, "scaleY", 1.0f, 1.8f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ofFloat).with(ofFloat2).with(ofFloat3);
        return animatorSet;
    }

    /* renamed from: ba */
    private Animator m4014ba(Context context) {
        Animator m4021Lr = m4021Lr();
        m4021Lr.setInterpolator(new animationInterpolatorC2983a());
        return m4021Lr;
    }

    public void setViewPager(ViewPager viewPager) {
        this.aHW = viewPager;
        if (this.aHW != null && this.aHW.getAdapter() != null) {
            this.aIe = -1;
            m4020Ls();
            this.aHW.removeOnPageChangeListener(this.mInternalPageChangeListener);
            this.aHW.addOnPageChangeListener(this.mInternalPageChangeListener);
            this.mInternalPageChangeListener.onPageSelected(this.aHW.getCurrentItem());
        }
    }

    public DataSetObserver getDataSetObserver() {
        return this.aIf;
    }

    @Deprecated
    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        if (this.aHW == null) {
            throw new NullPointerException("can not find Viewpager , setViewPager first");
        }
        this.aHW.removeOnPageChangeListener(onPageChangeListener);
        this.aHW.addOnPageChangeListener(onPageChangeListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ls */
    public void m4020Ls() {
        removeAllViews();
        int count = this.aHW.getAdapter().getCount();
        if (count > 0) {
            int currentItem = this.aHW.getCurrentItem();
            int orientation = getOrientation();
            for (int i = 0; i < count; i++) {
                if (currentItem == i) {
                    m4019a(orientation, this.aIa);
                } else {
                    m4019a(orientation, this.aIb);
                }
            }
        }
    }

    /* renamed from: a */
    private void m4019a(int i, Animator animator) {
        if (animator.isRunning()) {
            animator.end();
            animator.cancel();
        }
        View view = new View(getContext());
        view.setBackgroundDrawable(this.aHX);
        addView(view, this.aId, this.mIndicatorHeight);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        if (i == 0) {
            layoutParams.leftMargin = this.aIc;
            layoutParams.rightMargin = this.aIc;
        } else {
            layoutParams.topMargin = this.aIc;
            layoutParams.bottomMargin = this.aIc;
        }
        view.setLayoutParams(layoutParams);
        animator.setTarget(view);
        animator.start();
    }

    /* renamed from: r */
    public int m4007r(float f) {
        return (int) ((getResources().getDisplayMetrics().density * f) + 0.5f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.distribution.thumbnails.style.view.CircleIndicator$a  reason: invalid class name */
    /* loaded from: classes.dex */
    public class animationInterpolatorC2983a implements Interpolator {
        private animationInterpolatorC2983a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return Math.abs(1.0f - f);
        }
    }
}
