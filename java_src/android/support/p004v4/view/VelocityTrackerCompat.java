package android.support.p004v4.view;

import android.os.Build;
import android.view.VelocityTracker;
/* renamed from: android.support.v4.view.VelocityTrackerCompat */
/* loaded from: classes.dex */
public final class VelocityTrackerCompat {
    static final VelocityTrackerVersionImpl IMPL;

    /* renamed from: android.support.v4.view.VelocityTrackerCompat$VelocityTrackerVersionImpl */
    /* loaded from: classes.dex */
    interface VelocityTrackerVersionImpl {
        float getXVelocity(VelocityTracker velocityTracker, int i);

        float getYVelocity(VelocityTracker velocityTracker, int i);
    }

    /* renamed from: android.support.v4.view.VelocityTrackerCompat$BaseVelocityTrackerVersionImpl */
    /* loaded from: classes.dex */
    static class BaseVelocityTrackerVersionImpl implements VelocityTrackerVersionImpl {
        BaseVelocityTrackerVersionImpl() {
        }

        @Override // android.support.p004v4.view.VelocityTrackerCompat.VelocityTrackerVersionImpl
        public float getXVelocity(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getXVelocity();
        }

        @Override // android.support.p004v4.view.VelocityTrackerCompat.VelocityTrackerVersionImpl
        public float getYVelocity(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getYVelocity();
        }
    }

    /* renamed from: android.support.v4.view.VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl */
    /* loaded from: classes.dex */
    static class HoneycombVelocityTrackerVersionImpl implements VelocityTrackerVersionImpl {
        HoneycombVelocityTrackerVersionImpl() {
        }

        @Override // android.support.p004v4.view.VelocityTrackerCompat.VelocityTrackerVersionImpl
        public float getXVelocity(VelocityTracker velocityTracker, int i) {
            return VelocityTrackerCompatHoneycomb.getXVelocity(velocityTracker, i);
        }

        @Override // android.support.p004v4.view.VelocityTrackerCompat.VelocityTrackerVersionImpl
        public float getYVelocity(VelocityTracker velocityTracker, int i) {
            return VelocityTrackerCompatHoneycomb.getYVelocity(velocityTracker, i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            IMPL = new HoneycombVelocityTrackerVersionImpl();
        } else {
            IMPL = new BaseVelocityTrackerVersionImpl();
        }
    }

    public static float getXVelocity(VelocityTracker velocityTracker, int i) {
        return IMPL.getXVelocity(velocityTracker, i);
    }

    public static float getYVelocity(VelocityTracker velocityTracker, int i) {
        return IMPL.getYVelocity(velocityTracker, i);
    }

    private VelocityTrackerCompat() {
    }
}
