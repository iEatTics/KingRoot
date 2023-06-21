package android.support.p007v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.support.p007v7.appcompat.C0189R;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: android.support.v7.internal.widget.LinearLayoutICS */
/* loaded from: classes.dex */
public class LinearLayoutICS extends LinearLayout {
    private static final int SHOW_DIVIDER_BEGINNING = 1;
    private static final int SHOW_DIVIDER_END = 4;
    private static final int SHOW_DIVIDER_MIDDLE = 2;
    private static final int SHOW_DIVIDER_NONE = 0;
    private final Drawable mDivider;
    private final int mDividerHeight;
    private final int mDividerPadding;
    private final int mDividerWidth;
    private final int mShowDividers;

    public LinearLayoutICS(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0189R.styleable.LinearLayoutICS);
        this.mDivider = obtainStyledAttributes.getDrawable(0);
        if (this.mDivider != null) {
            this.mDividerWidth = this.mDivider.getIntrinsicWidth();
            this.mDividerHeight = this.mDivider.getIntrinsicHeight();
        } else {
            this.mDividerWidth = 0;
            this.mDividerHeight = 0;
        }
        this.mShowDividers = obtainStyledAttributes.getInt(1, 0);
        this.mDividerPadding = obtainStyledAttributes.getDimensionPixelSize(2, 0);
        obtainStyledAttributes.recycle();
        setWillNotDraw(this.mDivider == null);
    }

    public int getSupportDividerWidth() {
        return this.mDividerWidth;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDivider != null) {
            if (getOrientation() == 1) {
                drawSupportDividersVertical(canvas);
            } else {
                drawSupportDividersHorizontal(canvas);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        if (this.mDivider != null) {
            int indexOfChild = indexOfChild(view);
            int childCount = getChildCount();
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            if (getOrientation() == 1) {
                if (hasSupportDividerBeforeChildAt(indexOfChild)) {
                    layoutParams.topMargin = this.mDividerHeight;
                } else if (indexOfChild == childCount - 1 && hasSupportDividerBeforeChildAt(childCount)) {
                    layoutParams.bottomMargin = this.mDividerHeight;
                }
            } else if (hasSupportDividerBeforeChildAt(indexOfChild)) {
                layoutParams.leftMargin = this.mDividerWidth;
            } else if (indexOfChild == childCount - 1 && hasSupportDividerBeforeChildAt(childCount)) {
                layoutParams.rightMargin = this.mDividerWidth;
            }
        }
        super.measureChildWithMargins(view, i, i2, i3, i4);
    }

    void drawSupportDividersVertical(Canvas canvas) {
        int bottom;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && hasSupportDividerBeforeChildAt(i)) {
                drawSupportHorizontalDivider(canvas, childAt.getTop() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).topMargin);
            }
        }
        if (hasSupportDividerBeforeChildAt(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            if (childAt2 == null) {
                bottom = (getHeight() - getPaddingBottom()) - this.mDividerHeight;
            } else {
                bottom = childAt2.getBottom();
            }
            drawSupportHorizontalDivider(canvas, bottom);
        }
    }

    void drawSupportDividersHorizontal(Canvas canvas) {
        int right;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt != null && childAt.getVisibility() != 8 && hasSupportDividerBeforeChildAt(i)) {
                drawSupportVerticalDivider(canvas, childAt.getLeft() - ((LinearLayout.LayoutParams) childAt.getLayoutParams()).leftMargin);
            }
        }
        if (hasSupportDividerBeforeChildAt(childCount)) {
            View childAt2 = getChildAt(childCount - 1);
            if (childAt2 == null) {
                right = (getWidth() - getPaddingRight()) - this.mDividerWidth;
            } else {
                right = childAt2.getRight();
            }
            drawSupportVerticalDivider(canvas, right);
        }
    }

    void drawSupportHorizontalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, i, (getWidth() - getPaddingRight()) - this.mDividerPadding, this.mDividerHeight + i);
        this.mDivider.draw(canvas);
    }

    void drawSupportVerticalDivider(Canvas canvas, int i) {
        this.mDivider.setBounds(i, getPaddingTop() + this.mDividerPadding, this.mDividerWidth + i, (getHeight() - getPaddingBottom()) - this.mDividerPadding);
        this.mDivider.draw(canvas);
    }

    protected boolean hasSupportDividerBeforeChildAt(int i) {
        if (i == 0) {
            return (this.mShowDividers & 1) != 0;
        } else if (i == getChildCount()) {
            return (this.mShowDividers & 4) != 0;
        } else if ((this.mShowDividers & 2) != 0) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (getChildAt(i2).getVisibility() != 8) {
                    return true;
                }
            }
            return false;
        } else {
            return false;
        }
    }
}
