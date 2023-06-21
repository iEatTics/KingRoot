package com.kingroot.kinguser;

import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.widget.ListView;
import android.widget.ScrollView;
/* renamed from: com.kingroot.kinguser.wt */
/* loaded from: classes.dex */
public class C3858wt {
    /* renamed from: a */
    public int m1496a(View view, boolean z) {
        if (view == null) {
            return 0;
        }
        if (view instanceof ScrollView) {
            if (z) {
                return view.getScrollY();
            }
            ScrollView scrollView = (ScrollView) view;
            return scrollView.getChildAt(0).getBottom() - (scrollView.getHeight() + scrollView.getScrollY());
        } else if ((view instanceof ListView) && ((ListView) view).getChildCount() > 0) {
            ListView listView = (ListView) view;
            if (listView.getAdapter() == null) {
                return 0;
            }
            if (z) {
                View childAt = listView.getChildAt(0);
                return (listView.getFirstVisiblePosition() * childAt.getHeight()) - childAt.getTop();
            }
            View childAt2 = listView.getChildAt(listView.getChildCount() - 1);
            return (childAt2.getBottom() + (((listView.getAdapter().getCount() - listView.getLastVisiblePosition()) - 1) * childAt2.getHeight())) - listView.getBottom();
        } else if (!(view instanceof RecyclerView) || ((RecyclerView) view).getChildCount() <= 0) {
            return 0;
        } else {
            RecyclerView recyclerView = (RecyclerView) view;
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (recyclerView.getAdapter() == null) {
                return 0;
            }
            if (z) {
                View childAt3 = recyclerView.getChildAt(0);
                return (recyclerView.getChildLayoutPosition(childAt3) * layoutManager.getDecoratedMeasuredHeight(childAt3)) - layoutManager.getDecoratedTop(childAt3);
            }
            View childAt4 = recyclerView.getChildAt(recyclerView.getChildCount() - 1);
            return (layoutManager.getDecoratedBottom(childAt4) + ((recyclerView.getAdapter().getItemCount() - 1) * layoutManager.getDecoratedMeasuredHeight(childAt4))) - recyclerView.getBottom();
        }
    }
}
