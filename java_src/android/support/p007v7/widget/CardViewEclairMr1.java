package android.support.p007v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.support.p007v7.widget.RoundRectDrawableWithShadow;
import android.view.View;
/* renamed from: android.support.v7.widget.CardViewEclairMr1 */
/* loaded from: classes.dex */
class CardViewEclairMr1 implements CardViewImpl {
    final RectF sCornerRect = new RectF();

    @Override // android.support.p007v7.widget.CardViewImpl
    public void initStatic() {
        RoundRectDrawableWithShadow.sRoundRectHelper = new RoundRectDrawableWithShadow.RoundRectHelper() { // from class: android.support.v7.widget.CardViewEclairMr1.1
            @Override // android.support.p007v7.widget.RoundRectDrawableWithShadow.RoundRectHelper
            public void drawRoundRect(Canvas canvas, RectF rectF, float f, Paint paint) {
                float f2 = 2.0f * f;
                float width = (rectF.width() - f2) - 1.0f;
                float height = (rectF.height() - f2) - 1.0f;
                if (f >= 1.0f) {
                    f += 0.5f;
                    CardViewEclairMr1.this.sCornerRect.set(-f, -f, f, f);
                    int save = canvas.save();
                    canvas.translate(rectF.left + f, rectF.top + f);
                    canvas.drawArc(CardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(height, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(width, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(CardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(save);
                    canvas.drawRect((rectF.left + f) - 1.0f, rectF.top, (rectF.right - f) + 1.0f, rectF.top + f, paint);
                    canvas.drawRect((rectF.left + f) - 1.0f, (rectF.bottom - f) + 1.0f, (rectF.right - f) + 1.0f, rectF.bottom, paint);
                }
                canvas.drawRect(rectF.left, Math.max(0.0f, f - 1.0f) + rectF.top, rectF.right, (rectF.bottom - f) + 1.0f, paint);
            }
        };
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void initialize(CardViewDelegate cardViewDelegate, Context context, int i, float f, float f2, float f3) {
        RoundRectDrawableWithShadow createBackground = createBackground(context, i, f, f2, f3);
        createBackground.setAddPaddingForCorners(cardViewDelegate.getPreventCornerOverlap());
        cardViewDelegate.setBackgroundDrawable(createBackground);
        updatePadding(cardViewDelegate);
    }

    RoundRectDrawableWithShadow createBackground(Context context, int i, float f, float f2, float f3) {
        return new RoundRectDrawableWithShadow(context.getResources(), i, f, f2, f3);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void updatePadding(CardViewDelegate cardViewDelegate) {
        Rect rect = new Rect();
        getShadowBackground(cardViewDelegate).getMaxShadowAndCornerPadding(rect);
        ((View) cardViewDelegate).setMinimumHeight((int) Math.ceil(getMinHeight(cardViewDelegate)));
        ((View) cardViewDelegate).setMinimumWidth((int) Math.ceil(getMinWidth(cardViewDelegate)));
        cardViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void onCompatPaddingChanged(CardViewDelegate cardViewDelegate) {
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void onPreventCornerOverlapChanged(CardViewDelegate cardViewDelegate) {
        getShadowBackground(cardViewDelegate).setAddPaddingForCorners(cardViewDelegate.getPreventCornerOverlap());
        updatePadding(cardViewDelegate);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setBackgroundColor(CardViewDelegate cardViewDelegate, int i) {
        getShadowBackground(cardViewDelegate).setColor(i);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setRadius(CardViewDelegate cardViewDelegate, float f) {
        getShadowBackground(cardViewDelegate).setCornerRadius(f);
        updatePadding(cardViewDelegate);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getRadius(CardViewDelegate cardViewDelegate) {
        return getShadowBackground(cardViewDelegate).getCornerRadius();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setElevation(CardViewDelegate cardViewDelegate, float f) {
        getShadowBackground(cardViewDelegate).setShadowSize(f);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return getShadowBackground(cardViewDelegate).getShadowSize();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public void setMaxElevation(CardViewDelegate cardViewDelegate, float f) {
        getShadowBackground(cardViewDelegate).setMaxShadowSize(f);
        updatePadding(cardViewDelegate);
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getMaxElevation(CardViewDelegate cardViewDelegate) {
        return getShadowBackground(cardViewDelegate).getMaxShadowSize();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getMinWidth(CardViewDelegate cardViewDelegate) {
        return getShadowBackground(cardViewDelegate).getMinWidth();
    }

    @Override // android.support.p007v7.widget.CardViewImpl
    public float getMinHeight(CardViewDelegate cardViewDelegate) {
        return getShadowBackground(cardViewDelegate).getMinHeight();
    }

    private RoundRectDrawableWithShadow getShadowBackground(CardViewDelegate cardViewDelegate) {
        return (RoundRectDrawableWithShadow) cardViewDelegate.getBackground();
    }
}
