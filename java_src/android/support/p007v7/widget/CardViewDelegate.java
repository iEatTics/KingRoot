package android.support.p007v7.widget;

import android.graphics.drawable.Drawable;
/* renamed from: android.support.v7.widget.CardViewDelegate */
/* loaded from: classes.dex */
interface CardViewDelegate {
    Drawable getBackground();

    boolean getPreventCornerOverlap();

    float getRadius();

    boolean getUseCompatPadding();

    void setBackgroundDrawable(Drawable drawable);

    void setShadowPadding(int i, int i2, int i3, int i4);
}
