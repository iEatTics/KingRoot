package android.support.p007v7.widget;

import android.support.p007v7.widget.RecyclerView;
import android.view.View;
/* renamed from: android.support.v7.widget.OrientationHelper */
/* loaded from: classes.dex */
public abstract class OrientationHelper {
    public static final int HORIZONTAL = 0;
    private static final int INVALID_SIZE = Integer.MIN_VALUE;
    public static final int VERTICAL = 1;
    private int mLastTotalSpace;
    protected final RecyclerView.LayoutManager mLayoutManager;

    public abstract int getDecoratedEnd(View view);

    public abstract int getDecoratedMeasurement(View view);

    public abstract int getDecoratedMeasurementInOther(View view);

    public abstract int getDecoratedStart(View view);

    public abstract int getEnd();

    public abstract int getEndAfterPadding();

    public abstract int getEndPadding();

    public abstract int getMode();

    public abstract int getModeInOther();

    public abstract int getStartAfterPadding();

    public abstract int getTotalSpace();

    public abstract void offsetChild(View view, int i);

    public abstract void offsetChildren(int i);

    private OrientationHelper(RecyclerView.LayoutManager layoutManager) {
        this.mLastTotalSpace = Integer.MIN_VALUE;
        this.mLayoutManager = layoutManager;
    }

    public void onLayoutComplete() {
        this.mLastTotalSpace = getTotalSpace();
    }

    public int getTotalSpaceChange() {
        if (Integer.MIN_VALUE == this.mLastTotalSpace) {
            return 0;
        }
        return getTotalSpace() - this.mLastTotalSpace;
    }

    public static OrientationHelper createOrientationHelper(RecyclerView.LayoutManager layoutManager, int i) {
        switch (i) {
            case 0:
                return createHorizontalHelper(layoutManager);
            case 1:
                return createVerticalHelper(layoutManager);
            default:
                throw new IllegalArgumentException("invalid orientation");
        }
    }

    public static OrientationHelper createHorizontalHelper(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: android.support.v7.widget.OrientationHelper.1
            @Override // android.support.p007v7.widget.OrientationHelper
            public int getEndAfterPadding() {
                return this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingRight();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getEnd() {
                return this.mLayoutManager.getWidth();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public void offsetChildren(int i) {
                this.mLayoutManager.offsetChildrenHorizontal(i);
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getStartAfterPadding() {
                return this.mLayoutManager.getPaddingLeft();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.mLayoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.mLayoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedEnd(View view) {
                return ((RecyclerView.LayoutParams) view.getLayoutParams()).rightMargin + this.mLayoutManager.getDecoratedRight(view);
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedStart(View view) {
                return this.mLayoutManager.getDecoratedLeft(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).leftMargin;
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getTotalSpace() {
                return (this.mLayoutManager.getWidth() - this.mLayoutManager.getPaddingLeft()) - this.mLayoutManager.getPaddingRight();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public void offsetChild(View view, int i) {
                view.offsetLeftAndRight(i);
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getEndPadding() {
                return this.mLayoutManager.getPaddingRight();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getMode() {
                return this.mLayoutManager.getWidthMode();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getModeInOther() {
                return this.mLayoutManager.getHeightMode();
            }
        };
    }

    public static OrientationHelper createVerticalHelper(RecyclerView.LayoutManager layoutManager) {
        return new OrientationHelper(layoutManager) { // from class: android.support.v7.widget.OrientationHelper.2
            @Override // android.support.p007v7.widget.OrientationHelper
            public int getEndAfterPadding() {
                return this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingBottom();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getEnd() {
                return this.mLayoutManager.getHeight();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public void offsetChildren(int i) {
                this.mLayoutManager.offsetChildrenVertical(i);
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getStartAfterPadding() {
                return this.mLayoutManager.getPaddingTop();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedMeasurement(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.bottomMargin + this.mLayoutManager.getDecoratedMeasuredHeight(view) + layoutParams.topMargin;
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedMeasurementInOther(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                return layoutParams.rightMargin + this.mLayoutManager.getDecoratedMeasuredWidth(view) + layoutParams.leftMargin;
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedEnd(View view) {
                return ((RecyclerView.LayoutParams) view.getLayoutParams()).bottomMargin + this.mLayoutManager.getDecoratedBottom(view);
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getDecoratedStart(View view) {
                return this.mLayoutManager.getDecoratedTop(view) - ((RecyclerView.LayoutParams) view.getLayoutParams()).topMargin;
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getTotalSpace() {
                return (this.mLayoutManager.getHeight() - this.mLayoutManager.getPaddingTop()) - this.mLayoutManager.getPaddingBottom();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public void offsetChild(View view, int i) {
                view.offsetTopAndBottom(i);
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getEndPadding() {
                return this.mLayoutManager.getPaddingBottom();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getMode() {
                return this.mLayoutManager.getHeightMode();
            }

            @Override // android.support.p007v7.widget.OrientationHelper
            public int getModeInOther() {
                return this.mLayoutManager.getWidthMode();
            }
        };
    }
}
