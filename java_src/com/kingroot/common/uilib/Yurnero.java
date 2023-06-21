package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public class Yurnero extends View {

    /* renamed from: Pv */
    private static float f1131Pv = 10.0f;

    /* renamed from: Py */
    private float f1132Py;

    /* renamed from: Pz */
    private float f1133Pz;
    private int height;
    private Drawable mDrawable;
    private int width;

    public Yurnero(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1133Pz = f1131Pv;
        init();
    }

    public Yurnero(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1133Pz = f1131Pv;
        init();
    }

    private void init() {
        if (getBackground() != null) {
            this.mDrawable = getBackground();
        }
    }

    public void setSpeed(float f) {
        this.f1133Pz = f;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.mDrawable != null) {
            canvas.rotate(this.f1132Py, this.width / 2, this.height / 2);
            this.mDrawable.draw(canvas);
            this.f1132Py += this.f1133Pz;
            if (this.f1132Py >= 359.9d) {
                this.f1132Py = 0.0f;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(getMeasuredHeight(), getMeasuredWidth()), 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.width = i;
        this.height = i2;
        if (this.mDrawable != null) {
            this.mDrawable.setBounds(0, 0, i, i2);
        }
    }
}
