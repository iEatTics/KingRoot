package android.support.p004v4.view;

import android.os.Build;
import android.view.LayoutInflater;
/* renamed from: android.support.v4.view.LayoutInflaterCompat */
/* loaded from: classes.dex */
public final class LayoutInflaterCompat {
    static final LayoutInflaterCompatImpl IMPL;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.view.LayoutInflaterCompat$LayoutInflaterCompatImpl */
    /* loaded from: classes.dex */
    public interface LayoutInflaterCompatImpl {
        LayoutInflaterFactory getFactory(LayoutInflater layoutInflater);

        void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory);
    }

    /* renamed from: android.support.v4.view.LayoutInflaterCompat$LayoutInflaterCompatImplBase */
    /* loaded from: classes.dex */
    static class LayoutInflaterCompatImplBase implements LayoutInflaterCompatImpl {
        LayoutInflaterCompatImplBase() {
        }

        @Override // android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImpl
        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatBase.setFactory(layoutInflater, layoutInflaterFactory);
        }

        @Override // android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImpl
        public LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
            return LayoutInflaterCompatBase.getFactory(layoutInflater);
        }
    }

    /* renamed from: android.support.v4.view.LayoutInflaterCompat$LayoutInflaterCompatImplV11 */
    /* loaded from: classes.dex */
    static class LayoutInflaterCompatImplV11 extends LayoutInflaterCompatImplBase {
        LayoutInflaterCompatImplV11() {
        }

        @Override // android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImplBase, android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImpl
        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatHC.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    /* renamed from: android.support.v4.view.LayoutInflaterCompat$LayoutInflaterCompatImplV21 */
    /* loaded from: classes.dex */
    static class LayoutInflaterCompatImplV21 extends LayoutInflaterCompatImplV11 {
        LayoutInflaterCompatImplV21() {
        }

        @Override // android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImplV11, android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImplBase, android.support.p004v4.view.LayoutInflaterCompat.LayoutInflaterCompatImpl
        public void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
            LayoutInflaterCompatLollipop.setFactory(layoutInflater, layoutInflaterFactory);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new LayoutInflaterCompatImplV21();
        } else if (i >= 11) {
            IMPL = new LayoutInflaterCompatImplV11();
        } else {
            IMPL = new LayoutInflaterCompatImplBase();
        }
    }

    private LayoutInflaterCompat() {
    }

    public static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        IMPL.setFactory(layoutInflater, layoutInflaterFactory);
    }

    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        return IMPL.getFactory(layoutInflater);
    }
}
