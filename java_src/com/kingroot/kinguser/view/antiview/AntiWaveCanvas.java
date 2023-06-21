package com.kingroot.kinguser.view.antiview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.animation.ObjectAnimator;
import com.android.animation.ValueAnimator;
/* loaded from: classes.dex */
public final class AntiWaveCanvas extends View {

    /* renamed from: CI */
    private int f3759CI;
    private ValueAnimator brg;
    private float bsA;
    private float bsB;
    private float bsC;
    private float bsD;
    private float bsE;
    private float bsF;
    private float bsG;
    private float bsH;
    private float bsI;
    private float bsJ;
    private int bso;
    private int bsp;
    private Paint bsq;
    private int bsr;
    private Paint bss;
    private Paint bst;
    private Paint bsu;
    private Paint bsv;
    private Paint bsw;
    private Paint bsx;
    private float bsy;
    private float bsz;
    private Context mContext;

    public AntiWaveCanvas(Context context) {
        super(context);
        this.bsy = 0.0f;
        this.bsz = 0.0f;
        this.bsA = 0.0f;
        this.bsB = 0.0f;
        this.bsC = 0.0f;
        this.bsD = 0.0f;
        this.bsE = 0.0f;
        this.bsF = 0.0f;
        this.bsG = 0.0f;
        this.bsH = 0.0f;
        this.brg = null;
        this.bsI = 100.0f;
        this.bsJ = 0.0f;
        this.mContext = context;
        m1801gq();
    }

    public AntiWaveCanvas(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bsy = 0.0f;
        this.bsz = 0.0f;
        this.bsA = 0.0f;
        this.bsB = 0.0f;
        this.bsC = 0.0f;
        this.bsD = 0.0f;
        this.bsE = 0.0f;
        this.bsF = 0.0f;
        this.bsG = 0.0f;
        this.bsH = 0.0f;
        this.brg = null;
        this.bsI = 100.0f;
        this.bsJ = 0.0f;
        this.mContext = context;
        m1801gq();
    }

    public AntiWaveCanvas(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bsy = 0.0f;
        this.bsz = 0.0f;
        this.bsA = 0.0f;
        this.bsB = 0.0f;
        this.bsC = 0.0f;
        this.bsD = 0.0f;
        this.bsE = 0.0f;
        this.bsF = 0.0f;
        this.bsG = 0.0f;
        this.bsH = 0.0f;
        this.brg = null;
        this.bsI = 100.0f;
        this.bsJ = 0.0f;
        this.mContext = context;
        m1801gq();
    }

    /* renamed from: gq */
    private void m1801gq() {
        this.f3759CI = Color.parseColor("#00ffffff");
        this.bsq = new Paint();
        this.bsq.setStyle(Paint.Style.FILL);
        this.bsq.setColor(this.f3759CI);
        this.bsq.setStrokeWidth(3.0f);
        this.bsr = Color.parseColor("#349f96");
        this.bss = new Paint();
        this.bss.setStyle(Paint.Style.FILL);
        this.bss.setColor(this.f3759CI);
        this.bss.setStrokeWidth(3.0f);
        this.bst = new Paint();
        this.bst.setStyle(Paint.Style.FILL);
        this.bst.setColor(this.bsr);
        this.bst.setStrokeWidth(3.0f);
        this.bsu = new Paint();
        this.bsu.setStyle(Paint.Style.FILL);
        this.bsu.setColor(this.bsr);
        this.bsu.setStrokeWidth(3.0f);
        this.bsv = new Paint();
        this.bsv.setStyle(Paint.Style.FILL);
        this.bsv.setColor(this.bsr);
        this.bsv.setStrokeWidth(3.0f);
        this.bsw = new Paint();
        this.bsw.setStyle(Paint.Style.FILL);
        this.bsw.setColor(this.bsr);
        this.bsw.setStrokeWidth(3.0f);
        this.bsx = new Paint();
        this.bsx.setStyle(Paint.Style.FILL);
        this.bsx.setColor(this.bsr);
        this.bsx.setStrokeWidth(3.0f);
        new DisplayMetrics();
        DisplayMetrics displayMetrics = this.mContext.getResources().getDisplayMetrics();
        this.bso = displayMetrics.widthPixels;
        this.bsp = displayMetrics.heightPixels;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.bst.setAlpha((int) this.bsD);
        this.bsu.setAlpha((int) this.bsE);
        this.bsv.setAlpha((int) this.bsF);
        this.bsw.setAlpha((int) this.bsG);
        this.bsx.setAlpha((int) this.bsH);
        canvas.drawCircle(this.bso / 2, (this.bsp * 26) / 100, this.bsy, this.bst);
        canvas.drawCircle(this.bso / 2, (this.bsp * 26) / 100, this.bsz, this.bsu);
        canvas.drawCircle(this.bso / 2, (this.bsp * 26) / 100, this.bsA, this.bsv);
        canvas.drawCircle(this.bso / 2, (this.bsp * 26) / 100, this.bsB, this.bsw);
        canvas.drawCircle(this.bso / 2, (this.bsp * 26) / 100, this.bsC, this.bsx);
        canvas.drawCircle(this.bso / 2, (this.bsp * 26) / 100, this.bso / 5, this.bsq);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        initAnimation();
        if (this.brg != null) {
            this.brg.start();
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.brg != null) {
            this.brg.cancel();
        }
    }

