package android.support.p007v7.widget.util;

import android.support.p007v7.util.SortedList;
import android.support.p007v7.widget.RecyclerView;
/* renamed from: android.support.v7.widget.util.SortedListAdapterCallback */
/* loaded from: classes.dex */
public abstract class SortedListAdapterCallback<T2> extends SortedList.Callback<T2> {
    final RecyclerView.Adapter mAdapter;

    public SortedListAdapterCallback(RecyclerView.Adapter adapter) {
        this.mAdapter = adapter;
    }

    @Override // android.support.p007v7.util.SortedList.Callback
    public void onInserted(int i, int i2) {
        this.mAdapter.notifyItemRangeInserted(i, i2);
    }

    @Override // android.support.p007v7.util.SortedList.Callback
    public void onRemoved(int i, int i2) {
        this.mAdapter.notifyItemRangeRemoved(i, i2);
    }

    @Override // android.support.p007v7.util.SortedList.Callback
    public void onMoved(int i, int i2) {
        this.mAdapter.notifyItemMoved(i, i2);
    }

    @Override // android.support.p007v7.util.SortedList.Callback
    public void onChanged(int i, int i2) {
        this.mAdapter.notifyItemRangeChanged(i, i2);
    }
}
