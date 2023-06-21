package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class PercentageIndicator extends View {

    /* renamed from: Bf */
    private static int f569Bf = 48;

    /* renamed from: Bg */
    private Paint f570Bg;

    /* renamed from: Bh */
    private Paint f571Bh;

    /* renamed from: Bi */
    private Paint f572Bi;

    /* renamed from: Bj */
    private Paint f573Bj;

    /* renamed from: Bk */
    private String f574Bk;

    /* renamed from: Bl */
    private int f575Bl;
    private int mStrokeWidth;

    /* renamed from: zI */
    private RectF f576zI;

    public PercentageIndicator(Context context) {
        super(context);
        this.f574Bk = "DDD";
        this.f575Bl = 0;
        init();
    }

    public PercentageIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f574Bk = "DDD";
        this.f575Bl = 0;
        init();
    }

    public PercentageIndicator(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f574Bk = "DDD";
        this.f575Bl = 0;
        init();
    }

    public PercentageIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.f574Bk = "DDD";
        this.f575Bl = 0;
        init();
    }

    public void setTextStyle(String str) {
        this.f574Bk = str;
    }

    private void init() {
        m13562gO();
        m13561gP();
        m13560gQ();
    }

    /* renamed from: gO */
    private void m13562gO() {
        this.f571Bh = new Paint(1);
        this.f571Bh.setStyle(Paint.Style.STROKE);
        this.f571Bh.setStrokeCap(Paint.Cap.ROUND);
        this.f571Bh.setColor(C3953zi.m1311pr().getColor(R.color.green_3));
    }

    /* renamed from: gP */
    private void m13561gP() {
        this.f570Bg = new Paint(1);
        this.f570Bg.setStyle(Paint.Style.STROKE);
        this.f570Bg.setStrokeCap(Paint.Cap.ROUND);
        this.f570Bg.setColor(C3953zi.m1311pr().getColor(R.color.green_2));
    }

    /* renamed from: gQ */
    private void m13560gQ() {
        float f = C3953zi.m1311pr().getDisplayMetrics().scaledDensity;
        this.f572Bi = new Paint(1);
        this.f572Bi.setTextAlign(Paint.Align.LEFT);
        this.f572Bi.setTextSize(16.0f * f);
        this.f572Bi.setColor(C3953zi.m1311pr().getColor(R.color.green_2));
        this.f573Bj = new Paint(1);
        this.f573Bj.setTextAlign(Paint.Align.LEFT);
        this.f573Bj.setTextSize(f * 11.0f);
        this.f573Bj.setColor(C3953zi.m1311pr().getColor(R.color.grey_2));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        m13566a(canvas, this.f575Bl);
        m13565a(canvas, this.f575Bl + "%");
        m13563b(canvas, this.f574Bk);
    }

    public void setPercentage(int i) {
        if (i >= 0 && i <= 100) {
            ValueAnimator ofInt = ValueAnimator.ofInt(this.f575Bl, 0, i);
            ofInt.setInterpolator(new AccelerateInterpolator());
            ofInt.setDuration(700L);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingcore.uilib.PercentageIndicator.1
                @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PercentageIndicator.this.f575Bl = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    PercentageIndicator.this.invalidate();
                }
            });
            ofInt.start();
        }
    }

    /* renamed from: a */
    private void m13566a(Canvas canvas, int i) {
        canvas.drawArc(this.f576zI, 0.0f, 360.0f, false, this.f571Bh);
        canvas.drawArc(this.f576zI, -90.0f, i * 3.6f, false, this.f570Bg);
    }

    /* renamed from: a */
    private void m13565a(Canvas canvas, String str) {
        Rect rect = new Rect();
        this.f572Bi.getTextBounds(str, 0, str.length(), rect);
        Paint.FontMetricsInt fontMetricsInt = this.f572Bi.getFontMetricsInt();
        canvas.drawText(str, (getMeasuredWidth() / 2) - (rect.width() / 2), (((getMeasuredHeight() - fontMetricsInt.bottom) + fontMetricsInt.top) / 2) - fontMetricsInt.top, this.f572Bi);
    }

    /* renamed from: b */
    private void m13563b(Canvas canvas, String str) {
        Rect rect = new Rect();
        this.f573Bj.getTextBounds(str, 0, str.length(), rect);
        Paint.FontMetricsInt fontMetricsInt = this.f573Bj.getFontMetricsInt();
        canvas.drawText(str, (getMeasuredWidth() / 2) - (rect.width() / 2), ((((getMeasuredHeight() - fontMetricsInt.bottom) + fontMetricsInt.top) / 2) - fontMetricsInt.top) + this.f572Bi.getFontMetricsInt().top, this.f573Bj);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.min(getMeasuredHeight(), getMeasuredWidth()), 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mStrokeWidth = i / f569Bf;
        float ceil = ((float) Math.ceil(this.mStrokeWidth / 2.0d)) + 1.0f;
        int i5 = i / 16;
        this.f576zI = new RectF(i5 + ceil, i5 + ceil, (i - ceil) - i5, (i - ceil) - i5);
        this.f570Bg.setStrokeWidth(this.mStrokeWidth);
        this.f571Bh.setStrokeWidth(this.mStrokeWidth);
    }
}
