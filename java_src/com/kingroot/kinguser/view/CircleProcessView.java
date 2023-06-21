package com.kingroot.kinguser.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguses.R;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class CircleProcessView extends View {
    private Paint aJK;
    private RectF bqX;
    private Paint bqY;
    private int bqZ;
    private int bra;
    private float mStrokeWidth;

    public CircleProcessView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        C3953zi m1311pr = C3953zi.m1311pr();
        if (m1311pr != null) {
            this.mStrokeWidth = m1311pr.getDimension(R.dimen.main_page_circle_stroke_width);
            this.bqY = new Paint(1);
            this.bqY.setColor(m1311pr.getColor(R.color.blue_1));
            this.bqY.setStyle(Paint.Style.STROKE);
            this.bqY.setStrokeWidth(this.mStrokeWidth);
            this.aJK = new Paint(1);
            this.aJK.setColor(m1311pr.getColor(R.color.grey_2));
            this.aJK.setStyle(Paint.Style.STROKE);
            this.aJK.setStrokeWidth(this.mStrokeWidth);
        }
        this.bqZ = 0;
        this.bra = 0;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.bqY != null && this.aJK != null && this.bqX != null) {
            this.bra += ((this.bqZ - this.bra) / 2) + 1;
            canvas.drawArc(this.bqX, this.bra + C4393util.S_ROLL_BACK, 360 - this.bra, false, this.aJK);
            canvas.drawArc(this.bqX, 180.0f, this.bra, false, this.bqY);
            if (this.bra < this.bqZ) {
                invalidate();
            }
        }
    }

    public void setProcess(int i) {
        if (i == 100) {
            this.bqZ = 360;
        } else {
            this.bqZ = (i * 360) / 100;
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.bqX = new RectF(this.mStrokeWidth / 2.0f, this.mStrokeWidth / 2.0f, getWidth() - (this.mStrokeWidth / 2.0f), getHeight() - (this.mStrokeWidth / 2.0f));
    }
}
