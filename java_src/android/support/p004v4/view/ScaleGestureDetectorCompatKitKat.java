package android.support.p004v4.view;

import android.view.ScaleGestureDetector;
/* renamed from: android.support.v4.view.ScaleGestureDetectorCompatKitKat */
/* loaded from: classes.dex */
class ScaleGestureDetectorCompatKitKat {
    private ScaleGestureDetectorCompatKitKat() {
    }

    public static void setQuickScaleEnabled(Object obj, boolean z) {
        ((ScaleGestureDetector) obj).setQuickScaleEnabled(z);
    }

    public static boolean isQuickScaleEnabled(Object obj) {
        return ((ScaleGestureDetector) obj).isQuickScaleEnabled();
    }
}
