package com.kingroot.common.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.ScrollView;
/* loaded from: classes.dex */
public class KScrollView extends ScrollView {

    /* renamed from: NI */
    private GestureDetector f846NI;

    public KScrollView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f846NI = new GestureDetector(context, new C0524a());
    }

    @Override // android.widget.ScrollView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return super.onInterceptTouchEvent(motionEvent) && this.f846NI.onTouchEvent(motionEvent);
    }

    /* renamed from: com.kingroot.common.uilib.KScrollView$a */
    /* loaded from: classes.dex */
    class C0524a extends GestureDetector.SimpleOnGestureListener {
        C0524a() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return Math.abs(f2) > Math.abs(f);
        }
    }
}
