package com.kingcore.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguser.afs;
/* loaded from: classes.dex */
public class TimeLineView extends View {

    /* renamed from: Ds */
    private static final int f710Ds = Color.parseColor("#99aeb9");

    /* renamed from: Dt */
    private static final int f711Dt = Color.parseColor("#dce5eb");

    /* renamed from: CG */
    private int f712CG;

    /* renamed from: Dl */
    private Paint f713Dl;

    /* renamed from: Dm */
    private int f714Dm;

    /* renamed from: Dn */
    private int f715Dn;

    /* renamed from: Do */
    private int f716Do;

    /* renamed from: Dp */
    private int f717Dp;

    /* renamed from: Dq */
    private int f718Dq;

    /* renamed from: Dr */
    private int f719Dr;

    /* renamed from: Du */
    private boolean f720Du;

    /* renamed from: Dv */
    private boolean f721Dv;

    /* renamed from: Dw */
    private int f722Dw;
    private Paint mCirclePaint;

    public TimeLineView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f720Du = true;
        this.f721Dv = true;
        this.f712CG = f710Ds;
        this.f722Dw = f711Dt;
        m13490a(context, attributeSet, 0, 0);
    }

    public TimeLineView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f720Du = true;
        this.f721Dv = true;
        this.f712CG = f710Ds;
        this.f722Dw = f711Dt;
        m13490a(context, attributeSet, i, 0);
    }

    public TimeLineView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f720Du = true;
        this.f721Dv = true;
        this.f712CG = f710Ds;
        this.f722Dw = f711Dt;
        m13490a(context, attributeSet, i, i2);
    }

    /* renamed from: a */
    private void m13490a(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.TimeLineView, i, i2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i3 = 0; i3 < indexCount; i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            switch (index) {
                case 0:
                    this.f720Du = obtainStyledAttributes.getBoolean(index, true);
                    break;
                case 1:
                    this.f721Dv = obtainStyledAttributes.getBoolean(index, true);
                    break;
                case 2:
                    this.f712CG = obtainStyledAttributes.getColor(index, f710Ds);
                    break;
                case 3:
                    this.f722Dw = obtainStyledAttributes.getColor(index, f711Dt);
                    break;
            }
        }
        this.mCirclePaint = new Paint();
        this.mCirclePaint.setAntiAlias(true);
        this.mCirclePaint.setDither(true);
        this.mCirclePaint.setColor(this.f712CG);
        this.f713Dl = new Paint();
        this.f713Dl.setAntiAlias(true);
        this.f713Dl.setDither(true);
        this.f713Dl.setColor(this.f722Dw);
    }

    /* renamed from: s */
    public void m13488s(int i, int i2) {
        this.f712CG = i;
        this.f722Dw = i2;
        this.mCirclePaint.setColor(this.f712CG);
        this.f713Dl.setColor(this.f722Dw);
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.f716Do, this.f717Dp, this.f718Dq, this.mCirclePaint);
        if (this.f720Du) {
            canvas.drawLine(this.f716Do, (this.f717Dp - this.f718Dq) - this.f719Dr, this.f716Do, 0.0f, this.f713Dl);
        }
        if (this.f721Dv) {
            canvas.drawLine(this.f716Do, this.f717Dp + this.f718Dq + this.f719Dr, this.f716Do, this.f715Dn, this.f713Dl);
        }
    }

    /* renamed from: b */
    public void m13489b(boolean z, boolean z2) {
        this.f720Du = z;
        this.f721Dv = z2;
        postInvalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f714Dm = i;
        this.f715Dn = i2;
        this.f716Do = this.f714Dm / 2;
        this.f717Dp = this.f715Dn / 2;
        this.f718Dq = this.f714Dm / 2;
        this.f719Dr = this.f718Dq / 2;
        this.f713Dl.setStrokeWidth(this.f718Dq / 2);
    }
}
