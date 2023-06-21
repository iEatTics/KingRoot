package android.support.p007v7.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.support.p007v7.widget.RoundRectDrawableWithShadow;
/* renamed from: android.support.v7.widget.CardViewJellybeanMr1 */
/* loaded from: classes.dex */
class CardViewJellybeanMr1 extends CardViewEclairMr1 {
    @Override // android.support.p007v7.widget.CardViewEclairMr1, android.support.p007v7.widget.CardViewImpl
    public void initStatic() {
        RoundRectDrawableWithShadow.sRoundRectHelper = new RoundRectDrawableWithShadow.RoundRectHelper() { // from class: android.support.v7.widget.CardViewJellybeanMr1.1
            @Override // android.support.p007v7.widget.RoundRectDrawableWithShadow.RoundRectHelper
            public void drawRoundRect(Canvas canvas, RectF rectF, float f, Paint paint) {
                canvas.drawRoundRect(rectF, f, f, paint);
            }
        };
    }
}
