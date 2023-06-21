package android.support.p004v4.widget;

import android.widget.EdgeEffect;
/* renamed from: android.support.v4.widget.EdgeEffectCompatLollipop */
/* loaded from: classes.dex */
class EdgeEffectCompatLollipop {
    EdgeEffectCompatLollipop() {
    }

    public static boolean onPull(Object obj, float f, float f2) {
        ((EdgeEffect) obj).onPull(f, f2);
        return true;
    }
}
