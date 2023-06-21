package com.kingroot.kingmaster.baseui.widget;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ScaleLayout extends ViewGroup implements Animation.AnimationListener {
    private ScrollToScaleBase acA;
    private ViewGroup acB;
    private int acC;
    private int acD;
    private Animation acE;
    private C0589a acF;
    private boolean acG;
    private boolean acH;
    private boolean mAnimating;
    private boolean mIsBeingDragged;
    private int mLastMotionY;
    private int mMinHeight;
    private int mTouchSlop;

    public ScaleLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.acF = new C0589a(this);
        this.acF.setDuration(context.getResources().getInteger(17694721));
        this.acE = AnimationUtils.loadAnimation(context, R.anim.fade_in);
        this.acD = Integer.MIN_VALUE;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = this.acD + i2;
        this.acB.layout(i, i2, i3, i5);
        this.acA.layout(i, i5, i3, i4);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.acB == null;
        if (z) {
            this.acB = (ViewGroup) getChildAt(0);
            this.acA = (ScrollToScaleBase) getChildAt(1);
            if (this.acH) {
                this.acB.getChildAt(1).getLayoutParams().height = this.acD;
                this.acB.getChildAt(1).setVisibility(0);
            }
        }
        measureChild(getChildAt(0), i, i2);
        if (z) {
            this.acC = this.acB.getMeasuredHeight();
            this.mMinHeight = (int) (this.acC * 0.3f);
            if (this.acD == Integer.MIN_VALUE) {
                this.acD = this.acC;
            }
        }
        int size = View.MeasureSpec.getSize(i2) - this.mMinHeight;
        switch (View.MeasureSpec.getMode(i2)) {
            case Integer.MIN_VALUE:
                i2 = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
                break;
            case 1073741824:
                i2 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                break;
        }
        measureChild(this.acA, i, i2);
        setMeasuredDimension(View.MeasureSpec.getSize(i), this.mMinHeight + this.acA.getMeasuredHeight());
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (this.mAnimating || (actionMasked == 2 && this.mIsBeingDragged)) {
            return true;
        }
        switch (actionMasked) {
            case 0:
                this.mLastMotionY = (int) motionEvent.getY();
                break;
            case 1:
            case 3:
                this.mIsBeingDragged = false;
                break;
            case 2:
                int y = (int) motionEvent.getY();
                int i = y - this.mLastMotionY;
                if (!this.mIsBeingDragged && !m13114cs(i)) {
                    return false;
                }
                if (Math.abs(i) > this.mTouchSlop) {
                    m13113sk();
                    this.mLastMotionY = y;
                    ViewParent parent = getParent();
                    if (parent != null) {
                        parent.requestDisallowInterceptTouchEvent(true);
                        break;
                    }
                }
                break;
            case 5:
                this.mLastMotionY = (int) motionEvent.getY();
                break;
        }
        return this.mIsBeingDragged;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!this.mAnimating) {
            switch (actionMasked) {
                case 0:
                    this.mLastMotionY = (int) motionEvent.getY();
                    break;
                case 1:
                case 3:
                    if (this.mIsBeingDragged) {
                        endDrag();
                        break;
                    }
                    break;
                case 2:
                    int y = (int) motionEvent.getY();
                    int i = this.mLastMotionY - y;
                    if (!this.mIsBeingDragged && Math.abs(i) > this.mTouchSlop) {
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                        m13113sk();
                        i = i > 0 ? i - this.mTouchSlop : i + this.mTouchSlop;
                    }
                    if (this.mIsBeingDragged) {
                        this.acG = y > this.mLastMotionY;
                        this.mLastMotionY = y;
                        m13115cr(i);
                        break;
                    }
                    break;
            }
        }
        return true;
    }

    private void endDrag() {
        this.mIsBeingDragged = false;
        if (this.acD > this.mMinHeight && this.acD < this.acC) {
            this.acF.m13110D(this.acD, this.acG ? this.acC : this.mMinHeight);
            startAnimation(this.acF);
            if (!this.acG) {
                this.acB.getChildAt(1).startAnimation(this.acE);
                this.acB.getChildAt(1).setVisibility(0);
                this.acH = true;
            }
        }
    }

    /* renamed from: sk */
    private void m13113sk() {
        this.mIsBeingDragged = true;
    }

    /* renamed from: cr */
    private void m13115cr(int i) {
        this.acD -= i;
        if (this.acD < this.mMinHeight) {
            this.acD = this.mMinHeight;
            if (!this.acG) {
                this.acB.getChildAt(1).setVisibility(0);
                this.acH = true;
            }
        } else if (this.acD > this.acC) {
            this.acD = this.acC;
        }
        if (this.acG) {
            this.acB.getChildAt(1).setVisibility(4);
            this.acH = false;
        }
        this.acB.getLayoutParams().height = this.acD;
        requestLayout();
    }

    /* renamed from: cs */
    private boolean m13114cs(int i) {
        if (this.acD == this.mMinHeight) {
            return i >= 0 && (i <= 0 || this.acA.mo12540cq(i));
        }
        return true;
    }

    public View getScaleLayout() {
        return this.acB;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kingmaster.baseui.widget.ScaleLayout$a */
    /* loaded from: classes.dex */
    public static final class C0589a extends Animation {
        private ScaleLayout acI;
        private int acJ;
        private int acK;

        C0589a(ScaleLayout scaleLayout) {
            this.acI = scaleLayout;
            setInterpolator(new DecelerateInterpolator());
            setAnimationListener(scaleLayout);
        }

        /* renamed from: D */
        void m13110D(int i, int i2) {
            this.acJ = i;
            this.acK = i2;
        }

        @Override // android.view.animation.Animation
        protected void applyTransformation(float f, Transformation transformation) {
            float f2;
            if (this.acJ > this.acK) {
                f2 = this.acJ - ((this.acJ - this.acK) * f);
            } else {
                f2 = this.acJ + ((this.acK - this.acJ) * f);
            }
            this.acI.setScaleHeight(f2);
            this.acI.requestLayout();
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.mAnimating = false;
    }

    public void setScaleHeight(float f) {
        this.acD = (int) (f + 0.5d);
        this.acB.getLayoutParams().height = this.acD;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
        this.mAnimating = true;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        State state = new State(super.onSaveInstanceState());
        state.height = this.acD;
        state.acL = this.acH ? 1 : 0;
        return state;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        State state = (State) parcelable;
        super.onRestoreInstanceState(state.getSuperState());
        this.acD = state.height;
        this.acH = state.acL == 1;
        requestLayout();
    }

    /* loaded from: classes.dex */
    public static class State extends View.BaseSavedState {
        public static final Parcelable.Creator<State> CREATOR = new Parcelable.Creator<State>() { // from class: com.kingroot.kingmaster.baseui.widget.ScaleLayout.State.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: w */
            public State createFromParcel(Parcel parcel) {
                return new State(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: ct */
            public State[] newArray(int i) {
                return new State[i];
            }
        };
        int acL;
        int height;

        public State(Parcel parcel) {
            super(parcel);
            this.height = parcel.readInt();
            this.acL = parcel.readInt();
        }

        public State(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.height);
            parcel.writeInt(this.acL);
        }
    }
}
