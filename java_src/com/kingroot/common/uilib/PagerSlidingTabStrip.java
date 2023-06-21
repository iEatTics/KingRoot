package com.kingroot.common.uilib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.p004v4.view.ViewPager;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguser.blg;
import com.kingroot.kinguses.R;
import java.util.Locale;
/* loaded from: classes.dex */
public class PagerSlidingTabStrip extends HorizontalScrollView {
    private static final int[] ATTRS = {16842901, 16842904};

    /* renamed from: PC */
    private LinearLayout.LayoutParams f970PC;

    /* renamed from: PD */
    private LinearLayout.LayoutParams f971PD;

    /* renamed from: PE */
    private final C0549b f972PE;

    /* renamed from: PF */
    public ViewPager.OnPageChangeListener f973PF;

    /* renamed from: PG */
    private LinearLayout f974PG;

    /* renamed from: PH */
    private ViewPager f975PH;

    /* renamed from: PI */
    private int f976PI;

    /* renamed from: PJ */
    private int f977PJ;

    /* renamed from: PK */
    private float f978PK;

    /* renamed from: PL */
    private Paint f979PL;

    /* renamed from: PM */
    private Paint f980PM;

    /* renamed from: PN */
    private int f981PN;

    /* renamed from: PO */
    private int f982PO;

    /* renamed from: PP */
    private int f983PP;

    /* renamed from: PQ */
    private int f984PQ;

    /* renamed from: PR */
    private boolean f985PR;

    /* renamed from: PS */
    private boolean f986PS;

    /* renamed from: PT */
    private int f987PT;

    /* renamed from: PU */
    private int f988PU;

    /* renamed from: PV */
    private int f989PV;

    /* renamed from: PW */
    private int f990PW;

    /* renamed from: PY */
    private int f991PY;

    /* renamed from: PZ */
    private int f992PZ;

    /* renamed from: Qa */
    private int f993Qa;

    /* renamed from: Qb */
    private int f994Qb;

    /* renamed from: Qc */
    private Typeface f995Qc;

    /* renamed from: Qd */
    private int f996Qd;

    /* renamed from: Qe */
    private int f997Qe;

    /* renamed from: Qf */
    private int f998Qf;

    /* renamed from: Qg */
    private Typeface f999Qg;

    /* renamed from: Qh */
    private int f1000Qh;
    private int dividerPadding;
    private Locale locale;

