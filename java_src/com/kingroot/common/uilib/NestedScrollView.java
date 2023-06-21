package com.kingroot.common.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.kingroot.kinguser.C3857ws;
/* loaded from: classes.dex */
public class NestedScrollView extends ScrollView {

    /* renamed from: NI */
    private GestureDetector f968NI;
    private View mHeaderView;

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f968NI = new GestureDetector(context, new C0544a());
        this.f968NI.setIsLongpressEnabled(false);
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent) && this.f968NI.onTouchEvent(motionEvent);
    }

    /* renamed from: com.kingroot.common.uilib.NestedScrollView$a */
    /* loaded from: classes.dex */
    class C0544a extends GestureDetector.SimpleOnGestureListener {
        C0544a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return Math.abs(f2) > Math.abs(f);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        if (this.mHeaderView != null) {
            C3857ws.m1499a(this, this.mHeaderView, computeVerticalScrollOffset());
        }
    }

    /* renamed from: i */
    public void m13268i(View view) {
        this.mHeaderView = view;
    }
}
