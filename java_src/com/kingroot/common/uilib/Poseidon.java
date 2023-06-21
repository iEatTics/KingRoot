package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes.dex */
public class Poseidon extends View {

    /* renamed from: Dm */
    private int f1006Dm;

    /* renamed from: Dn */
    private int f1007Dn;

    /* renamed from: Qk */
    private int f1008Qk;

    /* renamed from: Ql */
    private int f1009Ql;

    /* renamed from: Qm */
    private int f1010Qm;

    /* renamed from: Qn */
    private int f1011Qn;

    /* renamed from: Qo */
    private int f1012Qo;

    /* renamed from: Qp */
    private int f1013Qp;

    /* renamed from: Qq */
    private Path f1014Qq;

    /* renamed from: Qr */
    private Path f1015Qr;

    /* renamed from: Qs */
    private int f1016Qs;

    /* renamed from: Qt */
    private int f1017Qt;

    /* renamed from: Qu */
    private boolean f1018Qu;
    private int mColor;
    private Paint mPaint;

    public Poseidon(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1018Qu = true;
        this.mColor = Color.parseColor("#0cb9beca");
        init();
    }

    public Poseidon(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1018Qu = true;
        this.mColor = Color.parseColor("#0cb9beca");
        init();
    }

    private void init() {
        this.mPaint = new Paint(1);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setStrokeWidth(1.0f);
        this.mPaint.setColor(this.mColor);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        m13252i(canvas);
        m13251j(canvas);
        m13249nV();
    }

    /* renamed from: i */
    private void m13252i(Canvas canvas) {
        canvas.save();
        canvas.translate(-this.f1016Qs, this.f1007Dn);
        canvas.drawPath(this.f1014Qq, this.mPaint);
        canvas.restore();
    }

    /* renamed from: j */
    private void m13251j(Canvas canvas) {
        canvas.save();
        canvas.translate(-this.f1017Qt, this.f1007Dn);
        canvas.drawPath(this.f1015Qr, this.mPaint);
        canvas.restore();
    }

    /* renamed from: nV */
    private void m13249nV() {
        if (this.f1018Qu) {
            this.f1016Qs += 5;
            if (this.f1016Qs > this.f1013Qp) {
                this.f1016Qs = 0;
            }
            this.f1017Qt += 9;
            if (this.f1017Qt > this.f1013Qp) {
                this.f1017Qt = 0;
            }
            invalidate();
        }
    }

    /* renamed from: m */
    private Path m13250m(float f) {
        Path path = new Path();
        float f2 = this.f1013Qp * 0.083f;
        path.lineTo(0.0f, this.f1008Qk);
        path.quadTo(f2, this.f1011Qn, f2 * f, this.f1008Qk);
        path.quadTo(f2 * 5.0f, this.f1010Qm, f2 * 6.0f, this.f1008Qk);
        path.quadTo(f2 * 7.0f, this.f1011Qn, f2 * 9.0f, this.f1008Qk);
        path.quadTo(11.0f * f2, this.f1010Qm, this.f1013Qp, this.f1008Qk);
        path.quadTo(this.f1013Qp + f2, this.f1011Qn, (f2 * f) + this.f1013Qp, this.f1008Qk);
        path.quadTo((f2 * 5.0f) + this.f1013Qp, this.f1010Qm, (f2 * 6.0f) + this.f1013Qp, this.f1008Qk);
        path.quadTo((f2 * 7.0f) + this.f1013Qp, this.f1011Qn, (f2 * 9.0f) + this.f1013Qp, this.f1008Qk);
        path.quadTo((f2 * 11.0f) + this.f1013Qp, this.f1010Qm, this.f1013Qp + this.f1013Qp, this.f1008Qk);
        path.lineTo(this.f1013Qp * 2, 0.0f);
        return path;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f1006Dm = i;
        this.f1007Dn = i2;
        this.f1013Qp = this.f1006Dm;
        this.f1012Qo = (int) (this.f1007Dn * 0.667f);
        this.f1008Qk = -this.f1012Qo;
        this.f1009Ql = this.f1012Qo / 12;
        this.f1010Qm = this.f1008Qk + (this.f1009Ql / 2);
        this.f1011Qn = this.f1008Qk - (this.f1009Ql / 2);
        this.f1014Qq = m13250m(3.3f);
        this.f1015Qr = m13250m(2.7f);
    }
}
