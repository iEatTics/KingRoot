package android.support.p007v7.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Build;
import android.support.p007v7.appcompat.C0189R;
import android.support.p007v7.internal.view.menu.MenuBuilder;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.support.p007v7.internal.widget.LinearLayoutICS;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
/* renamed from: android.support.v7.internal.view.menu.ActionMenuView */
/* loaded from: classes.dex */
public class ActionMenuView extends LinearLayoutICS implements MenuBuilder.ItemInvoker, MenuView {
    static final int GENERATED_ITEM_PADDING = 4;
    static final int MIN_CELL_SIZE = 56;
    private static final String TAG = "ActionMenuView";
    private boolean mFormatItems;
    private int mFormatItemsWidth;
    private int mGeneratedItemPadding;
    private int mMaxItemHeight;
    private int mMeasuredExtraWidth;
    private MenuBuilder mMenu;
    private int mMinCellSize;
    private ActionMenuPresenter mPresenter;
    private boolean mReserveOverflow;

    /* renamed from: android.support.v7.internal.view.menu.ActionMenuView$ActionMenuChildView */
    /* loaded from: classes.dex */
    public interface ActionMenuChildView {
        boolean needsDividerAfter();

        boolean needsDividerBefore();
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.mMinCellSize = (int) (56.0f * f);
        this.mGeneratedItemPadding = (int) (f * 4.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0189R.styleable.ActionBar, C0189R.attr.actionBarStyle, 0);
        this.mMaxItemHeight = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        obtainStyledAttributes.recycle();
    }

    public void setPresenter(ActionMenuPresenter actionMenuPresenter) {
        this.mPresenter = actionMenuPresenter;
    }

