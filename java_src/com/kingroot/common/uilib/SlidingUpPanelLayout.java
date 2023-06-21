package com.kingroot.common.uilib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p004v4.view.MotionEventCompat;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.kingroot.kinguser.C3858wt;
import com.kingroot.kinguser.C3863ww;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguser.bhi;
import com.kingroot.kinguses.R;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class SlidingUpPanelLayout extends ViewGroup {

    /* renamed from: RC */
    private static EnumC0560c f1062RC = EnumC0560c.COLLAPSED;

    /* renamed from: RD */
    private static final int[] f1063RD = {16842927};

    /* renamed from: RE */
    private final Paint f1064RE;

    /* renamed from: RF */
    private final Drawable f1065RF;

    /* renamed from: RG */
    private int f1066RG;

    /* renamed from: RH */
    private int f1067RH;

    /* renamed from: RI */
    private float f1068RI;

    /* renamed from: RJ */
    private boolean f1069RJ;

    /* renamed from: RK */
    private boolean f1070RK;

    /* renamed from: RL */
    private boolean f1071RL;

    /* renamed from: RM */
    private View f1072RM;

    /* renamed from: RN */
    private int f1073RN;

    /* renamed from: RO */
    private View f1074RO;

    /* renamed from: RP */
    private int f1075RP;

    /* renamed from: RQ */
    private C3858wt f1076RQ;

    /* renamed from: RR */
    private View f1077RR;

    /* renamed from: RS */
    private EnumC0560c f1078RS;

    /* renamed from: RT */
    private EnumC0560c f1079RT;

    /* renamed from: RU */
    private float f1080RU;

    /* renamed from: RV */
    private boolean f1081RV;

    /* renamed from: RW */
    private float f1082RW;

    /* renamed from: RX */
    private boolean f1083RX;

    /* renamed from: RY */
    private Set<InterfaceC0559b> f1084RY;

    /* renamed from: RZ */
    private View.OnClickListener f1085RZ;

    /* renamed from: Sa */
    private final C3863ww f1086Sa;

    /* renamed from: Sb */
    private boolean f1087Sb;
    private int mCoveredFadeColor;
    private boolean mFirstLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private boolean mIsUnableToDrag;
    private int mMinFlingVelocity;
    private float mSlideOffset;
    private int mSlideRange;
    private View mSlideableView;
    private final Rect mTmpRect;

    /* renamed from: com.kingroot.common.uilib.SlidingUpPanelLayout$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0559b {
        /* renamed from: b */
        void mo7324b(View view, EnumC0560c enumC0560c, EnumC0560c enumC0560c2);

        void onPanelSlide(View view, float f);
    }

    /* renamed from: com.kingroot.common.uilib.SlidingUpPanelLayout$c */
    /* loaded from: classes.dex */
    public enum EnumC0560c {
        EXPANDED,
        COLLAPSED,
        ANCHORED,
        HIDDEN,
        DRAGGING
    }

    public SlidingUpPanelLayout(Context context) {
        this(context, null);
    }

    public SlidingUpPanelLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SlidingUpPanelLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Interpolator interpolator;
        this.mMinFlingVelocity = 400;
        this.mCoveredFadeColor = -1728053248;
        this.f1064RE = new Paint();
        this.f1066RG = -1;
        this.f1067RH = -1;
        this.f1068RI = 1.0f;
        this.f1070RK = false;
        this.f1071RL = true;
        this.f1073RN = -1;
        this.f1076RQ = new C3858wt();
        this.f1078RS = f1062RC;
        this.f1079RT = f1062RC;
        this.f1080RU = 1.0f;
        this.f1083RX = false;
        this.f1084RY = new HashSet();
        this.mFirstLayout = true;
        this.mTmpRect = new Rect();
        this.f1087Sb = true;
        if (isInEditMode()) {
            this.f1065RF = null;
            this.f1086Sa = null;
            return;
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1063RD);
            if (obtainStyledAttributes != null) {
                setGravity(obtainStyledAttributes.getInt(0, 0));
            }
            obtainStyledAttributes.recycle();
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, afs.C0826a.SlidingUpPanelLayout);
            if (obtainStyledAttributes2 != null) {
                this.f1066RG = obtainStyledAttributes2.getDimensionPixelSize(0, -1);
                this.f1067RH = obtainStyledAttributes2.getDimensionPixelSize(1, -1);
                this.f1068RI = obtainStyledAttributes2.getFloat(2, 1.0f);
                this.mMinFlingVelocity = obtainStyledAttributes2.getInt(4, 400);
                this.mCoveredFadeColor = obtainStyledAttributes2.getColor(3, -1728053248);
                this.f1073RN = obtainStyledAttributes2.getResourceId(5, -1);
                this.f1075RP = obtainStyledAttributes2.getResourceId(6, -1);
                this.f1070RK = obtainStyledAttributes2.getBoolean(7, false);
                this.f1071RL = obtainStyledAttributes2.getBoolean(8, true);
                this.f1080RU = obtainStyledAttributes2.getFloat(10, 1.0f);
                this.f1078RS = EnumC0560c.values()[obtainStyledAttributes2.getInt(11, f1062RC.ordinal())];
                this.f1087Sb = obtainStyledAttributes2.getBoolean(9, true);
                int resourceId = obtainStyledAttributes2.getResourceId(12, -1);
                if (resourceId != -1) {
                    interpolator = AnimationUtils.loadInterpolator(context, resourceId);
                    obtainStyledAttributes2.recycle();
                }
            }
            interpolator = null;
            obtainStyledAttributes2.recycle();
        } else {
            interpolator = null;
        }
        float f = context.getResources().getDisplayMetrics().density;
        if (this.f1066RG == -1) {
            this.f1066RG = (int) ((68.0f * f) + 0.5f);
        }
        if (this.f1067RH == -1) {
            this.f1067RH = (int) ((4.0f * f) + 0.5f);
        }
        if (this.f1068RI == -1.0f) {
            this.f1068RI = (int) (0.0f * f);
        }
        if (this.f1067RH > 0) {
            if (this.f1069RJ) {
                this.f1065RF = getResources().getDrawable(R.drawable.above_shadow);
            } else {
                this.f1065RF = getResources().getDrawable(R.drawable.below_shadow);
            }
        } else {
            this.f1065RF = null;
        }
        setWillNotDraw(false);
        this.f1086Sa = C3863ww.m1491a(this, 2.0f, interpolator, new C0558a());
        this.f1086Sa.setMinVelocity(this.mMinFlingVelocity * f);
        this.f1081RV = true;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.f1073RN != -1) {
            setDragView(findViewById(this.f1073RN));
        }
        if (this.f1075RP != -1) {
            setScrollableView(findViewById(this.f1075RP));
        }
    }

    public void setGravity(int i) {
        if (i != 48 && i != 80) {
            throw new IllegalArgumentException("gravity must be set to either top or bottom");
        }
        this.f1069RJ = i == 80;
        if (!this.mFirstLayout) {
            requestLayout();
        }
    }

    public void setCoveredFadeColor(int i) {
        this.mCoveredFadeColor = i;
        requestLayout();
    }

    public int getCoveredFadeColor() {
        return this.mCoveredFadeColor;
    }

    public void setTouchEnabled(boolean z) {
        this.f1081RV = z;
    }

    /* renamed from: oi */
    public boolean m13205oi() {
        return (!this.f1081RV || this.mSlideableView == null || this.f1078RS == EnumC0560c.HIDDEN) ? false : true;
    }

    public void setPanelHeight(int i) {
        m13207l(i, false);
    }

    /* renamed from: l */
    public void m13207l(int i, boolean z) {
        if (getPanelHeight() != i) {
            this.f1066RG = i;
            if (!this.mFirstLayout) {
                requestLayout();
            }
            if (getPanelState() == EnumC0560c.COLLAPSED) {
                if (z && this.mSlideableView != null) {
                    this.mSlideableView.setAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.anim_marquee_in));
                }
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    public int getShadowHeight() {
        return this.f1067RH;
    }

    public void setShadowHeight(int i) {
        this.f1067RH = i;
        if (!this.mFirstLayout) {
            invalidate();
        }
    }

    public int getPanelHeight() {
        return this.f1066RG;
    }

    public int getCurrentParallaxOffset() {
        int max = (int) (Math.max(this.mSlideOffset, 0.0f) * this.mSlideRange);
        return this.f1069RJ ? -max : max;
    }

    public void setParallaxOffset(int i) {
        this.f1068RI = i;
        if (!this.mFirstLayout) {
            requestLayout();
        }
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public void setMinFlingVelocity(int i) {
        this.mMinFlingVelocity = i;
    }

    /* renamed from: a */
    public void m13225a(InterfaceC0559b interfaceC0559b) {
        this.f1084RY.add(interfaceC0559b);
    }

    public void setFadeOnClickListener(View.OnClickListener onClickListener) {
        this.f1085RZ = onClickListener;
    }

    public void setDragView(View view) {
        if (this.f1072RM != null) {
            this.f1072RM.setOnClickListener(null);
        }
        this.f1072RM = view;
        if (this.f1072RM != null) {
            this.f1072RM.setClickable(true);
            this.f1072RM.setFocusable(false);
            this.f1072RM.setFocusableInTouchMode(false);
            this.f1072RM.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.common.uilib.SlidingUpPanelLayout.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (SlidingUpPanelLayout.this.isEnabled() && SlidingUpPanelLayout.this.m13205oi()) {
                        if (SlidingUpPanelLayout.this.f1078RS != EnumC0560c.EXPANDED && SlidingUpPanelLayout.this.f1078RS != EnumC0560c.ANCHORED) {
                            if (SlidingUpPanelLayout.this.f1080RU < 1.0f) {
                                SlidingUpPanelLayout.this.setPanelState(EnumC0560c.ANCHORED);
                                return;
                            } else {
                                SlidingUpPanelLayout.this.setPanelState(EnumC0560c.EXPANDED);
                                return;
                            }
                        }
                        SlidingUpPanelLayout.this.setPanelState(EnumC0560c.COLLAPSED);
                    }
                }
            });
        }
    }

    public void setDragView(int i) {
        this.f1073RN = i;
        setDragView(findViewById(i));
    }

    public void setScrollableView(View view) {
        this.f1074RO = view;
    }

    public void setScrollableViewHelper(C3858wt c3858wt) {
        this.f1076RQ = c3858wt;
    }

    public void setAnchorPoint(float f) {
        if (f > 0.0f && f <= 1.0f) {
            this.f1080RU = f;
            this.mFirstLayout = true;
            requestLayout();
        }
    }

    public float getAnchorPoint() {
        return this.f1080RU;
    }

    public void setOverlayed(boolean z) {
        this.f1070RK = z;
    }

    public void setClipPanel(boolean z) {
        this.f1071RL = z;
    }

    void dispatchOnPanelSlide(View view) {
        for (InterfaceC0559b interfaceC0559b : this.f1084RY) {
            interfaceC0559b.onPanelSlide(view, this.mSlideOffset);
        }
    }

    /* renamed from: a */
    void m13226a(View view, EnumC0560c enumC0560c, EnumC0560c enumC0560c2) {
        for (InterfaceC0559b interfaceC0559b : this.f1084RY) {
            interfaceC0559b.mo7324b(view, enumC0560c, enumC0560c2);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: oj */
    void m13204oj() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        if (getChildCount() != 0) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            if (this.mSlideableView == null || !hasOpaqueBackground(this.mSlideableView)) {
                i = 0;
                i2 = 0;
                i3 = 0;
                i4 = 0;
            } else {
                i4 = this.mSlideableView.getLeft();
                i3 = this.mSlideableView.getRight();
                i2 = this.mSlideableView.getTop();
                i = this.mSlideableView.getBottom();
            }
            View childAt = getChildAt(0);
            int max = Math.max(paddingLeft, childAt.getLeft());
            int max2 = Math.max(paddingTop, childAt.getTop());
            int min = Math.min(width, childAt.getRight());
            int min2 = Math.min(height, childAt.getBottom());
            if (max >= i4 && max2 >= i2 && min <= i3 && min2 <= i) {
                i5 = 4;
            }
            childAt.setVisibility(i5);
        }
    }

    void setAllChildrenVisible() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    private static boolean hasOpaqueBackground(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mFirstLayout = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int makeMeasureSpec;
        int makeMeasureSpec2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        }
        if (mode2 != 1073741824) {
            throw new IllegalStateException("Height must have an exact value or MATCH_PARENT");
        }
        int childCount = getChildCount();
        if (childCount != 2) {
            throw new IllegalStateException("Sliding up panel layout must have exactly 2 children!");
        }
        this.f1077RR = getChildAt(0);
        this.mSlideableView = getChildAt(1);
        if (this.f1072RM == null) {
            setDragView(this.mSlideableView);
        }
        if (this.mSlideableView.getVisibility() != 0) {
            this.f1078RS = EnumC0560c.HIDDEN;
        }
        int paddingTop = (size2 - getPaddingTop()) - getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || i5 != 0) {
                if (childAt == this.f1077RR) {
                    i4 = (this.f1070RK || this.f1078RS == EnumC0560c.HIDDEN) ? paddingTop : paddingTop - this.f1066RG;
                    i3 = paddingLeft - (layoutParams.leftMargin + layoutParams.rightMargin);
                } else if (childAt == this.mSlideableView) {
                    i4 = paddingTop - (layoutParams.topMargin + layoutParams.bottomMargin);
                    i3 = paddingLeft - (layoutParams.leftMargin + layoutParams.rightMargin);
                } else {
                    i3 = paddingLeft;
                    i4 = paddingTop;
                }
                if (layoutParams.width == -2) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                } else if (layoutParams.width == -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(layoutParams.width, 1073741824);
                }
                if (layoutParams.height == -2) {
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
                } else {
                    if (layoutParams.weight > 0.0f && layoutParams.weight < 1.0f) {
                        i4 = (int) (layoutParams.weight * i4);
                    } else if (layoutParams.height != -1) {
                        i4 = layoutParams.height;
                    }
                    makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                }
                childAt.measure(makeMeasureSpec, makeMeasureSpec2);
                if (childAt == this.mSlideableView) {
                    LayoutParams layoutParams2 = (LayoutParams) this.mSlideableView.getLayoutParams();
                    this.mSlideRange = (this.f1069RJ ? layoutParams2.bottomMargin : layoutParams2.topMargin) + (this.mSlideableView.getMeasuredHeight() - this.f1066RG);
                }
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.mFirstLayout) {
            switch (this.f1078RS) {
                case EXPANDED:
                    this.mSlideOffset = 1.0f;
                    break;
                case ANCHORED:
                    this.mSlideOffset = this.f1080RU;
                    break;
                case HIDDEN:
                    this.mSlideOffset = m13215bQ((this.f1069RJ ? this.f1066RG : -this.f1066RG) + m13206n(0.0f));
                    break;
                default:
                    this.mSlideOffset = 0.0f;
                    break;
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() != 8 || (i5 != 0 && !this.mFirstLayout)) {
                int measuredHeight = childAt.getMeasuredHeight();
                int m13206n = childAt == this.mSlideableView ? m13206n(this.mSlideOffset) : paddingTop;
                if (!this.f1069RJ && childAt == this.f1077RR && !this.f1070RK) {
                    m13206n = m13206n(this.mSlideOffset) + this.mSlideableView.getMeasuredHeight();
                }
                int i6 = layoutParams.leftMargin + paddingLeft;
                childAt.layout(i6, m13206n, childAt.getMeasuredWidth() + i6, measuredHeight + m13206n);
            }
        }
        if (this.mFirstLayout) {
            m13204oj();
        }
        m13203ok();
        this.mFirstLayout = false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i2 != i4) {
            this.mFirstLayout = true;
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f1083RX || !m13205oi()) {
            this.f1086Sa.abort();
            return false;
        }
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        float abs = Math.abs(x - this.mInitialMotionX);
        float abs2 = Math.abs(y - this.mInitialMotionY);
        int touchSlop = this.f1086Sa.getTouchSlop();
        switch (actionMasked) {
            case 0:
                this.mIsUnableToDrag = false;
                this.mInitialMotionX = x;
                this.mInitialMotionY = y;
                break;
            case 1:
            case 3:
                if (this.f1086Sa.m1489om()) {
                    this.f1086Sa.processTouchEvent(motionEvent);
                    return true;
                } else if (abs2 <= touchSlop && abs <= touchSlop && this.mSlideOffset > 0.0f && !isViewUnder(this.mSlideableView, (int) this.mInitialMotionX, (int) this.mInitialMotionY) && this.f1085RZ != null) {
                    playSoundEffect(0);
                    this.f1085RZ.onClick(this);
                    return true;
                }
                break;
            case 2:
                if ((abs2 > touchSlop && abs > abs2) || !isViewUnder(this.f1072RM, (int) this.mInitialMotionX, (int) this.mInitialMotionY)) {
                    this.f1086Sa.cancel();
                    this.mIsUnableToDrag = true;
                    return false;
                }
                break;
        }
        return this.f1086Sa.shouldInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !m13205oi()) {
            return super.onTouchEvent(motionEvent);
        }
        try {
            this.f1086Sa.processTouchEvent(motionEvent);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int actionMasked = MotionEventCompat.getActionMasked(motionEvent);
        if (!isEnabled() || !m13205oi() || (this.mIsUnableToDrag && actionMasked != 0)) {
            this.f1086Sa.cancel();
            return super.dispatchTouchEvent(motionEvent);
        }
        float y = motionEvent.getY();
        if (actionMasked == 0) {
            this.f1083RX = false;
            this.f1082RW = y;
        } else if (actionMasked == 2) {
            float f = y - this.f1082RW;
            this.f1082RW = y;
            if (!isViewUnder(this.f1074RO, (int) this.mInitialMotionX, (int) this.mInitialMotionY)) {
                return super.dispatchTouchEvent(motionEvent);
            }
            if ((this.f1069RJ ? 1 : -1) * f > 0.0f) {
                if (this.f1076RQ.m1496a(this.f1074RO, this.f1069RJ) > 0) {
                    this.f1083RX = true;
                    return super.dispatchTouchEvent(motionEvent);
                }
                if (this.f1083RX) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.setAction(3);
                    super.dispatchTouchEvent(obtain);
                    obtain.recycle();
                    motionEvent.setAction(0);
                }
                this.f1083RX = false;
                return onTouchEvent(motionEvent);
            }
            if ((this.f1069RJ ? 1 : -1) * f < 0.0f) {
                if (this.mSlideOffset < 1.0f) {
                    this.f1083RX = false;
                    return onTouchEvent(motionEvent);
                }
                if (!this.f1083RX && this.f1086Sa.m1489om()) {
                    this.f1086Sa.cancel();
                    motionEvent.setAction(0);
                }
                this.f1083RX = true;
                return super.dispatchTouchEvent(motionEvent);
            }
        } else if (actionMasked == 1 && this.f1083RX) {
            this.f1086Sa.setDragState(0);
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    private boolean isViewUnder(View view, int i, int i2) {
        boolean z = true;
        if (view == null) {
            return false;
        }
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        getLocationOnScreen(iArr2);
        int i3 = iArr2[0] + i;
        int i4 = iArr2[1] + i2;
        if (i3 < iArr[0] || i3 >= iArr[0] + view.getWidth() || i4 < iArr[1] || i4 >= iArr[1] + view.getHeight()) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public int m13206n(float f) {
        int measuredHeight = this.mSlideableView != null ? this.mSlideableView.getMeasuredHeight() : 0;
        int i = (int) (this.mSlideRange * f);
        if (this.f1069RJ) {
            return ((getMeasuredHeight() - getPaddingBottom()) - this.f1066RG) - i;
        }
        return (getPaddingTop() - measuredHeight) + this.f1066RG + i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bQ */
    public float m13215bQ(int i) {
        int m13206n = m13206n(0.0f);
        return this.f1069RJ ? (m13206n - i) / this.mSlideRange : (i - m13206n) / this.mSlideRange;
    }

    public EnumC0560c getPanelState() {
        return this.f1078RS;
    }

    public void setPanelState(EnumC0560c enumC0560c) {
        m13224a(enumC0560c, true);
    }

    /* renamed from: a */
    public void m13224a(EnumC0560c enumC0560c, boolean z) {
        if (enumC0560c == null || enumC0560c == EnumC0560c.DRAGGING) {
            throw new IllegalArgumentException("Panel state cannot be null or DRAGGING.");
        }
        if (isEnabled()) {
            if (this.mFirstLayout || this.mSlideableView != null) {
                if ((enumC0560c != this.f1078RS || !z) && this.f1078RS != EnumC0560c.DRAGGING) {
                    if (this.mFirstLayout) {
                        setPanelStateInternal(enumC0560c);
                        return;
                    }
                    if (this.f1078RS == EnumC0560c.HIDDEN) {
                        this.mSlideableView.setVisibility(0);
                        requestLayout();
                    }
                    switch (enumC0560c) {
                        case EXPANDED:
                            m13219b(1.0f, 0, z);
                            return;
                        case ANCHORED:
                            m13219b(this.f1080RU, 0, z);
                            return;
                        case HIDDEN:
                            m13219b(m13215bQ((this.f1069RJ ? this.f1066RG : -this.f1066RG) + m13206n(0.0f)), 0, z);
                            return;
                        case COLLAPSED:
                            m13219b(0.0f, 0, z);
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPanelStateInternal(EnumC0560c enumC0560c) {
        if (this.f1078RS != enumC0560c) {
            EnumC0560c enumC0560c2 = this.f1078RS;
            this.f1078RS = enumC0560c;
            m13226a(this, enumC0560c2, enumC0560c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    /* renamed from: ok */
    public void m13203ok() {
        if (this.f1068RI > 0.0f) {
            float currentParallaxOffset = getCurrentParallaxOffset();
            if (Build.VERSION.SDK_INT >= 11) {
                this.f1077RR.setTranslationY(currentParallaxOffset);
            } else {
                bhi.m7003J(this.f1077RR).setTranslationY(currentParallaxOffset);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onPanelDragged(int i) {
        this.f1079RT = this.f1078RS;
        setPanelStateInternal(EnumC0560c.DRAGGING);
        this.mSlideOffset = m13215bQ(i);
        m13203ok();
        dispatchOnPanelSlide(this.mSlideableView);
        LayoutParams layoutParams = (LayoutParams) this.f1077RR.getLayoutParams();
        int height = ((getHeight() - getPaddingBottom()) - getPaddingTop()) - this.f1066RG;
        if (this.mSlideOffset <= 0.0f && !this.f1070RK) {
            layoutParams.height = this.f1069RJ ? i - getPaddingBottom() : ((getHeight() - getPaddingBottom()) - this.mSlideableView.getMeasuredHeight()) - i;
            if (layoutParams.height == height) {
                layoutParams.height = -1;
            }
            this.f1077RR.requestLayout();
        } else if (layoutParams.height != -1 && !this.f1070RK) {
            layoutParams.height = -1;
            this.f1077RR.requestLayout();
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild;
        int save = canvas.save(2);
        if (this.mSlideableView != view) {
            canvas.getClipBounds(this.mTmpRect);
            if (!this.f1070RK) {
                if (this.f1069RJ) {
                    this.mTmpRect.bottom = Math.min(this.mTmpRect.bottom, this.mSlideableView.getTop());
                } else {
                    this.mTmpRect.top = Math.max(this.mTmpRect.top, this.mSlideableView.getBottom());
                }
            }
            if (this.f1071RL) {
                canvas.clipRect(this.mTmpRect);
            }
            drawChild = super.drawChild(canvas, view, j);
            if (this.f1087Sb && this.mCoveredFadeColor != 0 && this.mSlideOffset > 0.0f) {
                this.f1064RE.setColor((((int) (((this.mCoveredFadeColor & ViewCompat.MEASURED_STATE_MASK) >>> 24) * this.mSlideOffset)) << 24) | (this.mCoveredFadeColor & ViewCompat.MEASURED_SIZE_MASK));
                canvas.drawRect(this.mTmpRect, this.f1064RE);
            }
        } else {
            drawChild = super.drawChild(canvas, view, j);
        }
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* renamed from: b */
    boolean m13219b(float f, int i, boolean z) {
        if (!isEnabled() || this.mSlideableView == null) {
            return false;
        }
        int m13206n = m13206n(f);
        if (z) {
            if (this.f1086Sa.smoothSlideViewTo(this.mSlideableView, this.mSlideableView.getLeft(), m13206n)) {
                setAllChildrenVisible();
                ViewCompat.postInvalidateOnAnimation(this);
                return true;
            }
            return false;
        }
        ViewCompat.setTranslationX(this.mSlideableView, 0.0f);
        ViewCompat.setTranslationY(this.mSlideableView, m13206n - this.mSlideableView.getTop());
        return false;
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1086Sa != null && this.f1086Sa.continueSettling(true)) {
            if (!isEnabled()) {
                this.f1086Sa.abort();
            } else {
                ViewCompat.postInvalidateOnAnimation(this);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int bottom;
        int bottom2;
        super.draw(canvas);
        if (this.f1065RF != null && this.mSlideableView != null) {
            int right = this.mSlideableView.getRight();
            if (this.f1069RJ) {
                bottom = this.mSlideableView.getTop() - this.f1067RH;
                bottom2 = this.mSlideableView.getTop();
            } else {
                bottom = this.mSlideableView.getBottom();
                bottom2 = this.mSlideableView.getBottom() + this.f1067RH;
            }
            this.f1065RF.setBounds(this.mSlideableView.getLeft(), bottom, right, bottom2);
            this.f1065RF.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f1078RS != EnumC0560c.DRAGGING) {
            savedState.f1090RS = this.f1078RS;
        } else {
            savedState.f1090RS = this.f1079RT;
        }
        return savedState;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1078RS = savedState.f1090RS != null ? savedState.f1090RS : f1062RC;
    }

    /* renamed from: com.kingroot.common.uilib.SlidingUpPanelLayout$a */
    /* loaded from: classes.dex */
    class C0558a extends C3863ww.AbstractC3866a {
        private C0558a() {
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public boolean tryCaptureView(View view, int i) {
            return !SlidingUpPanelLayout.this.mIsUnableToDrag && view == SlidingUpPanelLayout.this.mSlideableView;
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public int clampViewPositionHorizontal(View view, int i, int i2) {
            return SlidingUpPanelLayout.this.mSlideableView.getLeft();
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public void onViewDragStateChanged(int i) {
            if (SlidingUpPanelLayout.this.f1086Sa.getViewDragState() == 0) {
                SlidingUpPanelLayout.this.mSlideOffset = SlidingUpPanelLayout.this.m13215bQ(SlidingUpPanelLayout.this.mSlideableView.getTop());
                SlidingUpPanelLayout.this.m13203ok();
                if (SlidingUpPanelLayout.this.mSlideOffset != 1.0f) {
                    if (SlidingUpPanelLayout.this.mSlideOffset == 0.0f) {
                        SlidingUpPanelLayout.this.setPanelStateInternal(EnumC0560c.COLLAPSED);
                        return;
                    } else if (SlidingUpPanelLayout.this.mSlideOffset < 0.0f) {
                        SlidingUpPanelLayout.this.setPanelStateInternal(EnumC0560c.HIDDEN);
                        SlidingUpPanelLayout.this.mSlideableView.setVisibility(4);
                        return;
                    } else {
                        SlidingUpPanelLayout.this.m13204oj();
                        SlidingUpPanelLayout.this.setPanelStateInternal(EnumC0560c.ANCHORED);
                        return;
                    }
                }
                SlidingUpPanelLayout.this.m13204oj();
                SlidingUpPanelLayout.this.setPanelStateInternal(EnumC0560c.EXPANDED);
            }
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public void onViewCaptured(View view, int i) {
            SlidingUpPanelLayout.this.setAllChildrenVisible();
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public void onViewPositionChanged(View view, int i, int i2, int i3, int i4) {
            SlidingUpPanelLayout.this.onPanelDragged(i2);
            SlidingUpPanelLayout.this.invalidate();
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public void onViewReleased(View view, float f, float f2) {
            int m13206n;
            if (SlidingUpPanelLayout.this.f1069RJ) {
                f2 = -f2;
            }
            if (f2 > 0.0f && SlidingUpPanelLayout.this.mSlideOffset <= SlidingUpPanelLayout.this.f1080RU) {
                m13206n = SlidingUpPanelLayout.this.m13206n(SlidingUpPanelLayout.this.f1080RU);
            } else {
                m13206n = (f2 <= 0.0f || SlidingUpPanelLayout.this.mSlideOffset <= SlidingUpPanelLayout.this.f1080RU) ? (f2 >= 0.0f || SlidingUpPanelLayout.this.mSlideOffset < SlidingUpPanelLayout.this.f1080RU) ? (f2 >= 0.0f || SlidingUpPanelLayout.this.mSlideOffset >= SlidingUpPanelLayout.this.f1080RU) ? SlidingUpPanelLayout.this.mSlideOffset >= (SlidingUpPanelLayout.this.f1080RU + 1.0f) / 2.0f ? SlidingUpPanelLayout.this.m13206n(1.0f) : SlidingUpPanelLayout.this.mSlideOffset >= SlidingUpPanelLayout.this.f1080RU / 2.0f ? SlidingUpPanelLayout.this.m13206n(SlidingUpPanelLayout.this.f1080RU) : SlidingUpPanelLayout.this.m13206n(0.0f) : SlidingUpPanelLayout.this.m13206n(0.0f) : SlidingUpPanelLayout.this.m13206n(SlidingUpPanelLayout.this.f1080RU) : SlidingUpPanelLayout.this.m13206n(1.0f);
            }
            SlidingUpPanelLayout.this.f1086Sa.settleCapturedViewAt(view.getLeft(), m13206n);
            SlidingUpPanelLayout.this.invalidate();
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public int getViewVerticalDragRange(View view) {
            return SlidingUpPanelLayout.this.mSlideRange;
        }

        @Override // com.kingroot.kinguser.C3863ww.AbstractC3866a
        public int clampViewPositionVertical(View view, int i, int i2) {
            int m13206n = SlidingUpPanelLayout.this.m13206n(0.0f);
            int m13206n2 = SlidingUpPanelLayout.this.m13206n(1.0f);
            return SlidingUpPanelLayout.this.f1069RJ ? Math.min(Math.max(i, m13206n2), m13206n) : Math.min(Math.max(i, m13206n), m13206n2);
        }
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] ATTRS = {16843137};
        public float weight;

        public LayoutParams() {
            super(-1, -1);
            this.weight = 0.0f;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.weight = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.weight = 0.0f;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
            if (obtainStyledAttributes != null) {
                this.weight = obtainStyledAttributes.getFloat(0, 0.0f);
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.kingroot.common.uilib.SlidingUpPanelLayout.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: r */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: bR */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: RS */
        EnumC0560c f1090RS;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            String readString = parcel.readString();
            try {
                this.f1090RS = readString != null ? (EnumC0560c) Enum.valueOf(EnumC0560c.class, readString) : EnumC0560c.COLLAPSED;
            } catch (IllegalArgumentException e) {
                this.f1090RS = EnumC0560c.COLLAPSED;
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.f1090RS == null ? null : this.f1090RS.toString());
        }
    }

    public void setEnableCover(boolean z) {
        this.f1087Sb = z;
    }
}
