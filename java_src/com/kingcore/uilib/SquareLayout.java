package com.kingcore.uilib;

import android.content.Context;
import android.support.percent.PercentRelativeLayout;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public class SquareLayout extends PercentRelativeLayout {
    public SquareLayout(Context context) {
        super(context);
    }

    public SquareLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SquareLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.percent.PercentRelativeLayout, android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int min = Math.min(getDefaultSize(100, i), getDefaultSize(100, i2));
        setMeasuredDimension(min, min);
    }
}
