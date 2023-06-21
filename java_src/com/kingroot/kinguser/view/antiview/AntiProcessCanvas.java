package com.kingroot.kinguser.view.antiview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.bgk;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class AntiProcessCanvas extends View {

    /* renamed from: AA */
    private float f3757AA;
    private int aWR;
    private int bsn;
    private Context mContext;
    private Paint mPaint;

    /* renamed from: zE */
    private int f3758zE;

    public AntiProcessCanvas(Context context) {
        super(context);
        this.f3758zE = 0;
        this.aWR = 0;
        this.f3757AA = 0.0f;
        this.mContext = context;
        init();
    }

    public AntiProcessCanvas(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3758zE = 0;
        this.aWR = 0;
        this.f3757AA = 0.0f;
        this.mContext = context;
        init();
    }

    public AntiProcessCanvas(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3758zE = 0;
        this.aWR = 0;
        this.f3757AA = 0.0f;
        this.mContext = context;
        init();
    }

    private void init() {
        float f = this.mContext.getResources().getDisplayMetrics().scaledDensity;
        if (f < 1.2d) {
            this.f3758zE = 3;
        } else if (f < 2.1d) {
            this.f3758zE = 4;
        } else {
            this.f3758zE = 5;
        }
        this.mPaint = new Paint();
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.f3758zE);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(C3953zi.m1311pr().getColor(R.color.green_1));
        this.bsn = bgk.m7111c(this.mContext, 40.0f);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.aWR >= 0 && this.aWR <= 34) {
            this.f3757AA = (this.aWR * 360) / 34;
            canvas.drawArc(new RectF(3.0f, 3.0f, this.bsn - 3, this.bsn - 3), 270.0f, this.f3757AA, false, this.mPaint);
        }
        if (this.aWR > 34 && this.aWR <= 66) {
            this.f3757AA = ((this.aWR - 33) * 360) / 33;
            canvas.drawArc(new RectF(3.0f, 3.0f, this.bsn - 3, this.bsn - 3), 270.0f, this.f3757AA, false, this.mPaint);
        }
        if (this.aWR > 66 && this.aWR <= 100) {
            this.f3757AA = ((this.aWR - 67) * 360) / 33;
            canvas.drawArc(new RectF(3.0f, 3.0f, this.bsn - 3, this.bsn - 3), 270.0f, this.f3757AA, false, this.mPaint);
        }
    }

    public void setCurPercentage(int i) {
        this.aWR = i;
    }

    public void acR() {
        invalidate();
    }
}
