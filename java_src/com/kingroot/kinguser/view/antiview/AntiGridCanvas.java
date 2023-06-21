package com.kingroot.kinguser.view.antiview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class AntiGridCanvas extends View {
    private int bse;
    private int bsf;
    private int bsg;
    private float bsh;
    private float bsi;
    private Shader bsj;
    private ValueAnimator bsk;
    private Context mContext;
    private Paint mPaint;

    public AntiGridCanvas(Context context) {
        super(context);
        this.bsg = 0;
        this.bsh = 0.0f;
        this.bsi = 0.0f;
        this.bsk = null;
        this.mContext = context;
        m1812gq();
    }

    public AntiGridCanvas(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bsg = 0;
        this.bsh = 0.0f;
        this.bsi = 0.0f;
        this.bsk = null;
        this.mContext = context;
        m1812gq();
    }

    public AntiGridCanvas(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.bsg = 0;
        this.bsh = 0.0f;
        this.bsi = 0.0f;
        this.bsk = null;
        this.mContext = context;
        m1812gq();
    }

    /* renamed from: gq */
    private void m1812gq() {
        this.mPaint = new Paint();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.bsj = new LinearGradient(0.0f, 0.0f, 0.0f, this.bse, new int[]{C3953zi.m1311pr().getColor(R.color.black_1), Color.parseColor("#b3009688")}, (float[]) null, Shader.TileMode.CLAMP);
        this.mPaint.setShader(this.bsj);
        initAnimation();
        if (this.bsk != null) {
            this.bsk.start();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.drawRect(0.0f, 0.0f, this.bsf, this.bsh, this.mPaint);
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.bsk != null) {
            this.bsk.cancel();
        }
    }

    private void initAnimation() {
        this.bsk = ValueAnimator.ofFloat(0.0f, this.bse);
        this.bsk.setDuration(2000L);
        this.bsk.setRepeatCount(-1);
        this.bsk.setInterpolator(new LinearInterpolator());
        this.bsk.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.view.antiview.AntiGridCanvas.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                AntiGridCanvas.this.bsh = floatValue;
                if (floatValue <= AntiGridCanvas.this.bse / 2) {
                    AntiGridCanvas.this.bsi = floatValue;
                } else {
                    AntiGridCanvas.this.bsi = floatValue - (AntiGridCanvas.this.bse / 2);
                }
                if (AntiGridCanvas.this.bsg <= 100) {
                    AntiGridCanvas.this.invalidate();
                }
            }
        });
    }

    public void setViewConfig(View view) {
        this.bse = view.getMeasuredHeight();
        this.bsf = view.getMeasuredWidth();
    }

    public void setCurPercent(int i) {
        this.bsg = i;
    }
}