    public boolean isExpandedFormat() {
        return this.mFormatItems;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (Build.VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        this.mPresenter.updateMenuView(false);
        if (this.mPresenter != null && this.mPresenter.isOverflowMenuShowing()) {
            this.mPresenter.hideOverflowMenu();
            this.mPresenter.showOverflowMenu();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        boolean z = this.mFormatItems;
        this.mFormatItems = View.MeasureSpec.getMode(i) == 1073741824;
        if (z != this.mFormatItems) {
            this.mFormatItemsWidth = 0;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (this.mFormatItems && this.mMenu != null && mode != this.mFormatItemsWidth) {
            this.mFormatItemsWidth = mode;
            this.mMenu.onItemsChanged(true);
        }
        if (this.mFormatItems) {
            onMeasureExactFormat(i, i2);
            return;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i3).getLayoutParams();
            layoutParams.rightMargin = 0;
            layoutParams.leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0202  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void onMeasureExactFormat(int i, int i2) {
        long j;
        boolean z;
        int i3;
        float f;
        int i4;
        boolean z2;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        long j2;
        int i11;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int makeMeasureSpec = mode == 1073741824 ? View.MeasureSpec.makeMeasureSpec(size2 - paddingTop, 1073741824) : View.MeasureSpec.makeMeasureSpec(Math.min(this.mMaxItemHeight, size2 - paddingTop), Integer.MIN_VALUE);
        int i12 = size - paddingRight;
        int i13 = i12 / this.mMinCellSize;
        int i14 = i12 % this.mMinCellSize;
        if (i13 == 0) {
            setMeasuredDimension(i12, 0);
            return;
        }
        int i15 = this.mMinCellSize + (i14 / i13);
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        int i19 = 0;
        boolean z3 = false;
        long j3 = 0;
        int childCount = getChildCount();
        int i20 = 0;
        while (i20 < childCount) {
            View childAt = getChildAt(i20);
            if (childAt.getVisibility() == 8) {
                i10 = i19;
                i9 = i16;
                j2 = j3;
                i11 = i13;
                i8 = i17;
            } else {
                boolean z4 = childAt instanceof ActionMenuItemView;
                int i21 = i19 + 1;
                if (z4) {
                    childAt.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
                }
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                layoutParams.expanded = false;
                layoutParams.extraPixels = 0;
                layoutParams.cellsUsed = 0;
                layoutParams.expandable = false;
                layoutParams.leftMargin = 0;
                layoutParams.rightMargin = 0;
                layoutParams.preventEdgeOffset = z4 && ((ActionMenuItemView) childAt).hasText();
                int measureChildForCells = measureChildForCells(childAt, i15, layoutParams.isOverflowButton ? 1 : i13, makeMeasureSpec, paddingTop);
                int max = Math.max(i17, measureChildForCells);
                int i22 = layoutParams.expandable ? i18 + 1 : i18;
                boolean z5 = layoutParams.isOverflowButton ? true : z3;
                int i23 = i13 - measureChildForCells;
                int max2 = Math.max(i16, childAt.getMeasuredHeight());
                if (measureChildForCells == 1) {
                    long j4 = (1 << i20) | j3;
                    i11 = i23;
                    z3 = z5;
                    i9 = max2;
                    i10 = i21;
                    j2 = j4;
                    i8 = max;
                    i18 = i22;
                } else {
                    i18 = i22;
                    i8 = max;
                    i9 = max2;
                    i10 = i21;
                    boolean z6 = z5;
                    j2 = j3;
                    i11 = i23;
                    z3 = z6;
                }
            }
            i20++;
            i17 = i8;
            i16 = i9;
            i13 = i11;
            j3 = j2;
            i19 = i10;
        }
        boolean z7 = z3 && i19 == 2;
        boolean z8 = false;
        long j5 = j3;
        int i24 = i13;
        while (i18 > 0 && i24 > 0) {
            int i25 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
            long j6 = 0;
            int i26 = 0;
            int i27 = 0;
            while (i27 < childCount) {
                LayoutParams layoutParams2 = (LayoutParams) getChildAt(i27).getLayoutParams();
                if (!layoutParams2.expandable) {
                    i6 = i26;
                    i7 = i25;
                } else if (layoutParams2.cellsUsed < i25) {
                    i7 = layoutParams2.cellsUsed;
                    j6 = 1 << i27;
                    i6 = 1;
                } else if (layoutParams2.cellsUsed == i25) {
                    j6 |= 1 << i27;
                    i6 = i26 + 1;
                    i7 = i25;
                } else {
                    i6 = i26;
                    i7 = i25;
                }
                i27++;
                i25 = i7;
                i26 = i6;
            }
            long j7 = j5 | j6;
            if (i26 > i24) {
                j = j7;
                break;
            }
            int i28 = i25 + 1;
            int i29 = 0;
            int i30 = i24;
            long j8 = j7;
            while (i29 < childCount) {
                View childAt2 = getChildAt(i29);
                LayoutParams layoutParams3 = (LayoutParams) childAt2.getLayoutParams();
                if (((1 << i29) & j6) == 0) {
                    if (layoutParams3.cellsUsed == i28) {
                        j8 |= 1 << i29;
                        i5 = i30;
                    } else {
                        i5 = i30;
                    }
                } else {
                    if (z7 && layoutParams3.preventEdgeOffset && i30 == 1) {
                        childAt2.setPadding(this.mGeneratedItemPadding + i15, 0, this.mGeneratedItemPadding, 0);
                    }
                    layoutParams3.cellsUsed++;
                    layoutParams3.expanded = true;
                    i5 = i30 - 1;
                }
                i29++;
                i30 = i5;
            }
            j5 = j8;
            z8 = true;
            i24 = i30;
        }
        j = j5;
        boolean z9 = !z3 && i19 == 1;
        if (i24 <= 0 || j == 0 || (i24 >= i19 - 1 && !z9 && i17 <= 1)) {
            z = z8;
            i3 = i24;
        } else {
            float bitCount = Long.bitCount(j);
            if (!z9) {
                if ((1 & j) != 0 && !((LayoutParams) getChildAt(0).getLayoutParams()).preventEdgeOffset) {
                    bitCount -= 0.5f;
                }
                if (((1 << (childCount - 1)) & j) != 0 && !((LayoutParams) getChildAt(childCount - 1).getLayoutParams()).preventEdgeOffset) {
                    f = bitCount - 0.5f;
                    int i31 = f <= 0.0f ? (int) ((i24 * i15) / f) : 0;
                    i4 = 0;
                    z = z8;
                    while (i4 < childCount) {
                        if (((1 << i4) & j) == 0) {
                            z2 = z;
                        } else {
                            View childAt3 = getChildAt(i4);
                            LayoutParams layoutParams4 = (LayoutParams) childAt3.getLayoutParams();
                            if (childAt3 instanceof ActionMenuItemView) {
                                layoutParams4.extraPixels = i31;
                                layoutParams4.expanded = true;
                                if (i4 == 0 && !layoutParams4.preventEdgeOffset) {
                                    layoutParams4.leftMargin = (-i31) / 2;
                                }
                                z2 = true;
                            } else if (layoutParams4.isOverflowButton) {
                                layoutParams4.extraPixels = i31;
                                layoutParams4.expanded = true;
                                layoutParams4.rightMargin = (-i31) / 2;
                                z2 = true;
                            } else {
                                if (i4 != 0) {
                                    layoutParams4.leftMargin = i31 / 2;
                                }
                                if (i4 != childCount - 1) {
                                    layoutParams4.rightMargin = i31 / 2;
                                }
                                z2 = z;
                            }
                        }
                        i4++;
                        z = z2;
                    }
                    i3 = 0;
                }
            }
            f = bitCount;
            if (f <= 0.0f) {
            }
            i4 = 0;
            z = z8;
            while (i4 < childCount) {
            }
            i3 = 0;
        }
        if (z) {
            int i32 = 0;
            while (true) {
                int i33 = i32;
                if (i33 >= childCount) {
                    break;
                }
                View childAt4 = getChildAt(i33);
                LayoutParams layoutParams5 = (LayoutParams) childAt4.getLayoutParams();
                if (layoutParams5.expanded) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec(layoutParams5.extraPixels + (layoutParams5.cellsUsed * i15), 1073741824), makeMeasureSpec);
                }
                i32 = i33 + 1;
            }
        }
        if (mode == 1073741824) {
            i16 = size2;
        }
        setMeasuredDimension(i12, i16);
        this.mMeasuredExtraWidth = i3 * i15;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int measureChildForCells(View view, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = false;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.hasText();
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i * i2, Integer.MIN_VALUE), makeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            i5 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i5++;
            }
            if (z2 && i5 < 2) {
                i5 = 2;
            }
        }
        if (!layoutParams.isOverflowButton && z2) {
            z = true;
        }
        layoutParams.expandable = z;
        layoutParams.cellsUsed = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i5 * i, 1073741824), makeMeasureSpec);
        return i5;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z2;
        if (!this.mFormatItems) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i9 = (i2 + i4) / 2;
        int supportDividerWidth = getSupportDividerWidth();
        int i10 = 0;
        int i11 = 0;
        int paddingRight = ((i3 - i) - getPaddingRight()) - getPaddingLeft();
        boolean z3 = false;
        int i12 = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() == 8) {
                z2 = z3;
                i6 = paddingRight;
                i7 = i11;
                i8 = i10;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (layoutParams.isOverflowButton) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (hasSupportDividerBeforeChildAt(i12)) {
                        measuredWidth += supportDividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    int width = (getWidth() - getPaddingRight()) - layoutParams.rightMargin;
                    int i13 = i9 - (measuredHeight / 2);
                    childAt.layout(width - measuredWidth, i13, width, measuredHeight + i13);
                    i6 = paddingRight - measuredWidth;
                    z2 = true;
                    i7 = i11;
                    i8 = i10;
                } else {
                    int measuredWidth2 = childAt.getMeasuredWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
                    int i14 = i10 + measuredWidth2;
                    int i15 = paddingRight - measuredWidth2;
                    if (hasSupportDividerBeforeChildAt(i12)) {
                        i14 += supportDividerWidth;
                    }
                    boolean z4 = z3;
                    i6 = i15;
                    i7 = i11 + 1;
                    i8 = i14;
                    z2 = z4;
                }
            }
            i12++;
            i10 = i8;
            i11 = i7;
            paddingRight = i6;
            z3 = z2;
        }
        if (childCount == 1 && !z3) {
            View childAt2 = getChildAt(0);
            int measuredWidth3 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i16 = ((i3 - i) / 2) - (measuredWidth3 / 2);
            int i17 = i9 - (measuredHeight2 / 2);
            childAt2.layout(i16, i17, measuredWidth3 + i16, measuredHeight2 + i17);
            return;
        }
        int i18 = i11 - (z3 ? 0 : 1);
        int max = Math.max(0, i18 > 0 ? paddingRight / i18 : 0);
        int paddingLeft = getPaddingLeft();
        int i19 = 0;
        while (i19 < childCount) {
            View childAt3 = getChildAt(i19);
            LayoutParams layoutParams2 = (LayoutParams) childAt3.getLayoutParams();
            if (childAt3.getVisibility() == 8) {
                i5 = paddingLeft;
            } else if (layoutParams2.isOverflowButton) {
                i5 = paddingLeft;
            } else {
                int i20 = paddingLeft + layoutParams2.leftMargin;
                int measuredWidth4 = childAt3.getMeasuredWidth();
                int measuredHeight3 = childAt3.getMeasuredHeight();
                int i21 = i9 - (measuredHeight3 / 2);
                childAt3.layout(i20, i21, i20 + measuredWidth4, measuredHeight3 + i21);
                i5 = layoutParams2.rightMargin + measuredWidth4 + max + i20;
            }
            i19++;
            paddingLeft = i5;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mPresenter.dismissPopupMenus();
    }

    public boolean isOverflowReserved() {
        return this.mReserveOverflow;
    }

    public void setOverflowReserved(boolean z) {
        this.mReserveOverflow = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 16;
        return layoutParams;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = new LayoutParams((LayoutParams) layoutParams);
            if (layoutParams2.gravity <= 0) {
                layoutParams2.gravity = 16;
                return layoutParams2;
            }
            return layoutParams2;
        }
        return generateDefaultLayoutParams();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams != null && (layoutParams instanceof LayoutParams);
    }

    public LayoutParams generateOverflowButtonLayoutParams() {
        LayoutParams generateDefaultLayoutParams = generateDefaultLayoutParams();
        generateDefaultLayoutParams.isOverflowButton = true;
        return generateDefaultLayoutParams;
    }

    @Override // android.support.p007v7.internal.view.menu.MenuBuilder.ItemInvoker
    public boolean invokeItem(MenuItemImpl menuItemImpl) {
        return this.mMenu.performItemAction(menuItemImpl, 0);
    }

    @Override // android.support.p007v7.internal.view.menu.MenuView
    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.support.p007v7.internal.view.menu.MenuView
    public void initialize(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    @Override // android.support.p007v7.internal.widget.LinearLayoutICS
    protected boolean hasSupportDividerBeforeChildAt(int i) {
        View childAt = getChildAt(i - 1);
        View childAt2 = getChildAt(i);
        boolean z = false;
        if (i < getChildCount() && (childAt instanceof ActionMenuChildView)) {
            z = false | ((ActionMenuChildView) childAt).needsDividerAfter();
        }
        return (i <= 0 || !(childAt2 instanceof ActionMenuChildView)) ? z : ((ActionMenuChildView) childAt2).needsDividerBefore() | z;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    /* renamed from: android.support.v7.internal.view.menu.ActionMenuView$LayoutParams */
    /* loaded from: classes.dex */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        @ViewDebug.ExportedProperty
        public int cellsUsed;
        @ViewDebug.ExportedProperty
        public boolean expandable;
        public boolean expanded;
        @ViewDebug.ExportedProperty
        public int extraPixels;
        @ViewDebug.ExportedProperty
        public boolean isOverflowButton;
        @ViewDebug.ExportedProperty
        public boolean preventEdgeOffset;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((LinearLayout.LayoutParams) layoutParams);
            this.isOverflowButton = layoutParams.isOverflowButton;
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.isOverflowButton = false;
        }

        public LayoutParams(int i, int i2, boolean z) {
            super(i, i2);
            this.isOverflowButton = z;
        }
    }
}
