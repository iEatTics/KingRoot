package android.support.p004v4.graphics.drawable;

import android.graphics.drawable.Drawable;
/* renamed from: android.support.v4.graphics.drawable.DrawableCompatKitKat */
/* loaded from: classes.dex */
class DrawableCompatKitKat {
    DrawableCompatKitKat() {
    }

    public static void setAutoMirrored(Drawable drawable, boolean z) {
        drawable.setAutoMirrored(z);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (!(drawable instanceof TintAwareDrawable)) {
            return new DrawableWrapperKitKat(drawable);
        }
        return drawable;
    }

    public static int getAlpha(Drawable drawable) {
        return drawable.getAlpha();
    }
}
