package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class CheckingProgressBar extends View {
    private Handler mHandler;
    private Paint mPaint;

    /* renamed from: zC */
    private float f470zC;

    /* renamed from: zD */
    private int f471zD;

    /* renamed from: zE */
    private int f472zE;

    /* renamed from: zF */
    private float f473zF;

    /* renamed from: zG */
    private float f474zG;

    /* renamed from: zH */
    private float f475zH;

    /* renamed from: zI */
    private RectF f476zI;

    /* renamed from: zJ */
    private float f477zJ;

    public CheckingProgressBar(Context context) {
        super(context);
        init();
    }

    public CheckingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.f470zC = 360.0f;
        this.f471zD = 15;
        this.f472zE = getResources().getDimensionPixelSize(R.dimen.root_circle_loop_thickness);
        this.f477zJ = 60.0f;
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mPaint.setColor(getResources().getColor(R.color.blue_1));
        this.mPaint.setStrokeWidth(this.f472zE);
        this.f475zH = getResources().getDimensionPixelSize(R.dimen.root_base_shadow_radius);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.f477zJ, this.f473zF, this.f474zG);
        canvas.drawArc(this.f476zI, 180.0f, this.f470zC, false, this.mPaint);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f473zF = i / 2;
        this.f474zG = i2 / 2;
        float ceil = ((float) Math.ceil(this.f472zE / 2.0d)) + this.f475zH;
        if (i < i2) {
            this.f476zI = new RectF(ceil, ceil, i - ceil, i - ceil);
        } else {
            this.f476zI = new RectF(ceil, ceil, i2 - ceil, i2 - ceil);
        }
        this.mPaint.setShader(new SweepGradient(this.f473zF, this.f474zG, new int[]{0, 15069949, getResources().getColor(R.color.blue_1)}, new float[]{0.0f, 0.3f, 1.0f}));
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingcore.uilib.CheckingProgressBar.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 0) {
                        CheckingProgressBar.this.f477zJ += CheckingProgressBar.this.f471zD;
                        if (CheckingProgressBar.this.f477zJ > 360.0f) {
                            CheckingProgressBar.this.f477zJ -= 360.0f;
                        }
                        CheckingProgressBar.this.postInvalidate();
                        sendMessageDelayed(obtainMessage(0), 10L);
                    }
                }
            };
            this.mHandler.obtainMessage(0).sendToTarget();
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mHandler != null) {
            this.mHandler.removeMessages(0);
            this.mHandler = null;
        }
    }
}
