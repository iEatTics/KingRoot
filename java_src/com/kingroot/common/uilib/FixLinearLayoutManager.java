package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.PointF;
import android.support.p007v7.widget.LinearLayoutManager;
import android.support.p007v7.widget.LinearSmoothScroller;
import android.support.p007v7.widget.RecyclerView;
import android.util.AttributeSet;
import com.tencent.feedback.eup.CrashReport;
/* loaded from: classes.dex */
public class FixLinearLayoutManager extends LinearLayoutManager {

    /* renamed from: Nd */
    private boolean f832Nd;

    public FixLinearLayoutManager(Context context) {
        super(context);
        this.f832Nd = true;
    }

    public FixLinearLayoutManager(Context context, int i, boolean z) {
        super(context, i, z);
        this.f832Nd = true;
    }

    public FixLinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f832Nd = true;
    }

    /* renamed from: Y */
    public void m13337Y(boolean z) {
        this.f832Nd = z;
    }

    @Override // android.support.p007v7.widget.LinearLayoutManager, android.support.p007v7.widget.RecyclerView.LayoutManager
    public boolean canScrollVertically() {
        return this.f832Nd && super.canScrollVertically();
    }

    @Override // android.support.p007v7.widget.LinearLayoutManager, android.support.p007v7.widget.RecyclerView.LayoutManager
    public int scrollVerticallyBy(int i, RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            return super.scrollVerticallyBy(i, recycler, state);
        } catch (Throwable th) {
            CrashReport.handleCatchException(new Thread(), th, th.getMessage(), null);
            return 0;
        }
    }

    @Override // android.support.p007v7.widget.LinearLayoutManager, android.support.p007v7.widget.RecyclerView.LayoutManager
    public void onLayoutChildren(RecyclerView.Recycler recycler, RecyclerView.State state) {
        try {
            super.onLayoutChildren(recycler, state);
        } catch (Throwable th) {
            CrashReport.handleCatchException(new Thread(), th, th.getMessage(), null);
        }
    }

    @Override // android.support.p007v7.widget.LinearLayoutManager, android.support.p007v7.widget.RecyclerView.LayoutManager
    public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i) {
        C0520a c0520a = new C0520a(recyclerView.getContext());
        c0520a.setTargetPosition(i);
        startSmoothScroll(c0520a);
    }

    /* renamed from: com.kingroot.common.uilib.FixLinearLayoutManager$a */
    /* loaded from: classes.dex */
    class C0520a extends LinearSmoothScroller {
        public C0520a(Context context) {
            super(context);
        }

        @Override // android.support.p007v7.widget.LinearSmoothScroller
        public PointF computeScrollVectorForPosition(int i) {
            return FixLinearLayoutManager.this.computeScrollVectorForPosition(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.p007v7.widget.LinearSmoothScroller
        public int getVerticalSnapPreference() {
            return -1;
        }
    }
}
