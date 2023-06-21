package com.kingroot.kinguser;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.shapes.Shape;
/* renamed from: com.kingroot.kinguser.qp */
/* loaded from: classes.dex */
public class C3483qp extends Shape {
    private int[] mColors;
    private float mStrokeWidth;

    public C3483qp(float f, int[] iArr) {
        this.mStrokeWidth = f;
        this.mColors = iArr;
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        int i = 0;
        float length = 1.0f / this.mColors.length;
        paint.setStrokeWidth(this.mStrokeWidth);
        int[] iArr = this.mColors;
        int length2 = iArr.length;
        int i2 = 0;
        while (i2 < length2) {
            paint.setColor(iArr[i2]);
            int i3 = i + 1;
            canvas.drawLine(i * length * getWidth(), getHeight() / 2.0f, getWidth() * i3 * length, getHeight() / 2.0f, paint);
            i2++;
            i = i3;
        }
    }
}
