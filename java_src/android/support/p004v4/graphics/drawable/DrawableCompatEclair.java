package android.support.p004v4.graphics.drawable;

import android.graphics.drawable.Drawable;
/* renamed from: android.support.v4.graphics.drawable.DrawableCompatEclair */
/* loaded from: classes.dex */
class DrawableCompatEclair {
    DrawableCompatEclair() {
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (!(drawable instanceof TintAwareDrawable)) {
            return new DrawableWrapperEclair(drawable);
        }
        return drawable;
    }
}
