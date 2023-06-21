package com.kingroot.kinguser.root.views.others;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguser.bce;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class CirclePlayDayAndNight extends View {
    private static float bhW = 0.25f;
    private Paint bhF;
    private Paint bhG;
    private float bhH;
    private float bhI;
    private float bhJ;
    private int bhK;
    private float bhL;
    private float bhM;
    private float bhN;
    private int bhO;
    private int bhP;
    private int bhQ;
    private int bhR;
    private int bhS;
    private int bhT;
    private int bhU;
    private float bhV;
    private Bitmap bhX;
    private Bitmap bhY;
    private Canvas bhZ;
    private Canvas bia;
    private PorterDuffXfermode bib;
    private Handler mHandler;

    public CirclePlayDayAndNight(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bhV = 0.0f;
        init();
    }

    private void init() {
        this.bhF = new Paint(1);
        this.bhF.setStyle(Paint.Style.STROKE);
        this.bhK = getResources().getDimensionPixelSize(R.dimen.kr4_circle_out_loop_common_thickness);
        if (this.bhK < 1) {
            this.bhK = 1;
        }
        this.bhF.setStrokeWidth(this.bhK);
        this.bhG = new Paint(1);
        this.bhG.setStyle(Paint.Style.FILL);
        this.bhH = this.bhK * 3;
        this.bhQ = getResources().getColor(R.color.root_process_adapt_bigcircle_darkblue);
        this.bhR = -1120084;
        this.bhO = getResources().getColor(R.color.root_process_main_blue);
        this.bhP = -1389568;
        this.bhS = this.bhO;
        this.bhI = this.bhH * 1.4f;
        this.bhL = this.bhH + this.bhI;
        this.bhM = this.bhH;
        this.bhN = this.bhL;
        this.bhZ = new Canvas();
        this.bia = new Canvas();
        this.bib = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.bhF.setColor(this.bhT);
        canvas.drawCircle(this.bhU, this.bhU, this.bhJ, this.bhF);
        float sin = (float) (this.bhU + (Math.sin((this.bhV / 360.0d) * 6.283185307179586d) * this.bhJ));
        float cos = (float) (this.bhU - (Math.cos(6.283185307179586d * (this.bhV / 360.0d)) * this.bhJ));
        float f = sin + (0.8660254f * this.bhN);
        float f2 = cos - (this.bhN * 0.5f);
        this.bhG.setColor(this.bhS);
        if (this.bhX != null && !this.bhX.isRecycled()) {
            this.bhX.recycle();
            this.bhX = null;
        }
        int i = (int) (this.bhH * 2.0f);
        this.bhX = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_4444);
        this.bhZ.setBitmap(this.bhX);
        this.bhZ.drawCircle(this.bhH, this.bhH, this.bhH, this.bhG);
        if (this.bhY != null && !this.bhY.isRecycled()) {
            this.bhY.recycle();
            this.bhY = null;
        }
        int i2 = (int) (this.bhI * 2.0f);
        this.bhY = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_4444);
        this.bia.setBitmap(this.bhY);
        this.bia.drawCircle(this.bhI, this.bhI, this.bhI, this.bhG);
        int saveLayer = canvas.saveLayer(sin - this.bhH, f2 - this.bhI, f + this.bhI, cos + this.bhH, null, 31);
        canvas.drawBitmap(this.bhX, sin - this.bhH, cos - this.bhH, this.bhG);
        this.bhG.setXfermode(this.bib);
        canvas.drawBitmap(this.bhY, f - this.bhI, f2 - this.bhI, this.bhG);
        this.bhG.setXfermode(null);
        canvas.restoreToCount(saveLayer);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.bhJ = (i / 2) - this.bhH;
        this.bhU = i / 2;
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.root.views.others.CirclePlayDayAndNight.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 0) {
                        if ((CirclePlayDayAndNight.this.bhV <= 0.0f || CirclePlayDayAndNight.this.bhV > 90.0f) && (CirclePlayDayAndNight.this.bhV <= 180.0f || CirclePlayDayAndNight.this.bhV > 270.0f)) {
                            CirclePlayDayAndNight.bhW -= 0.002f;
                        } else {
                            CirclePlayDayAndNight.bhW += 0.002f;
                        }
                        CirclePlayDayAndNight.this.bhV += CirclePlayDayAndNight.bhW;
                        if (CirclePlayDayAndNight.this.bhV > 360.0f) {
                            CirclePlayDayAndNight.this.bhV -= 360.0f;
                        }
                        if (CirclePlayDayAndNight.this.bhV <= 180.0f) {
                            CirclePlayDayAndNight.this.bhN = CirclePlayDayAndNight.this.bhL - ((CirclePlayDayAndNight.this.bhV / 180.0f) * (CirclePlayDayAndNight.this.bhL - CirclePlayDayAndNight.this.bhM));
                            CirclePlayDayAndNight.this.bhT = bce.m7710a(CirclePlayDayAndNight.this.bhV / 180.0f, CirclePlayDayAndNight.this.bhQ, CirclePlayDayAndNight.this.bhR);
                        } else {
                            CirclePlayDayAndNight.this.bhN = CirclePlayDayAndNight.this.bhM + (((CirclePlayDayAndNight.this.bhV - 180.0f) / 180.0f) * (CirclePlayDayAndNight.this.bhL - CirclePlayDayAndNight.this.bhM));
                            CirclePlayDayAndNight.this.bhT = bce.m7710a((CirclePlayDayAndNight.this.bhV - 180.0f) / 180.0f, CirclePlayDayAndNight.this.bhR, CirclePlayDayAndNight.this.bhQ);
                        }
                        if (45.0f > CirclePlayDayAndNight.this.bhV || CirclePlayDayAndNight.this.bhV >= 135.0f) {
                            if (225.0f <= CirclePlayDayAndNight.this.bhV && CirclePlayDayAndNight.this.bhV < 315.0f) {
                                CirclePlayDayAndNight.this.bhS = bce.m7710a((CirclePlayDayAndNight.this.bhV - 225.0f) / 90.0f, CirclePlayDayAndNight.this.bhP, CirclePlayDayAndNight.this.bhO);
                            }
                        } else {
                            CirclePlayDayAndNight.this.bhS = bce.m7710a((CirclePlayDayAndNight.this.bhV - 45.0f) / 90.0f, CirclePlayDayAndNight.this.bhO, CirclePlayDayAndNight.this.bhP);
                        }
                        CirclePlayDayAndNight.this.invalidate();
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
