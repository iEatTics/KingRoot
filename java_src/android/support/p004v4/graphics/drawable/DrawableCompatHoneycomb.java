package android.support.p004v4.graphics.drawable;

import android.graphics.drawable.Drawable;
/* renamed from: android.support.v4.graphics.drawable.DrawableCompatHoneycomb */
/* loaded from: classes.dex */
class DrawableCompatHoneycomb {
    DrawableCompatHoneycomb() {
    }

    public static void jumpToCurrentState(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (!(drawable instanceof TintAwareDrawable)) {
            return new DrawableWrapperHoneycomb(drawable);
        }
        return drawable;
    }
}
