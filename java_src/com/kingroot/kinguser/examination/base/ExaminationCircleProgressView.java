package com.kingroot.kinguser.examination.base;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ExaminationCircleProgressView extends View {
    private static final Object aJI = new Object();

    /* renamed from: BH */
    private float f2641BH;

    /* renamed from: Df */
    private float f2642Df;
    private float aJJ;
    private Paint aJK;
    private Paint aJL;
    private float aJM;
    private final float aJN;
    private RectF aJO;
    private ValueAnimator aJP;
    private float aJQ;
    private float aJR;
    private float aJS;
    private float aJT;
    private float aJU;
    private int mState;

    public ExaminationCircleProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aJJ = 0.0f;
        this.f2642Df = getResources().getDisplayMetrics().density;
        this.mState = 0;
        this.aJM = 3.0f * this.f2642Df;
        this.aJN = 360.0f;
        this.f2641BH = 1.0f;
        this.aJQ = 0.3f;
        this.aJR = 0.0f;
        this.aJS = this.aJR;
        this.aJT = 360.0f;
        this.aJU = this.aJT * this.aJQ;
        this.aJK = new Paint(1);
        this.aJK.setStyle(Paint.Style.STROKE);
        this.aJK.setStrokeWidth(this.aJM);
        this.aJK.setColor(C3953zi.m1311pr().getColor(R.color.head_circle_good));
        this.aJK.setStrokeCap(Paint.Cap.ROUND);
        this.aJL = new Paint(1);
        this.aJL.setStyle(Paint.Style.STROKE);
        this.aJL.setStrokeWidth(this.aJM);
        this.aJL.setColor(C3953zi.m1311pr().getColor(R.color.head_circle_bg));
        this.aJL.setStrokeCap(Paint.Cap.ROUND);
    }

    public void setCurColor(int i) {
        if (this.aJK.getColor() != i) {
            this.aJK.setColor(i);
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        switch (this.mState) {
            case 0:
                float f = this.f2641BH % 1.0f;
                float f2 = f > 0.5f ? (f - 0.5f) / 0.5f : (0.5f - f) / 0.5f;
                float sqrt = (float) Math.sqrt(f2 >= 0.1f ? f2 : 0.1f);
                float f3 = this.aJU * sqrt;
                float f4 = ((360.0f * f) - (f3 / 2.0f)) - 90.0f;
                float f5 = (1.0f - sqrt) * this.aJJ;
                RectF rectF = new RectF(this.aJO.left + f5, this.aJO.top + f5, this.aJO.right - f5, this.aJO.bottom - f5);
                canvas.drawArc(rectF, (this.aJS / 2.0f) + 90.0f, this.aJT, false, this.aJL);
                canvas.drawArc(rectF, f4, f3, false, this.aJK);
                canvas.drawArc(rectF, f4 - (this.aJT / 3.0f), f3, false, this.aJK);
                canvas.drawArc(rectF, f4 + (this.aJT / 3.0f), f3, false, this.aJK);
                return;
            case 1:
                canvas.drawArc(this.aJO, (this.aJS / 2.0f) + 90.0f, this.aJT, false, this.aJK);
                return;
            default:
                return;
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        float f;
        float f2;
        float f3;
        float f4;
        super.onSizeChanged(i, i2, i3, i4);
        Rect rect = new Rect();
        getDrawingRect(rect);
        if (rect.right >= rect.bottom) {
            f = ((rect.right - rect.bottom) * 1.0f) / 2.0f;
            f2 = rect.top;
            f3 = rect.bottom + f;
            f4 = rect.bottom;
        } else {
            f = rect.left;
            f2 = ((rect.bottom - rect.right) * 1.0f) / 2.0f;
            f3 = rect.right;
            f4 = rect.right + f2;
        }
        this.aJJ = ((f3 - f) / 2.0f) * 0.05f;
        this.aJO = new RectF(f + this.aJM, f2 + this.aJM, (f3 * 1.0f) - this.aJM, (f4 * 1.0f) - this.aJM);
    }

    public void setProgress(float f) {
        if (this.f2641BH != f) {
            this.f2641BH = f;
        }
    }

    public int getState() {
        return this.mState;
    }

    private void setState(int i) {
        synchronized (aJI) {
            if (this.mState != i) {
                this.mState = i;
                if (this.mState == 1) {
                    m3888j(this.aJR, 0.33333334f);
                    if (this.aJP != null) {
                        this.aJP.cancel();
                    }
                } else {
                    m3888j(0.0f, 0.3f);
                }
            }
        }
    }

    public void setTargetMissingCircleDegree(float f) {
        this.aJR = f;
    }

    /* renamed from: j */
    private void m3888j(float f, float f2) {
        this.aJS = f;
        this.aJQ = f2;
        this.aJT = 360.0f - this.aJS;
        this.aJU = this.aJT * this.aJQ;
    }
}
