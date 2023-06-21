package com.kingroot.kinguser.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.android.animation.ValueAnimator;
/* loaded from: classes.dex */
public class InkView extends View {

    /* renamed from: Ov */
    private int f3756Ov;
    private ValueAnimator aqC;
    private int brc;
    private int brd;
    private int bre;
    private int brf;
    private ValueAnimator brg;
    private boolean brh;
    private int bri;
    private boolean brj;
    private int brk;
    private int brl;
    private Paint mPaint;

    public InkView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.brg = null;
        this.brh = false;
        this.bri = 60;
        this.brj = false;
        this.aqC = null;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mPaint != null) {
            if (this.brh) {
                this.mPaint.setAlpha(this.bri);
                canvas.drawCircle(this.brc, this.brd, this.bre, this.mPaint);
                return;
            }
            int i = this.bre - this.f3756Ov;
            if (i >= 0) {
                this.mPaint.setAlpha((i * 255) / this.brf);
                this.mPaint.setStyle(Paint.Style.FILL);
                canvas.drawCircle(this.brc, this.brd, this.f3756Ov, this.mPaint);
                this.mPaint.setAlpha(255);
                this.mPaint.setStyle(Paint.Style.STROKE);
                this.mPaint.setStrokeWidth(this.bre - this.f3756Ov);
                canvas.drawCircle(this.brc, this.brd, ((this.bre * 1.0f) + (this.f3756Ov * 1.0f)) / 2.0f, this.mPaint);
            }
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !this.brh) {
            return super.onTouchEvent(motionEvent);
        }
        if (this.brg == null || !this.brj) {
            this.brk = (int) motionEvent.getX();
            this.brl = (int) motionEvent.getY();
        }
        return super.onTouchEvent(motionEvent);
    }
}
