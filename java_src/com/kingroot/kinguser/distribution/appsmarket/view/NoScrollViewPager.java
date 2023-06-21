package com.kingroot.kinguser.distribution.appsmarket.view;

import android.content.Context;
import android.support.p004v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
/* loaded from: classes.dex */
public class NoScrollViewPager extends ViewPager {
    private boolean aFb;

    public NoScrollViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aFb = true;
    }

    public NoScrollViewPager(Context context) {
        super(context);
        this.aFb = true;
    }

    public void setNoScroll(boolean z) {
        this.aFb = z;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        super.scrollTo(i, i2);
    }

    @Override // android.support.p004v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.aFb) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.support.p004v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.aFb) {
            return false;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }
}
