package com.kingroot.kinguser.gamebox.foreground.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.GridView;
/* loaded from: classes.dex */
public class GameboxGridview extends GridView {
    public GameboxGridview(Context context) {
        super(context);
    }

    public GameboxGridview(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GameboxGridview(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
    }
}
