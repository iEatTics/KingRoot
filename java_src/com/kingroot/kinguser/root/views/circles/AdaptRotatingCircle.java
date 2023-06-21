package com.kingroot.kinguser.root.views.circles;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class AdaptRotatingCircle extends View {

    /* renamed from: Az */
    private float f3486Az;

    /* renamed from: Cu */
    private float f3487Cu;

    /* renamed from: Cz */
    private int f3488Cz;
    private Paint bgJ;
    private Paint bgK;
    private Handler mHandler;

    /* renamed from: zD */
    private int f3489zD;

    /* renamed from: zF */
    private float f3490zF;

    /* renamed from: zG */
    private float f3491zG;

    /* renamed from: zI */
    private RectF f3492zI;

    public AdaptRotatingCircle(Context context) {
        super(context);
        init();
    }

    public AdaptRotatingCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    private void init() {
        this.f3489zD = 1;
        this.f3486Az = getResources().getDimensionPixelSize(R.dimen.root_adapt_circle_thickness);
        this.bgJ = new Paint(1);
        this.bgJ.setStyle(Paint.Style.STROKE);
        this.bgJ.setStrokeCap(Paint.Cap.ROUND);
        this.bgJ.setColor(getResources().getColor(R.color.root_adapt_sun));
        this.bgJ.setStrokeWidth(this.f3486Az);
        this.bgK = new Paint(1);
        this.bgK.setStyle(Paint.Style.STROKE);
        this.bgK.setStrokeCap(Paint.Cap.ROUND);
        this.bgK.setColor(getResources().getColor(R.color.root_adapt_moon));
        this.bgK.setStrokeWidth(this.f3486Az);
        this.f3488Cz = getResources().getDimensionPixelSize(R.dimen.root_base_circle_diameter);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int m2423p = m2423p(this.f3488Cz, i);
        int m2423p2 = m2423p(this.f3488Cz, i2);
        if (m2423p < m2423p2) {
            m2423p2 = m2423p;
        } else {
            m2423p = m2423p2;
        }
        setMeasuredDimension(m2423p2, m2423p);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.save();
        canvas.rotate(this.f3487Cu, this.f3490zF, this.f3491zG);
        canvas.drawArc(this.f3492zI, 90.0f, 180.0f, false, this.bgJ);
        canvas.drawArc(this.f3492zI, -90.0f, 180.0f, false, this.bgK);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3490zF = i / 2;
        this.f3491zG = i2 / 2;
        float ceil = ((float) Math.ceil(this.f3486Az / 2.0d)) + 1.0f;
        if (i < i2) {
            this.f3492zI = new RectF(ceil, ceil, i - ceil, i - ceil);
        } else {
            this.f3492zI = new RectF(ceil, ceil, i2 - ceil, i2 - ceil);
        }
    }

    @Override // android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.root.views.circles.AdaptRotatingCircle.1
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (message.what == 0) {
                        AdaptRotatingCircle.this.f3487Cu += AdaptRotatingCircle.this.f3489zD;
                        if (AdaptRotatingCircle.this.f3487Cu > 360.0f) {
                            AdaptRotatingCircle.this.f3487Cu -= 360.0f;
                        }
                        AdaptRotatingCircle.this.postInvalidate();
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
    private int m2423p(int i, int i2) {
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
}
