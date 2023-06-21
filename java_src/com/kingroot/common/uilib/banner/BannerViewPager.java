package com.kingroot.common.uilib.banner;

import android.content.Context;
import android.support.p004v4.view.VelocityTrackerCompat;
import android.support.p004v4.view.ViewCompat;
import android.support.p004v4.view.ViewPager;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import com.kingroot.kinguser.C3869wy;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class BannerViewPager extends ViewPager {

    /* renamed from: TJ */
    private InterfaceC0574a f1183TJ;

    /* renamed from: Tx */
    private boolean f1184Tx;

    /* renamed from: com.kingroot.common.uilib.banner.BannerViewPager$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0574a {
        /* renamed from: o */
        void mo13160o(float f);
    }

    public BannerViewPager(Context context) {
        super(context);
        this.f1184Tx = true;
    }

    public BannerViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1184Tx = true;
    }

    @Override // android.support.p004v4.view.ViewPager
    public void setPageTransformer(boolean z, ViewPager.PageTransformer pageTransformer) {
        boolean z2 = pageTransformer != null;
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mPageTransformer");
            declaredField.setAccessible(true);
            boolean z3 = z2 != (((ViewPager.PageTransformer) declaredField.get(this)) != null);
            declaredField.set(this, pageTransformer);
            Method declaredMethod = ViewPager.class.getDeclaredMethod("setChildrenDrawingOrderEnabledCompat", Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this, Boolean.valueOf(z2));
            Field declaredField2 = ViewPager.class.getDeclaredField("mDrawingOrder");
            declaredField2.setAccessible(true);
            if (z2) {
                declaredField2.setInt(this, z ? 2 : 1);
            } else {
                declaredField2.setInt(this, 0);
            }
            if (z3) {
                Method declaredMethod2 = ViewPager.class.getDeclaredMethod("populate", new Class[0]);
                declaredMethod2.setAccessible(true);
                declaredMethod2.invoke(this, new Object[0]);
            }
        } catch (Exception e) {
        }
    }

    public void setPageChangeDuration(int i) {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            declaredField.set(this, new C3869wy(getContext(), i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: m */
    public void m13161m(int i, boolean z) {
        try {
            Method declaredMethod = ViewPager.class.getDeclaredMethod("setCurrentItemInternal", Integer.TYPE, Boolean.TYPE, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(this, Integer.valueOf(i), Boolean.valueOf(z), true);
            ViewCompat.postInvalidateOnAnimation(this);
        } catch (Exception e) {
        }
    }

    public void setAllowUserScrollable(boolean z) {
        this.f1184Tx = z;
    }

    @Override // android.support.p004v4.view.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f1184Tx) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // android.support.p004v4.view.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1184Tx) {
            if (this.f1183TJ != null && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1)) {
                this.f1183TJ.mo13160o(getXVelocity());
                return false;
            }
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    private float getXVelocity() {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mVelocityTracker");
            declaredField.setAccessible(true);
            VelocityTracker velocityTracker = (VelocityTracker) declaredField.get(this);
            Field declaredField2 = ViewPager.class.getDeclaredField("mActivePointerId");
            declaredField2.setAccessible(true);
            Field declaredField3 = ViewPager.class.getDeclaredField("mMaximumVelocity");
            declaredField3.setAccessible(true);
            velocityTracker.computeCurrentVelocity(1000, declaredField3.getInt(this));
            return VelocityTrackerCompat.getXVelocity(velocityTracker, declaredField2.getInt(this));
        } catch (Exception e) {
            return 0.0f;
        }
    }

    public void setAutoPlayDelegate(InterfaceC0574a interfaceC0574a) {
        this.f1183TJ = interfaceC0574a;
    }
}
