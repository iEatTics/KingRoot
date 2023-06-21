package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ScrollView;
/* loaded from: classes.dex */
public class NoAutoScrollView extends ScrollView {
    public NoAutoScrollView(Context context) {
        super(context);
    }

    public NoAutoScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public NoAutoScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.ScrollView
    protected int computeScrollDeltaToGetChildRectOnScreen(Rect rect) {
        return 0;
    }
}
