package com.kingroot.kinguser.toolbox.view;

import android.content.Context;
import android.util.AttributeSet;
import com.kingroot.common.uilib.TransparentListView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ToolBoxListView extends TransparentListView {
    public ToolBoxListView(Context context) {
        super(context);
        m2155ZL();
    }

    public ToolBoxListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m2155ZL();
    }

    public ToolBoxListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m2155ZL();
    }

    /* renamed from: ZL */
    private void m2155ZL() {
        setVerticalFadingEdgeEnabled(false);
        setCacheColorHint(0);
        setBackgroundResource(R.color.transparent);
        setDivider(null);
        requestDisallowInterceptTouchEvent(true);
    }
}