    private void initAnimation() {
        this.brg = ObjectAnimator.ofFloat(0.0f, Math.abs(this.bsI - this.bsJ));
        this.brg.setDuration(7000L);
        this.brg.setRepeatCount(-1);
        this.brg.setInterpolator(new LinearInterpolator());
        this.brg.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.view.antiview.AntiWaveCanvas.1
            float bsK;
            float bsL;
            float bsM;
            float bsN;
            float bsO;
            float bsP;

            {
                this.bsK = AntiWaveCanvas.this.bso / 7;
                this.bsL = (AntiWaveCanvas.this.bso * 2) / 3;
                this.bsM = (AntiWaveCanvas.this.bsI - AntiWaveCanvas.this.bsJ) / 4.0f;
                this.bsN = AntiWaveCanvas.this.bsI - AntiWaveCanvas.this.bsJ;
                this.bsO = this.bsL - this.bsK;
                this.bsP = this.bsO / 4.0f;
            }

            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (this.bsN != 0.0f) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    float f = floatValue / this.bsN;
                    AntiWaveCanvas.this.bsD = AntiWaveCanvas.this.bsI - floatValue;
                    AntiWaveCanvas.this.bsE = AntiWaveCanvas.this.bsI - (((this.bsM * 1.0f) + floatValue) % this.bsN);
                    AntiWaveCanvas.this.bsF = AntiWaveCanvas.this.bsI - (((this.bsM * 2.0f) + floatValue) % this.bsN);
                    AntiWaveCanvas.this.bsG = AntiWaveCanvas.this.bsI - (((this.bsM * 3.0f) + floatValue) % this.bsN);
                    AntiWaveCanvas.this.bsH = AntiWaveCanvas.this.bsI - ((floatValue + (this.bsM * 4.0f)) % this.bsN);
                    AntiWaveCanvas.this.bsy = this.bsK + (this.bsO * f);
                    AntiWaveCanvas.this.bsz = this.bsK + (((this.bsO * f) + (this.bsP * 1.0f)) % this.bsO);
                    AntiWaveCanvas.this.bsA = this.bsK + (((this.bsO * f) + (this.bsP * 2.0f)) % this.bsO);
                    AntiWaveCanvas.this.bsB = this.bsK + (((this.bsO * f) + (this.bsP * 3.0f)) % this.bsO);
                    AntiWaveCanvas.this.bsC = (((f * this.bsO) + (this.bsP * 4.0f)) % this.bsO) + this.bsK;
                    AntiWaveCanvas.this.invalidate();
                }
            }
        });
    }
}
