package android.support.p004v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.support.annotation.ColorInt;
/* renamed from: android.support.v4.graphics.drawable.TintAwareDrawable */
/* loaded from: classes.dex */
public interface TintAwareDrawable {
    void setTint(@ColorInt int i);

    void setTintList(ColorStateList colorStateList);

    void setTintMode(PorterDuff.Mode mode);
}
