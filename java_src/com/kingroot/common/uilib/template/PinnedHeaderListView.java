package com.kingroot.common.uilib.template;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;
import com.kingroot.common.uilib.AnimationListView;
/* loaded from: classes.dex */
public class PinnedHeaderListView extends AnimationListView {

    /* renamed from: VG */
    private InterfaceC0575a f1188VG;

    /* renamed from: VH */
    private boolean f1189VH;

    /* renamed from: VI */
    private int f1190VI;

    /* renamed from: VJ */
    private int f1191VJ;

    /* renamed from: VK */
    private boolean f1192VK;
    private View mHeaderView;

    /* renamed from: com.kingroot.common.uilib.template.PinnedHeaderListView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0575a {
        /* renamed from: b */
        void mo1383b(View view, int i, int i2);

        /* renamed from: bV */
        int mo1381bV(int i);
    }

    public PinnedHeaderListView(Context context) {
        super(context);
        this.f1192VK = false;
    }

    public PinnedHeaderListView(Context context, int i) {
        super(context, i);
        this.f1192VK = false;
    }

    public PinnedHeaderListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1192VK = false;
    }

    public PinnedHeaderListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1192VK = false;
    }

    public void setPinnedHeaderView(View view) {
        this.mHeaderView = view;
        if (this.mHeaderView != null) {
            setFadingEdgeLength(0);
        }
        requestLayout();
    }

    @Override // com.kingroot.common.uilib.AnimationListView, com.kingroot.common.uilib.KBaseListView, android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        this.f1188VG = (InterfaceC0575a) listAdapter;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.mHeaderView != null) {
            measureChild(this.mHeaderView, i, i2);
            this.f1190VI = this.mHeaderView.getMeasuredWidth();
            this.f1191VJ = this.mHeaderView.getMeasuredHeight();
        }
    }

    @Override // android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mHeaderView != null) {
            this.mHeaderView.layout(0, 0, this.f1190VI, this.f1191VJ);
            m13156bX(getFirstVisiblePosition());
        }
    }

    /* renamed from: bX */
    public void m13156bX(int i) {
        int i2;
        int i3 = 255;
        if (this.mHeaderView != null && i < getCount()) {
            switch (this.f1188VG.mo1381bV(i)) {
                case 0:
                    this.f1189VH = false;
                    return;
                case 1:
                    this.f1188VG.mo1383b(this.mHeaderView, i, 255);
                    if (this.mHeaderView.getTop() != 0) {
                        this.mHeaderView.layout(0, 0, this.f1190VI, this.f1191VJ);
                    }
                    this.f1189VH = true;
                    return;
                case 2:
                    View childAt = getChildAt(0);
                    int bottom = childAt.getBottom();
                    childAt.getHeight();
                    int height = this.mHeaderView.getHeight();
                    if (bottom < height) {
                        i2 = bottom - height;
                        i3 = ((height + i2) * 255) / height;
                    } else {
                        i2 = 0;
                    }
                    this.f1188VG.mo1383b(this.mHeaderView, i, i3);
                    if (this.mHeaderView.getTop() != i2) {
                        this.mHeaderView.layout(0, i2, this.f1190VI, this.f1191VJ + i2);
                    }
                    this.f1189VH = true;
                    return;
                default:
                    return;
            }
        }
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.f1189VH) {
            try {
                drawChild(canvas, this.mHeaderView, getDrawingTime());
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.widget.AbsListView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            if (this.f1189VH && this.mHeaderView != null && this.mHeaderView.getVisibility() == 0) {
                Rect rect = new Rect();
                this.mHeaderView.getHitRect(rect);
                if (rect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    this.f1192VK = true;
                    return true;
                }
            }
            this.f1192VK = false;
        } else if (motionEvent.getAction() == 1 && this.f1189VH && this.mHeaderView != null && this.mHeaderView.getVisibility() == 0 && this.f1192VK) {
            Rect rect2 = new Rect();
            this.mHeaderView.getHitRect(rect2);
            if (rect2.contains((int) motionEvent.getX(), (int) motionEvent.getY()) && this.mHeaderView.performClick()) {
                return true;
            }
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Throwable th) {
            return false;
        }
    }

    public View getHeaderView() {
        return this.mHeaderView;
    }
}
