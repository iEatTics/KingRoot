package com.kingroot.common.utils.p011ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* renamed from: com.kingroot.common.utils.ui.ImageViewDot */
/* loaded from: classes.dex */
public class ImageViewDot extends ImageView {
    private float abp;
    private Paint abq;
    private Drawable abr;
    private boolean abs;
    private int abt;
    private int abu;

    /* renamed from: zR */
    private int f1197zR;

    /* renamed from: zS */
    private int f1198zS;

    public ImageViewDot(Context context) {
        super(context);
        this.abp = 1.0f;
        this.abq = null;
        this.abr = null;
        this.abs = true;
        this.abu = Color.argb(255, 255, 138, 0);
        init(context);
    }

    public ImageViewDot(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.abp = 1.0f;
        this.abq = null;
        this.abr = null;
        this.abs = true;
        this.abu = Color.argb(255, 255, 138, 0);
        init(context);
    }

    public ImageViewDot(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.abp = 1.0f;
        this.abq = null;
        this.abr = null;
        this.abs = true;
        this.abu = Color.argb(255, 255, 138, 0);
        init(context);
    }

    private void init(Context context) {
        this.abq = new Paint(1);
        this.abq.setColor(this.abu);
        this.abq.setStyle(Paint.Style.FILL);
    }

    public void setShowDot(boolean z) {
        this.abs = z;
        invalidate();
    }

    public void setDotDrawable(Drawable drawable) {
        this.abr = drawable;
        invalidate();
    }

    public void setDotColor(int i) {
        this.abu = i;
        this.abq.setColor(this.abu);
        invalidate();
    }

    public void setPaddingDotFactor(float f) {
        this.abp = f;
        int i = (int) (this.abt * this.abp);
        setPadding(i, i, i, i);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.abs) {
            int i = this.f1197zR - this.abt;
            int i2 = this.abt;
            if (this.abr == null) {
                canvas.drawCircle(i, i2, this.abt, this.abq);
                return;
            }
            int intrinsicWidth = this.abr.getIntrinsicWidth();
            int intrinsicHeight = this.abr.getIntrinsicHeight();
            this.abr.setBounds(i - (intrinsicWidth / 2), i2 - (intrinsicHeight / 2), i + (intrinsicWidth / 2), i2 + (intrinsicHeight / 2));
            this.abr.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredHeight = getMeasuredHeight();
        int measuredWidth = getMeasuredWidth();
        this.abt = (int) ((measuredWidth > measuredHeight ? measuredHeight : measuredWidth) * 0.15f);
        this.f1198zS = this.abt + measuredHeight;
        this.f1197zR = this.abt + measuredWidth;
        setMeasuredDimension(this.f1197zR, this.f1198zS);
        int i3 = (int) (this.abt * this.abp);
        setPadding(i3, i3, i3, i3);
    }
}
