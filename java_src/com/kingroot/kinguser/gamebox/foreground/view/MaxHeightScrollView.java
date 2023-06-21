package com.kingroot.kinguser.gamebox.foreground.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;
/* loaded from: classes.dex */
public class MaxHeightScrollView extends ScrollView {
    private Context mContext;
    private int mMaxHeight;

    public MaxHeightScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        setVerticalFadingEdgeEnabled(true);
    }

    @Override // android.widget.ScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredHeight = getMeasuredHeight();
        int size = View.MeasureSpec.getSize(i);
        if (measuredHeight > this.mMaxHeight) {
            setMeasuredDimension(size, this.mMaxHeight);
        } else {
            setMeasuredDimension(size, measuredHeight);
        }
    }
}
