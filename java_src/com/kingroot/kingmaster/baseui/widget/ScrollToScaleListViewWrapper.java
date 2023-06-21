package com.kingroot.kingmaster.baseui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ScrollToScaleListViewWrapper extends ScrollToScaleBase {

    /* renamed from: Vd */
    private ListView f1200Vd;

    public ScrollToScaleListViewWrapper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f1200Vd = (ListView) findViewById(R.id.list_view);
        if (this.f1200Vd == null) {
            throw new IllegalStateException("No ListView child found with id R.id.list_view");
        }
    }

    @Override // com.kingroot.kinguser.adj
    /* renamed from: cq */
    public boolean mo12540cq(int i) {
        ListView listView = this.f1200Vd;
        if (listView == null || i <= 0) {
            return true;
        }
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        View childAt = listView.getChildAt(0);
        return firstVisiblePosition <= 0 && (childAt == null || childAt.getTop() >= 0);
    }
}