    /* renamed from: com.kingroot.common.uilib.PagerSlidingTabStrip$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0548a {
        /* renamed from: bM */
        int m13253bM(int i);
    }

    public PagerSlidingTabStrip(Context context) {
        this(context, null);
    }

    public PagerSlidingTabStrip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PagerSlidingTabStrip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f972PE = new C0549b();
        this.f977PJ = 0;
        this.f978PK = 0.0f;
        this.f981PN = -16744470;
        this.f982PO = -14606047;
        this.f983PP = 436207616;
        this.f984PQ = 436207616;
        this.f985PR = false;
        this.f986PS = true;
        this.f987PT = 52;
        this.f988PU = 8;
        this.f989PV = 2;
        this.dividerPadding = 12;
        this.f990PW = 24;
        this.f991PY = 1;
        this.f992PZ = 16;
        this.f993Qa = -14606047;
        this.f994Qb = -16739862;
        this.f995Qc = null;
        this.f996Qd = 0;
        this.f997Qe = 0;
        this.f998Qf = R.drawable.background_tab;
        this.f999Qg = blg.m6503jH(0);
        this.f1000Qh = 0;
        setFillViewport(true);
        setWillNotDraw(false);
        this.f974PG = new LinearLayout(context);
        this.f974PG.setOrientation(0);
        this.f974PG.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.f974PG);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f987PT = (int) TypedValue.applyDimension(1, this.f987PT, displayMetrics);
        this.f988PU = (int) TypedValue.applyDimension(1, this.f988PU, displayMetrics);
        this.f989PV = (int) TypedValue.applyDimension(1, this.f989PV, displayMetrics);
        this.dividerPadding = (int) TypedValue.applyDimension(1, this.dividerPadding, displayMetrics);
        this.f990PW = (int) TypedValue.applyDimension(1, this.f990PW, displayMetrics);
        this.f991PY = (int) TypedValue.applyDimension(0, this.f991PY, displayMetrics);
        this.f992PZ = (int) TypedValue.applyDimension(2, this.f992PZ, displayMetrics);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ATTRS);
        this.f992PZ = obtainStyledAttributes.getDimensionPixelSize(0, this.f992PZ);
        this.f993Qa = obtainStyledAttributes.getColor(1, this.f993Qa);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, afs.C0826a.PagerSlidingTabStrip);
        this.f981PN = obtainStyledAttributes2.getColor(0, this.f981PN);
        this.f994Qb = obtainStyledAttributes2.getColor(1, this.f994Qb);
        this.f993Qa = obtainStyledAttributes2.getColor(2, this.f994Qb);
        this.f983PP = obtainStyledAttributes2.getColor(3, this.f983PP);
        this.f984PQ = obtainStyledAttributes2.getColor(4, this.f984PQ);
        this.f988PU = obtainStyledAttributes2.getDimensionPixelSize(5, this.f988PU);
        this.f989PV = obtainStyledAttributes2.getDimensionPixelSize(6, this.f989PV);
        this.dividerPadding = obtainStyledAttributes2.getDimensionPixelSize(7, this.dividerPadding);
        this.f990PW = obtainStyledAttributes2.getDimensionPixelSize(8, this.f990PW);
        this.f998Qf = obtainStyledAttributes2.getResourceId(10, this.f998Qf);
        this.f985PR = obtainStyledAttributes2.getBoolean(11, this.f985PR);
        this.f987PT = obtainStyledAttributes2.getDimensionPixelSize(9, this.f987PT);
        this.f986PS = obtainStyledAttributes2.getBoolean(12, this.f986PS);
        obtainStyledAttributes2.recycle();
        this.f979PL = new Paint();
        this.f979PL.setAntiAlias(true);
        this.f979PL.setStyle(Paint.Style.FILL);
        this.f980PM = new Paint();
        this.f980PM.setAntiAlias(true);
        this.f980PM.setStrokeWidth(this.f991PY);
        this.f970PC = new LinearLayout.LayoutParams(-2, -1);
        this.f971PD = new LinearLayout.LayoutParams(0, -1, 1.0f);
        if (this.locale == null) {
            this.locale = getResources().getConfiguration().locale;
        }
    }

    public void setIndicateTabTextColor(int i) {
        this.f994Qb = i;
    }

    public void setViewPager(ViewPager viewPager) {
        this.f975PH = viewPager;
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        viewPager.setOnPageChangeListener(this.f972PE);
        notifyDataSetChanged();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.f973PF = onPageChangeListener;
    }

    public void notifyDataSetChanged() {
        this.f976PI = this.f975PH.getAdapter().getCount();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < this.f976PI) {
                if (this.f975PH.getAdapter() instanceof InterfaceC0548a) {
                    m13256z(i2, ((InterfaceC0548a) this.f975PH.getAdapter()).m13253bM(i2));
                } else {
                    m13266a(i2, this.f975PH.getAdapter().getPageTitle(i2));
                }
                i = i2 + 1;
            } else {
                m13257nU();
                getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.common.uilib.PagerSlidingTabStrip.1
                    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                    @SuppressLint({"NewApi"})
                    public void onGlobalLayout() {
                        if (Build.VERSION.SDK_INT < 19) {
                            PagerSlidingTabStrip.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                        }
                        PagerSlidingTabStrip.this.f977PJ = PagerSlidingTabStrip.this.f975PH.getCurrentItem();
                        PagerSlidingTabStrip.this.m13267A(PagerSlidingTabStrip.this.f977PJ, 0);
                    }
                });
                return;
            }
        }
    }

    /* renamed from: a */
    private void m13266a(int i, CharSequence charSequence) {
        TextView textView;
        boolean z;
        View childAt = this.f974PG.getChildAt(i);
        if (childAt == null || !(childAt instanceof TextView)) {
            textView = new TextView(getContext());
            textView.setGravity(17);
            textView.setTypeface(this.f999Qg);
            z = true;
        } else {
            textView = (TextView) childAt;
            z = false;
        }
        textView.setText(charSequence);
        if (z) {
            m13261b(i, textView);
        }
    }

    /* renamed from: z */
    private void m13256z(int i, int i2) {
        ImageButton imageButton = new ImageButton(getContext());
        imageButton.setImageResource(i2);
        m13261b(i, imageButton);
    }

    /* renamed from: b */
    private void m13261b(final int i, View view) {
        view.setFocusable(true);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.common.uilib.PagerSlidingTabStrip.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                PagerSlidingTabStrip.this.f975PH.setCurrentItem(i);
            }
        });
        view.setPadding(this.f990PW, 0, this.f990PW, 0);
        this.f974PG.addView(view, i, this.f985PR ? this.f971PD : this.f970PC);
    }

    /* renamed from: nU */
    private void m13257nU() {
        for (int i = 0; i < this.f976PI; i++) {
            View childAt = this.f974PG.getChildAt(i);
            childAt.setBackgroundResource(this.f998Qf);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                textView.setTextSize(0, this.f992PZ);
                textView.setTypeface(this.f995Qc, this.f996Qd);
                if (this.f1000Qh == i) {
                    textView.setTextColor(this.f994Qb);
                } else {
                    textView.setTextColor(this.f993Qa);
                }
                if (this.f986PS) {
                    textView.setText(textView.getText().toString().toUpperCase(this.locale));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A */
    public void m13267A(int i, int i2) {
        if (this.f976PI != 0) {
            int left = this.f974PG.getChildAt(i).getLeft() + i2;
            if (i > 0 || i2 > 0) {
                left -= this.f987PT;
            }
            if (left != this.f997Qe) {
                this.f997Qe = left;
                scrollTo(left, 0);
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        super.onDraw(canvas);
        if (!isInEditMode() && this.f976PI != 0) {
            int height = getHeight();
            View childAt = this.f974PG.getChildAt(this.f977PJ);
            float left = childAt.getLeft();
            float right = childAt.getRight();
            if (this.f978PK <= 0.0f || this.f977PJ >= this.f976PI - 1) {
                f = right;
                f2 = left;
            } else {
                View childAt2 = this.f974PG.getChildAt(this.f977PJ + 1);
                float left2 = (left * (1.0f - this.f978PK)) + (childAt2.getLeft() * this.f978PK);
                f = (right * (1.0f - this.f978PK)) + (childAt2.getRight() * this.f978PK);
                f2 = left2;
            }
            this.f979PL.setColor(this.f983PP);
            canvas.drawRect(0.0f, height - this.f989PV, this.f974PG.getWidth(), height, this.f979PL);
            this.f979PL.setColor(this.f981PN);
            canvas.drawRect(f2, height - this.f988PU, f, height, this.f979PL);
            this.f980PM.setColor(this.f984PQ);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < this.f976PI - 1) {
                    View childAt3 = this.f974PG.getChildAt(i2);
                    canvas.drawLine(childAt3.getRight(), this.dividerPadding, childAt3.getRight(), height - this.dividerPadding, this.f980PM);
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: com.kingroot.common.uilib.PagerSlidingTabStrip$b */
    /* loaded from: classes.dex */
    class C0549b implements ViewPager.OnPageChangeListener {
        private C0549b() {
        }

        @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            PagerSlidingTabStrip.this.f977PJ = i;
            PagerSlidingTabStrip.this.f978PK = f;
            PagerSlidingTabStrip.this.m13267A(i, (int) (PagerSlidingTabStrip.this.f974PG.getChildAt(i).getWidth() * f));
            PagerSlidingTabStrip.this.invalidate();
            if (PagerSlidingTabStrip.this.f973PF != null) {
                PagerSlidingTabStrip.this.f973PF.onPageScrolled(i, f, i2);
            }
        }

        @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                PagerSlidingTabStrip.this.m13267A(PagerSlidingTabStrip.this.f975PH.getCurrentItem(), 0);
            }
            if (PagerSlidingTabStrip.this.f973PF != null) {
                PagerSlidingTabStrip.this.f973PF.onPageScrollStateChanged(i);
            }
        }

        @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            PagerSlidingTabStrip.this.f1000Qh = i;
            PagerSlidingTabStrip.this.notifyDataSetChanged();
            if (PagerSlidingTabStrip.this.f973PF != null) {
                PagerSlidingTabStrip.this.f973PF.onPageSelected(i);
            }
        }
    }

    public void setIndicatorColor(int i) {
        this.f981PN = i;
        invalidate();
    }

    public void setIndicatorColorResource(int i) {
        this.f981PN = getResources().getColor(i);
        invalidate();
    }

    public int getIndicatorColor() {
        return this.f981PN;
    }

    public void setIndicatorHeight(int i) {
        this.f988PU = i;
        invalidate();
    }

    public int getIndicatorHeight() {
        return this.f988PU;
    }

    public void setUnderlineColor(int i) {
        this.f983PP = i;
        invalidate();
    }

    public void setUnderlineColorResource(int i) {
        this.f983PP = getResources().getColor(i);
        invalidate();
    }

    public int getUnderlineColor() {
        return this.f983PP;
    }

    public void setDividerColor(int i) {
        this.f984PQ = i;
        invalidate();
    }

    public void setDividerColorResource(int i) {
        this.f984PQ = getResources().getColor(i);
        invalidate();
    }

    public int getDividerColor() {
        return this.f984PQ;
    }

    public void setUnderlineHeight(int i) {
        this.f989PV = i;
        invalidate();
    }

    public int getUnderlineHeight() {
        return this.f989PV;
    }

    public void setDividerPadding(int i) {
        this.dividerPadding = i;
        invalidate();
    }

    public int getDividerPadding() {
        return this.dividerPadding;
    }

    public void setScrollOffset(int i) {
        this.f987PT = i;
        invalidate();
    }

    public int getScrollOffset() {
        return this.f987PT;
    }

    public void setShouldExpand(boolean z) {
        this.f985PR = z;
        requestLayout();
    }

    public boolean getShouldExpand() {
        return this.f985PR;
    }

    public void setAllCaps(boolean z) {
        this.f986PS = z;
    }

    public void setTextSize(int i) {
        this.f992PZ = i;
        m13257nU();
    }

    public int getTextSize() {
        return this.f992PZ;
    }

    public void setTextColor(int i) {
        this.f993Qa = i;
        m13257nU();
    }

    public void setTextColorResource(int i) {
        this.f993Qa = getResources().getColor(i);
        m13257nU();
    }

    public int getTextColor() {
        return this.f993Qa;
    }

    public void setTabBackground(int i) {
        this.f998Qf = i;
    }

    public int getTabBackground() {
        return this.f998Qf;
    }

    public void setTabPaddingLeftRight(int i) {
        this.f990PW = i;
        m13257nU();
    }

    public int getTabPaddingLeftRight() {
        return this.f990PW;
    }

    public int getmCurrentTab() {
        return this.f1000Qh;
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f977PJ = savedState.f1004PJ;
        requestLayout();
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1004PJ = this.f977PJ;
        return savedState;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.kingroot.common.uilib.PagerSlidingTabStrip.SavedState.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: q */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: bN */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: PJ */
        int f1004PJ;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f1004PJ = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1004PJ);
        }
    }
}
