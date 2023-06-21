package com.kingroot.kingmaster.baseui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p004v4.view.MotionEventCompat;
import android.support.p004v4.view.ViewConfigurationCompat;
import android.support.p004v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.adc;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class LinePageIndicator extends View implements adc {

    /* renamed from: Vx */
    private ViewPager f1199Vx;
    private final Paint abM;
    private final Paint abN;
    private ViewPager.OnPageChangeListener abO;
    private int abP;
    private boolean abQ;
    private float abR;
    private float abS;
    private boolean abT;
    private int mActivePointerId;
    private float mLastMotionX;
    private int mTouchSlop;

    public LinePageIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linePageIndicatorStyle);
    }

    public LinePageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.abM = new Paint(1);
        this.abN = new Paint(1);
        this.mLastMotionX = -1.0f;
        this.mActivePointerId = -1;
        if (!isInEditMode()) {
            C3953zi m1311pr = C3953zi.m1311pr();
            int color = m1311pr.getColor(R.color.default_line_indicator_selected_color);
            int color2 = m1311pr.getColor(R.color.default_line_indicator_unselected_color);
            float dimension = m1311pr.getDimension(R.dimen.default_line_indicator_line_width);
            float dimension2 = m1311pr.getDimension(R.dimen.default_line_indicator_gap_width);
            float dimension3 = m1311pr.getDimension(R.dimen.default_line_indicator_stroke_width);
            boolean z = m1311pr.getBoolean(R.bool.default_line_indicator_centered);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.LinePageIndicator, i, 0);
            this.abQ = obtainStyledAttributes.getBoolean(1, z);
            this.abR = obtainStyledAttributes.getDimension(5, dimension);
            this.abS = obtainStyledAttributes.getDimension(6, dimension2);
            setStrokeWidth(obtainStyledAttributes.getDimension(3, dimension3));
            this.abM.setColor(obtainStyledAttributes.getColor(4, color2));
            this.abN.setColor(obtainStyledAttributes.getColor(2, color));
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            if (drawable != null) {
                setBackgroundDrawable(drawable);
            }
            obtainStyledAttributes.recycle();
            this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(context));
        }
    }

    public void setCentered(boolean z) {
        this.abQ = z;
        invalidate();
    }

    public void setUnselectedColor(int i) {
        this.abM.setColor(i);
        invalidate();
    }

    public int getUnselectedColor() {
        return this.abM.getColor();
    }

    public void setSelectedColor(int i) {
        this.abN.setColor(i);
        invalidate();
    }

    public int getSelectedColor() {
        return this.abN.getColor();
    }

    public void setLineWidth(float f) {
        this.abR = f;
        invalidate();
    }

    public float getLineWidth() {
        return this.abR;
    }

    public void setStrokeWidth(float f) {
        this.abN.setStrokeWidth(f);
        this.abM.setStrokeWidth(f);
        invalidate();
    }

    public float getStrokeWidth() {
        return this.abN.getStrokeWidth();
    }

    public void setGapWidth(float f) {
        this.abS = f;
        invalidate();
    }

    public float getGapWidth() {
        return this.abS;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int count;
        super.onDraw(canvas);
        if (this.f1199Vx != null && (count = this.f1199Vx.getAdapter().getCount()) != 0) {
            if (this.abP >= count) {
                setCurrentItem(count - 1);
                return;
            }
            float f = this.abR + this.abS;
            float f2 = (count * f) - this.abS;
            float paddingTop = getPaddingTop();
            float paddingLeft = getPaddingLeft();
            float height = paddingTop + (((getHeight() - paddingTop) - getPaddingBottom()) / 2.0f);
            float width = this.abQ ? paddingLeft + ((((getWidth() - paddingLeft) - getPaddingRight()) / 2.0f) - (f2 / 2.0f)) : paddingLeft;
            int i = 0;
            while (i < count) {
                float f3 = width + (i * f);
                canvas.drawLine(f3, height, f3 + this.abR, height, i == this.abP ? this.abN : this.abM);
                i++;
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        if (this.f1199Vx == null || this.f1199Vx.getAdapter().getCount() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        switch (action) {
            case 0:
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, 0);
                this.mLastMotionX = motionEvent.getX();
                return true;
            case 1:
            case 3:
                if (!this.abT) {
                    int count = this.f1199Vx.getAdapter().getCount();
                    float width = ((getWidth() - (count * this.abR)) - ((count - 1) * this.abS)) / 2.0f;
                    float x = motionEvent.getX();
                    boolean z = false;
                    for (int i = 0; i < count; i++) {
                        float f = (i * (this.abR + this.abS)) + width;
                        if (x <= this.abR + f && x >= f) {
                            if (action != 3) {
                                this.f1199Vx.setCurrentItem(i);
                            }
                            z = true;
                        }
                    }
                    if (z) {
                        return true;
                    }
                }
                this.abT = false;
                this.mActivePointerId = -1;
                if (this.f1199Vx.isFakeDragging()) {
                    try {
                        this.f1199Vx.endFakeDrag();
                        return true;
                    } catch (Throwable th) {
                        return true;
                    }
                }
                return true;
            case 2:
                float x2 = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                float f2 = x2 - this.mLastMotionX;
                if (!this.abT && Math.abs(f2) > this.mTouchSlop) {
                    this.abT = true;
                }
                if (this.abT) {
                    this.mLastMotionX = x2;
                    if (this.f1199Vx.isFakeDragging() || this.f1199Vx.beginFakeDrag()) {
                        try {
                            this.f1199Vx.fakeDragBy(f2);
                            return true;
                        } catch (Throwable th2) {
                            return true;
                        }
                    }
                    return true;
                }
                return true;
            case 4:
            default:
                return true;
            case 5:
                int actionIndex = MotionEventCompat.getActionIndex(motionEvent);
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, actionIndex);
                this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, actionIndex);
                return true;
            case 6:
                int actionIndex2 = MotionEventCompat.getActionIndex(motionEvent);
                if (MotionEventCompat.getPointerId(motionEvent, actionIndex2) == this.mActivePointerId) {
                    this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, actionIndex2 == 0 ? 1 : 0);
                }
                this.mLastMotionX = MotionEventCompat.getX(motionEvent, MotionEventCompat.findPointerIndex(motionEvent, this.mActivePointerId));
                return true;
        }
    }

    public void setViewPager(ViewPager viewPager) {
        if (this.f1199Vx != viewPager) {
            if (this.f1199Vx != null) {
                this.f1199Vx.setOnPageChangeListener(null);
            }
            if (viewPager.getAdapter() == null) {
                throw new IllegalStateException("ViewPager does not have adapter instance.");
            }
            this.f1199Vx = viewPager;
            this.f1199Vx.setOnPageChangeListener(this);
            invalidate();
        }
    }

    public void setCurrentItem(int i) {
        if (this.f1199Vx == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        this.f1199Vx.setCurrentItem(i);
        this.abP = i;
        invalidate();
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (this.abO != null) {
            this.abO.onPageScrollStateChanged(i);
        }
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        if (this.abO != null) {
            this.abO.onPageScrolled(i, f, i2);
        }
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.abP = i;
        invalidate();
        if (this.abO != null) {
            this.abO.onPageSelected(i);
        }
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.abO = onPageChangeListener;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m13121cl(i), m13120cm(i2));
    }

    /* renamed from: cl */
    private int m13121cl(int i) {
        float f;
        int count;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || this.f1199Vx == null) {
            f = size;
        } else {
            f = ((count - 1) * this.abS) + getPaddingLeft() + getPaddingRight() + (this.f1199Vx.getAdapter().getCount() * this.abR);
            if (mode == Integer.MIN_VALUE) {
                f = Math.min(f, size);
            }
        }
        return (int) FloatMath.ceil(f);
    }

    /* renamed from: cm */
    private int m13120cm(int i) {
        float strokeWidth;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            strokeWidth = size;
        } else {
            strokeWidth = this.abN.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
            if (mode == Integer.MIN_VALUE) {
                strokeWidth = Math.min(strokeWidth, size);
            }
        }
        return (int) FloatMath.ceil(strokeWidth);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.abP = savedState.abU;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.abU = this.abP;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.kingroot.kingmaster.baseui.LinePageIndicator.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: v */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: cn */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int abU;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.abU = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.abU);
        }
    }
}
