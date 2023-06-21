package com.kingroot.kinguser;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.kingroot.common.uilib.ShadowProperty;
/* renamed from: com.kingroot.kinguser.wu */
/* loaded from: classes.dex */
public class C3859wu extends Drawable {

    /* renamed from: Rk */
    private int f3916Rk;

    /* renamed from: Rl */
    private int f3917Rl;

    /* renamed from: Rm */
    private ShadowProperty f3918Rm;

    /* renamed from: Rn */
    private int f3919Rn;

    /* renamed from: Ro */
    private RectF f3920Ro;

    /* renamed from: Rp */
    private float f3921Rp;

    /* renamed from: Rq */
    private float f3922Rq;

    /* renamed from: Rr */
    private boolean f3923Rr;
    private Paint mShadowPaint;

    /* renamed from: Rj */
    private RectF f3915Rj = new RectF();

    /* renamed from: Ri */
    private Paint f3914Ri = new Paint();

    public C3859wu(ShadowProperty shadowProperty, int i, float f, float f2) {
        this.f3923Rr = false;
        this.f3918Rm = shadowProperty;
        this.f3919Rn = this.f3918Rm.m13234ob();
        this.f3921Rp = f;
        this.f3922Rq = f2;
        this.f3914Ri.setAntiAlias(true);
        this.f3914Ri.setFilterBitmap(true);
        this.f3914Ri.setDither(true);
        this.f3914Ri.setStyle(Paint.Style.STROKE);
        this.f3914Ri.setStrokeWidth(shadowProperty.m13229og());
        this.f3914Ri.setColor(shadowProperty.m13228oh());
        if (shadowProperty.m13229og() > 0) {
            this.f3923Rr = true;
        }
        this.mShadowPaint = new Paint();
        this.mShadowPaint.setAntiAlias(true);
        this.mShadowPaint.setFilterBitmap(true);
        this.mShadowPaint.setDither(true);
        this.mShadowPaint.setStyle(Paint.Style.FILL);
        this.mShadowPaint.setColor(i);
        this.mShadowPaint.setShadowLayer(shadowProperty.m13232od(), shadowProperty.m13231oe(), shadowProperty.m13230of(), shadowProperty.getShadowColor());
        this.f3920Ro = new RectF();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (rect.right - rect.left > 0 && rect.bottom - rect.top > 0) {
            this.f3915Rj.left = rect.left;
            this.f3915Rj.right = rect.right;
            this.f3915Rj.top = rect.top;
            this.f3915Rj.bottom = rect.bottom;
            this.f3916Rk = (int) (this.f3915Rj.right - this.f3915Rj.left);
            this.f3917Rl = (int) (this.f3915Rj.bottom - this.f3915Rj.top);
            this.f3920Ro = new RectF(this.f3918Rm.m13238nX() ? this.f3919Rn : 0.0f, this.f3918Rm.m13237nY() ? this.f3919Rn : 0.0f, this.f3918Rm.m13236nZ() ? this.f3916Rk - this.f3919Rn : this.f3916Rk, this.f3918Rm.m13235oa() ? this.f3917Rl - this.f3919Rn : this.f3917Rl);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawRoundRect(this.f3920Ro, this.f3921Rp, this.f3922Rq, this.mShadowPaint);
        if (this.f3923Rr) {
            canvas.drawRoundRect(this.f3920Ro, this.f3921Rp, this.f3922Rq, this.f3914Ri);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 0;
    }
}
