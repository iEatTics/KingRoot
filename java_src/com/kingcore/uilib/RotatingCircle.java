package com.kingcore.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.EnumC3895xq;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguser.animationInterpolatorC3896xr;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class RotatingCircle extends View {

    /* renamed from: Az */
    private float f658Az;

    /* renamed from: CB */
    private ValueAnimator f659CB;

    /* renamed from: CC */
    private ValueAnimator f660CC;

    /* renamed from: CD */
    private volatile boolean f661CD;

    /* renamed from: Ct */
    private int f662Ct;

    /* renamed from: Cu */
    private float f663Cu;

    /* renamed from: Cv */
    private float f664Cv;

    /* renamed from: Cw */
    private int f665Cw;

    /* renamed from: Cx */
    private int f666Cx;

    /* renamed from: Cy */
    private float f667Cy;

    /* renamed from: Cz */
    private int f668Cz;
    private Handler mHandler;
    private Paint mPaint;
    private float mRadius;

    /* renamed from: zD */
    private int f669zD;

    /* renamed from: zF */
    private float f670zF;

    /* renamed from: zG */
    private float f671zG;

    /* renamed from: zI */
    private RectF f672zI;

    public RotatingCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13515d(context, attributeSet);
    }

    /* renamed from: d */
    private void m13515d(Context context, AttributeSet attributeSet) {
        TypedArray typedArray = null;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, afs.C0826a.RotatingCircleStyle);
            this.f662Ct = typedArray.getInteger(2, 360);
            this.f663Cu = typedArray.getInteger(6, 0);
            this.f669zD = typedArray.getInteger(4, 10);
            this.f658Az = typedArray.getDimension(3, getResources().getDimensionPixelSize(R.dimen.root_base_circle_thickness));
            this.f664Cv = typedArray.getFloat(5, 180.0f);
            this.f665Cw = typedArray.getInteger(7, 1);
            this.mRadius = typedArray.getDimension(0, 0.0f);
            this.f666Cx = typedArray.getColor(1, context.getResources().getColor(R.color.blue_1));
            this.f667Cy = this.f662Ct / this.f665Cw;
            this.mPaint = new Paint(1);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeCap(Paint.Cap.ROUND);
            this.mPaint.setColor(this.f666Cx);
            this.mPaint.setStrokeWidth(this.f658Az);
            float f = this.mRadius - (this.f658Az / 2.0f);
            this.f671zG = f;
            this.f670zF = f;
            this.f668Cz = getResources().getDimensionPixelSize(R.dimen.root_base_circle_diameter);
            m13511gW();
        } finally {
            if (typedArray != null) {
                try {
                    typedArray.recycle();
                } catch (Throwable th) {
                }
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int m13509p = m13509p(this.f668Cz, i);
        int m13509p2 = m13509p(this.f668Cz, i2);
        if (m13509p < m13509p2) {
            m13509p2 = m13509p;
        } else {
            m13509p = m13509p2;
        }
        setMeasuredDimension(m13509p2, m13509p);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.f663Cu, this.f670zF, this.f671zG);
        for (int i = 0; i < this.f665Cw; i++) {
            canvas.drawArc(this.f672zI, this.f667Cy * i, this.f664Cv, false, this.mPaint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f670zF = i / 2;
        this.f671zG = i2 / 2;
        this.mRadius = Math.min(this.f670zF, this.f671zG);
        float ceil = ((float) Math.ceil(this.f658Az / 2.0d)) + 1.0f;
        if (i < i2) {
            this.f672zI = new RectF(ceil, ceil, i - ceil, i - ceil);
        } else {
            this.f672zI = new RectF(ceil, ceil, i2 - ceil, i2 - ceil);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingcore.uilib.RotatingCircle.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 0) {
                        RotatingCircle.this.f663Cu += RotatingCircle.this.f669zD;
                        if (RotatingCircle.this.f663Cu > 360.0f) {
                            RotatingCircle.this.f663Cu -= 360.0f;
                        }
                        RotatingCircle.this.postInvalidate();
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

    /* renamed from: p */
    private int m13509p(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        switch (mode) {
            case Integer.MIN_VALUE:
                return size;
            case 0:
            default:
                return i;
            case 1073741824:
                return size;
        }
    }

    public float getRadius() {
        return this.mRadius;
    }

    public void setRadius(float f) {
        if (this.mRadius != f) {
            this.mRadius = f;
            invalidate();
        }
    }

    /* renamed from: gW */
    public void m13511gW() {
        this.f659CB = ValueAnimator.ofInt(4, 125);
        this.f659CB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.RotatingCircle.2
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RotatingCircle.this.f669zD = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RotatingCircle.this.invalidate();
            }
        });
        this.f659CB.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.RotatingCircle.3
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RotatingCircle.this.f669zD = 125;
                if (RotatingCircle.this.f660CC != null && !RotatingCircle.this.f661CD) {
                    RotatingCircle.this.f660CC.setStartDelay(2000L);
                    RotatingCircle.this.f660CC.start();
                }
            }
        });
        this.f659CB.setDuration(6000L);
        this.f659CB.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.QUAD_IN_OUT));
        this.f660CC = ValueAnimator.ofInt(125, 4);
        this.f660CC.addListener(new AnimatorListenerAdapter() { // from class: com.kingcore.uilib.RotatingCircle.4
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (RotatingCircle.this.f659CB != null && !RotatingCircle.this.f661CD) {
                    RotatingCircle.this.f659CB.start();
                }
            }
        });
        this.f660CC.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.RotatingCircle.5
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RotatingCircle.this.f669zD = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                RotatingCircle.this.invalidate();
            }
        });
        this.f660CC.setDuration(6000L);
        this.f660CC.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.QUAD_IN_OUT));
    }

    /* renamed from: gD */
    public void m13512gD() {
        this.f661CD = false;
        this.f659CB.start();
    }

    /* renamed from: gX */
    public void m13510gX() {
        this.f661CD = true;
        this.f659CB.cancel();
        this.f660CC.cancel();
    }
}
