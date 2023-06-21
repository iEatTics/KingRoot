package com.kingroot.kinguser;

import android.graphics.Rect;
import android.support.p007v7.widget.GridLayoutManager;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
/* renamed from: com.kingroot.kinguser.xu */
/* loaded from: classes.dex */
public class C3900xu extends RecyclerView.ItemDecoration {

    /* renamed from: UK */
    private final int f3993UK;

    /* renamed from: UL */
    private final int f3994UL;

    /* renamed from: UM */
    private final int f3995UM;
    private final int verticalSpacing;

    /* renamed from: e */
    public static C3900xu m1439e(int i, int i2, int i3) {
        int i4 = ((i3 - 1) * i) / i3;
        return new C3900xu((int) (0.5f * i), i4, i - i4, i2);
    }

    private C3900xu(int i, int i2, int i3, int i4) {
        this.f3993UK = i;
        this.f3994UL = i2;
        this.f3995UM = i3;
        this.verticalSpacing = i4;
    }

    @Override // android.support.p007v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        int viewPosition = ((RecyclerView.LayoutParams) view.getLayoutParams()).getViewPosition();
        int itemCount = recyclerView.getAdapter().getItemCount();
        InterfaceC3901xv m1449a = m1449a(view, recyclerView);
        m1444a(m1449a, viewPosition, rect);
        m1450a(rect, viewPosition, itemCount, m1449a.getSpanCount(), m1449a);
    }

    /* renamed from: a */
    protected InterfaceC3901xv m1449a(View view, RecyclerView recyclerView) {
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        return layoutManager instanceof GridLayoutManager ? C3902xw.m1437a((GridLayoutManager) layoutManager) : C3902xw.m1436ow();
    }

    /* renamed from: a */
    private void m1450a(Rect rect, int i, int i2, int i3, InterfaceC3901xv interfaceC3901xv) {
        rect.top = m1445a(interfaceC3901xv, this.verticalSpacing, i, i3, i2);
        rect.bottom = m1442b(interfaceC3901xv, this.verticalSpacing, i, i2);
    }

    /* renamed from: a */
    private void m1444a(InterfaceC3901xv interfaceC3901xv, int i, Rect rect) {
        if (m1441c(interfaceC3901xv, i)) {
            rect.left = 0;
            rect.right = 0;
        } else if (m1440d(interfaceC3901xv, i)) {
            rect.left = 0;
            rect.right = this.f3994UL;
        } else if (m1438e(interfaceC3901xv, i)) {
            rect.left = this.f3994UL;
            rect.right = 0;
        } else {
            if (m1448a(interfaceC3901xv, i)) {
                rect.left = this.f3995UM;
            } else {
                rect.left = this.f3993UK;
            }
            if (m1443b(interfaceC3901xv, i)) {
                rect.right = this.f3995UM;
            } else {
                rect.right = this.f3993UK;
            }
        }
    }

    /* renamed from: a */
    private static boolean m1448a(InterfaceC3901xv interfaceC3901xv, int i) {
        return !m1440d(interfaceC3901xv, i) && m1440d(interfaceC3901xv, i + (-1));
    }

    /* renamed from: b */
    private static boolean m1443b(InterfaceC3901xv interfaceC3901xv, int i) {
        return !m1438e(interfaceC3901xv, i) && m1438e(interfaceC3901xv, i + 1);
    }

    /* renamed from: c */
    private static boolean m1441c(InterfaceC3901xv interfaceC3901xv, int i) {
        return m1440d(interfaceC3901xv, i) && m1438e(interfaceC3901xv, i);
    }

    /* renamed from: d */
    private static boolean m1440d(InterfaceC3901xv interfaceC3901xv, int i) {
        return interfaceC3901xv.mo1435bT(i) == 0;
    }

    /* renamed from: e */
    private static boolean m1438e(InterfaceC3901xv interfaceC3901xv, int i) {
        return interfaceC3901xv.mo1435bT(i) + interfaceC3901xv.getSpanSize(i) == interfaceC3901xv.getSpanCount();
    }

    /* renamed from: a */
    private static int m1445a(InterfaceC3901xv interfaceC3901xv, int i, int i2, int i3, int i4) {
        if (m1446a(interfaceC3901xv, i2, i3, i4)) {
            return 0;
        }
        return (int) (0.5f * i);
    }

    /* renamed from: a */
    private static boolean m1446a(InterfaceC3901xv interfaceC3901xv, int i, int i2, int i3) {
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 >= i3) {
                i4 = i5;
                break;
            } else if ((interfaceC3901xv.mo1435bT(i4) + interfaceC3901xv.getSpanSize(i4)) - 1 == i2 - 1) {
                break;
            } else {
                i5 = i4;
                i4++;
            }
        }
        return i <= i4;
    }

    /* renamed from: b */
    private static int m1442b(InterfaceC3901xv interfaceC3901xv, int i, int i2, int i3) {
        if (m1447a(interfaceC3901xv, i2, i3)) {
            return 0;
        }
        return (int) (0.5f * i);
    }

    /* renamed from: a */
    private static boolean m1447a(InterfaceC3901xv interfaceC3901xv, int i, int i2) {
        int i3 = i2 - 1;
        int i4 = 0;
        while (true) {
            if (i3 < 0) {
                i3 = i4;
                break;
            } else if (interfaceC3901xv.mo1435bT(i3) == 0) {
                break;
            } else {
                i4 = i3;
                i3--;
            }
        }
        return i >= i3;
    }
}
