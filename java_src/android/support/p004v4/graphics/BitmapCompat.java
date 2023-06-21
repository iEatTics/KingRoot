package android.support.p004v4.graphics;

import android.graphics.Bitmap;
import android.os.Build;
/* renamed from: android.support.v4.graphics.BitmapCompat */
/* loaded from: classes.dex */
public final class BitmapCompat {
    static final BitmapImpl IMPL;

    /* renamed from: android.support.v4.graphics.BitmapCompat$BitmapImpl */
    /* loaded from: classes.dex */
    interface BitmapImpl {
        int getAllocationByteCount(Bitmap bitmap);

        boolean hasMipMap(Bitmap bitmap);

        void setHasMipMap(Bitmap bitmap, boolean z);
    }

    /* renamed from: android.support.v4.graphics.BitmapCompat$BaseBitmapImpl */
    /* loaded from: classes.dex */
    static class BaseBitmapImpl implements BitmapImpl {
        BaseBitmapImpl() {
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public boolean hasMipMap(Bitmap bitmap) {
            return false;
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public void setHasMipMap(Bitmap bitmap, boolean z) {
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public int getAllocationByteCount(Bitmap bitmap) {
            return bitmap.getRowBytes() * bitmap.getHeight();
        }
    }

    /* renamed from: android.support.v4.graphics.BitmapCompat$HcMr1BitmapCompatImpl */
    /* loaded from: classes.dex */
    static class HcMr1BitmapCompatImpl extends BaseBitmapImpl {
        HcMr1BitmapCompatImpl() {
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.BaseBitmapImpl, android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public int getAllocationByteCount(Bitmap bitmap) {
            return BitmapCompatHoneycombMr1.getAllocationByteCount(bitmap);
        }
    }

    /* renamed from: android.support.v4.graphics.BitmapCompat$JbMr2BitmapCompatImpl */
    /* loaded from: classes.dex */
    static class JbMr2BitmapCompatImpl extends HcMr1BitmapCompatImpl {
        JbMr2BitmapCompatImpl() {
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.BaseBitmapImpl, android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public boolean hasMipMap(Bitmap bitmap) {
            return BitmapCompatJellybeanMR2.hasMipMap(bitmap);
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.BaseBitmapImpl, android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public void setHasMipMap(Bitmap bitmap, boolean z) {
            BitmapCompatJellybeanMR2.setHasMipMap(bitmap, z);
        }
    }

    /* renamed from: android.support.v4.graphics.BitmapCompat$KitKatBitmapCompatImpl */
    /* loaded from: classes.dex */
    static class KitKatBitmapCompatImpl extends JbMr2BitmapCompatImpl {
        KitKatBitmapCompatImpl() {
        }

        @Override // android.support.p004v4.graphics.BitmapCompat.HcMr1BitmapCompatImpl, android.support.p004v4.graphics.BitmapCompat.BaseBitmapImpl, android.support.p004v4.graphics.BitmapCompat.BitmapImpl
        public int getAllocationByteCount(Bitmap bitmap) {
            return BitmapCompatKitKat.getAllocationByteCount(bitmap);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            IMPL = new KitKatBitmapCompatImpl();
        } else if (i >= 18) {
            IMPL = new JbMr2BitmapCompatImpl();
        } else if (i >= 12) {
            IMPL = new HcMr1BitmapCompatImpl();
        } else {
            IMPL = new BaseBitmapImpl();
        }
    }

    public static boolean hasMipMap(Bitmap bitmap) {
        return IMPL.hasMipMap(bitmap);
    }

    public static void setHasMipMap(Bitmap bitmap, boolean z) {
        IMPL.setHasMipMap(bitmap, z);
    }

    public static int getAllocationByteCount(Bitmap bitmap) {
        return IMPL.getAllocationByteCount(bitmap);
    }

    private BitmapCompat() {
    }
}
