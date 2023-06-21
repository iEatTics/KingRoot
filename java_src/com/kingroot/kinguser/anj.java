package com.kingroot.kinguser;

import android.graphics.Rect;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class anj extends RecyclerView.ItemDecoration {
    @Override // android.support.p007v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        if (recyclerView.getChildAdapterPosition(view) == 0) {
            rect.set(C3953zi.m1311pr().getDimensionPixelOffset(R.dimen.apps_market_topic_item_padding_left), 0, C3953zi.m1311pr().getDimensionPixelOffset(R.dimen.apps_market_topic_item_padding_right), 0);
        } else {
            rect.set(0, 0, C3953zi.m1311pr().getDimensionPixelOffset(R.dimen.apps_market_topic_item_padding_right), 0);
        }
    }
}
