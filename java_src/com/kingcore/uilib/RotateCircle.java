package com.kingcore.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class RotateCircle extends View {

    /* renamed from: AA */
    private float f643AA;

    /* renamed from: AB */
    private ValueAnimator f644AB;

    /* renamed from: Az */
    private float f645Az;

    /* renamed from: Ct */
    private int f646Ct;

    /* renamed from: Cu */
    private float f647Cu;

    /* renamed from: Cv */
    private float f648Cv;

    /* renamed from: Cw */
    private int f649Cw;

    /* renamed from: Cx */
    private int f650Cx;

    /* renamed from: Cy */
    private float f651Cy;

    /* renamed from: Cz */
    private int f652Cz;
    private Paint mPaint;

    /* renamed from: zD */
    private int f653zD;

    /* renamed from: zF */
    private float f654zF;

    /* renamed from: zG */
    private float f655zG;

    /* renamed from: zI */
    private RectF f656zI;

    public RotateCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m13525d(context, attributeSet);
    }

    /* renamed from: d */
    private void m13525d(Context context, AttributeSet attributeSet) {
        TypedArray typedArray = null;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, afs.C0826a.RotatingCircleStyle);
            this.f646Ct = typedArray.getInteger(2, 360);
            this.f647Cu = typedArray.getInteger(6, 0);
            this.f653zD = typedArray.getInteger(4, 10);
            this.f645Az = typedArray.getDimension(3, getResources().getDimensionPixelSize(R.dimen.root_base_circle_thickness));
            this.f648Cv = typedArray.getFloat(5, 180.0f);
            this.f649Cw = typedArray.getInteger(7, 1);
            this.f650Cx = typedArray.getColor(1, context.getResources().getColor(R.color.blue_1));
            this.f651Cy = this.f646Ct / this.f649Cw;
            this.mPaint = new Paint(1);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeCap(Paint.Cap.ROUND);
            this.mPaint.setColor(this.f650Cx);
            this.mPaint.setStrokeWidth(this.f645Az);
            this.f652Cz = getResources().getDimensionPixelSize(R.dimen.root_base_circle_diameter);
            m13523gW();
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
        int m13521p = m13521p(this.f652Cz, i);
        int m13521p2 = m13521p(this.f652Cz, i2);
        if (m13521p < m13521p2) {
            m13521p2 = m13521p;
        } else {
            m13521p = m13521p2;
        }
        setMeasuredDimension(m13521p2, m13521p);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.f643AA + this.f647Cu, this.f654zF, this.f655zG);
        for (int i = 0; i < this.f649Cw; i++) {
            canvas.drawArc(this.f656zI, this.f651Cy * i, this.f648Cv, false, this.mPaint);
        }
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f654zF = i / 2;
        this.f655zG = i2 / 2;
        float ceil = ((float) Math.ceil(this.f645Az / 2.0d)) + 1.0f;
        if (i < i2) {
            this.f656zI = new RectF(ceil, ceil, i - ceil, i - ceil);
        } else {
            this.f656zI = new RectF(ceil, ceil, i2 - ceil, i2 - ceil);
        }
    }

    /* renamed from: p */
    private int m13521p(int i, int i2) {
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

    /* renamed from: gW */
    public void m13523gW() {
        this.f644AB = ValueAnimator.ofInt(0, 359);
        this.f644AB.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.RotateCircle.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                RotateCircle.this.f643AA = (((Integer) valueAnimator.getAnimatedValue()).intValue() * RotateCircle.this.f653zD) + RotateCircle.this.f647Cu;
                RotateCircle.this.invalidate();
            }
        });
        this.f644AB.setDuration(2000L);
        this.f644AB.setRepeatCount(-1);
        this.f644AB.setInterpolator(new LinearInterpolator());
    }

    /* renamed from: gD */
    public void m13524gD() {
        this.f644AB.start();
    }

    /* renamed from: gX */
    public void m13522gX() {
        this.f644AB.cancel();
    }
}
