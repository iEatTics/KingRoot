package android.support.p007v7.widget;

import android.content.Context;
import android.view.View;
/* renamed from: android.support.v7.widget.CardViewApi21 */
/* loaded from: classes.dex */
class CardViewApi21 implements CardViewImpl {
    @Override // android.support.p007v7.widget.CardViewImpl
    public void initialize(CardViewDelegate cardViewDelegate, Context context, int i, float f, float f2, float f3) {
        cardViewDelegate.setBackgroundDrawable(new RoundRectDrawable(i, f));
        View view = (View) cardViewDelegate;
        view.setClipToOutline(true);
        view.setElevation(f2);
        setMaxElevation(cardViewDelegate, f3);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setRadius(CardViewDelegate cardViewDelegate, float f) {
        ((RoundRectDrawable) cardViewDelegate.getBackground()).setRadius(f);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void initStatic() {
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setMaxElevation(CardViewDelegate cardViewDelegate, float f) {
        ((RoundRectDrawable) cardViewDelegate.getBackground()).setPadding(f, cardViewDelegate.getUseCompatPadding(), cardViewDelegate.getPreventCornerOverlap());
        updatePadding(cardViewDelegate);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return ((RoundRectDrawable) cardViewDelegate.getBackground()).getPadding();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getMinWidth(CardViewDelegate cardViewDelegate) {
        return getRadius(cardViewDelegate) * 2.0f;
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getMinHeight(CardViewDelegate cardViewDelegate) {
        return getRadius(cardViewDelegate) * 2.0f;
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getRadius(CardViewDelegate cardViewDelegate) {
        return ((RoundRectDrawable) cardViewDelegate.getBackground()).getRadius();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setElevation(CardViewDelegate cardViewDelegate, float f) {
        ((View) cardViewDelegate).setElevation(f);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return ((View) cardViewDelegate).getElevation();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void updatePadding(CardViewDelegate cardViewDelegate) {
        if (!cardViewDelegate.getUseCompatPadding()) {
            cardViewDelegate.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(cardViewDelegate);
        float radius = getRadius(cardViewDelegate);
        int ceil = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(maxElevation, radius, cardViewDelegate.getPreventCornerOverlap()));
        int ceil2 = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(maxElevation, radius, cardViewDelegate.getPreventCornerOverlap()));
        cardViewDelegate.setShadowPadding(ceil, ceil2, ceil, ceil2);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void onCompatPaddingChanged(CardViewDelegate cardViewDelegate) {
        setMaxElevation(cardViewDelegate, getMaxElevation(cardViewDelegate));
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void onPreventCornerOverlapChanged(CardViewDelegate cardViewDelegate) {
        setMaxElevation(cardViewDelegate, getMaxElevation(cardViewDelegate));
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setBackgroundColor(CardViewDelegate cardViewDelegate, int i) {
        ((RoundRectDrawable) cardViewDelegate.getBackground()).setColor(i);
    }
}
