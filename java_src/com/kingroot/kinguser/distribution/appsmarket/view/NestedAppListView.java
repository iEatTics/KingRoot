package com.kingroot.kinguser.distribution.appsmarket.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
/* loaded from: classes.dex */
public class NestedAppListView extends AppListView implements View.OnTouchListener, AbsListView.OnScrollListener {
    private int aFa;
    private int mMaxItemHeight;

    public NestedAppListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMaxItemHeight = 99;
        this.aFa = -1;
        setOnScrollListener(this);
        setOnTouchListener(this);
        requestDisallowInterceptTouchEvent(true);
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.view.AppListView, android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (getAdapter() != null && getAdapter().getCount() > this.mMaxItemHeight && this.aFa == 2) {
            scrollBy(0, -1);
        }
    }

    public void setMaxItemHeight(int i) {
        this.mMaxItemHeight = i;
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.view.AppListView, android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        int i3 = 0;
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824) {
            ListAdapter adapter = getAdapter();
            if (adapter != null && !adapter.isEmpty()) {
                int i4 = 0;
                while (i3 < adapter.getCount() && i3 < this.mMaxItemHeight) {
                    View view = adapter.getView(i3, null, this);
                    if (view instanceof ViewGroup) {
                        view.setLayoutParams(new AbsListView.LayoutParams(-2, -2));
                    }
                    view.measure(i, i2);
                    i4 += view.getMeasuredHeight();
                    i3++;
                }
                i3 = (i3 * getDividerHeight()) + i4;
            }
            if (mode == Integer.MIN_VALUE && i3 > size && i3 > size) {
                i3 = size;
            }
        } else {
            i3 = getMeasuredHeight();
        }
        setMeasuredDimension(getMeasuredWidth(), i3);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (getAdapter() != null && getAdapter().getCount() > this.mMaxItemHeight && this.aFa == 2) {
            scrollBy(0, 1);
        }
        return false;
    }
}
