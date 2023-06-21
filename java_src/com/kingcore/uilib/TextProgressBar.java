package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ProgressBar;
/* loaded from: classes.dex */
public class TextProgressBar extends ProgressBar {

    /* renamed from: Dc */
    private String f701Dc;

    /* renamed from: Dd */
    private int f702Dd;

    /* renamed from: De */
    private int f703De;

    /* renamed from: Df */
    private float f704Df;
    private Paint mPaint;

    public TextProgressBar(Context context) {
        super(context);
        this.f702Dd = -1;
        init(context);
    }

    public TextProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f702Dd = -1;
        init(context);
    }

    public TextProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f702Dd = -1;
        init(context);
    }

    private void init(Context context) {
        this.mPaint = new Paint();
        this.mPaint.setColor(this.f702Dd);
        this.f701Dc = "";
        this.f704Df = context.getResources().getDisplayMetrics().density;
        this.f703De = (int) (14.0f * this.f704Df);
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        Rect rect = new Rect();
        this.mPaint.setColor(this.f702Dd);
        this.mPaint.getTextBounds(this.f701Dc, 0, this.f701Dc.length(), rect);
        this.mPaint.setTextSize(this.f703De);
        canvas.drawText(this.f701Dc, (getWidth() / 2) - rect.centerX(), (getHeight() / 2) - rect.centerY(), this.mPaint);
    }

    public void setTextColor(int i) {
        this.f702Dd = i;
    }

    public int getTextColor() {
        return this.f702Dd;
    }

    public void setTextSize(int i) {
        this.f703De = (int) (i * this.f704Df);
    }

    public void setTextProgress(String str) {
        this.f701Dc = str;
    }
}
