package android.support.p004v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: android.support.v4.graphics.drawable.DrawableCompatBase */
/* loaded from: classes.dex */
class DrawableCompatBase {
    DrawableCompatBase() {
    }

    public static void setTint(Drawable drawable, int i) {
        if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTint(i);
        }
    }

    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTintList(colorStateList);
        }
    }

    public static void setTintMode(Drawable drawable, PorterDuff.Mode mode) {
        if (drawable instanceof TintAwareDrawable) {
            ((TintAwareDrawable) drawable).setTintMode(mode);
        }
    }

    public static Drawable wrapForTinting(Drawable drawable) {
        if (!(drawable instanceof TintAwareDrawable)) {
            return new DrawableWrapperDonut(drawable);
        }
        return drawable;
    }

    public static void inflate(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        drawable.inflate(resources, xmlPullParser, attributeSet);
    }
}
