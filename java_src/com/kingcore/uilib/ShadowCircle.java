package com.kingcore.uilib;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguser.bgi;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ShadowCircle extends View {

    /* renamed from: Az */
    private float f678Az;

    /* renamed from: BW */
    private Paint f679BW;

    /* renamed from: CF */
    private Paint f680CF;

    /* renamed from: CG */
    private int f681CG;

    /* renamed from: CH */
    private int f682CH;

    /* renamed from: CI */
    private int f683CI;

    /* renamed from: CJ */
    private String f684CJ;

    /* renamed from: CK */
    private float f685CK;

    /* renamed from: CL */
    private boolean f686CL;
    private float mRadius;
    private int mShadowColor;

    /* renamed from: zF */
    private float f687zF;

    /* renamed from: zG */
    private float f688zG;

    /* renamed from: zH */
    private float f689zH;

    public ShadowCircle(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f684CJ = "";
        this.f686CL = false;
        m13508d(context, attributeSet);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: d */
    private void m13508d(Context context, AttributeSet attributeSet) {
        TypedArray typedArray;
        try {
            typedArray = context.obtainStyledAttributes(attributeSet, afs.C0826a.ShadowCircleStyle);
            try {
                this.f689zH = typedArray.getDimension(4, getResources().getDimensionPixelSize(R.dimen.root_base_shadow_radius));
                this.mRadius = typedArray.getDimension(0, getResources().getDimensionPixelSize(R.dimen.root_base_shadow_circle_diameter));
                this.f678Az = typedArray.getDimension(5, getResources().getDimensionPixelSize(R.dimen.root_base_circle_thickness));
                this.f681CG = typedArray.getColor(1, context.getResources().getColor(R.color.white_1));
                this.mShadowColor = typedArray.getColor(3, bgi.getColor(33, R.color.main_header_view_inner_circle_shadow));
                this.f682CH = typedArray.getColor(2, context.getResources().getColor(R.color.common_arc_loop_color));
                if (typedArray != null) {
                    try {
                        typedArray.recycle();
                    } catch (Throwable th) {
                    }
                }
                this.f683CI = bgi.getColor(R.color.root_adapt_text);
                if (abd.m12839qb() >= 11) {
                    setLayerType(1, null);
                }
                this.f680CF = new Paint(1);
                this.f680CF.setStyle(Paint.Style.FILL);
                this.f680CF.setColor(this.f681CG);
                this.f680CF.setShadowLayer(this.f689zH, 0.0f, 0.0f, this.mShadowColor);
                this.f679BW = new Paint(1);
                this.f679BW.setStyle(Paint.Style.FILL);
                this.f679BW.setColor(this.f683CI);
                this.f679BW.setTextAlign(Paint.Align.CENTER);
            } catch (Throwable th2) {
                th = th2;
                if (typedArray != null) {
                    try {
                        typedArray.recycle();
                    } catch (Throwable th3) {
                    }
                }
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            typedArray = null;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawCircle(this.f687zF, this.f688zG, this.mRadius - this.f689zH, this.f680CF);
        if (this.f686CL) {
            this.f679BW.getTextBounds(this.f684CJ, 0, this.f684CJ.length(), new Rect());
            canvas.drawText(this.f684CJ, getMeasuredWidth() / 2, ((getMeasuredHeight() / 2) + (this.f679BW.getTextSize() / 2.0f)) - this.f679BW.getFontMetrics().descent, this.f679BW);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f687zF = i / 2;
        this.f688zG = i2 / 2;
        this.mRadius = Math.min(this.f687zF, this.f688zG);
        this.f685CK = 0.6f * this.mRadius;
        this.f679BW.setTextSize(this.f685CK);
    }

    public int getCircleColor() {
        return this.f681CG;
    }

    public void setCircleColor(int i) {
        if (this.f681CG != i) {
            this.f681CG = i;
            this.f680CF.setColor(this.f681CG);
            invalidate();
        }
    }

    public void setShadowColor(int i) {
        if (this.mShadowColor != i) {
            this.mShadowColor = i;
            this.f680CF.setShadowLayer(this.f689zH, 0.0f, 0.0f, this.mShadowColor);
            invalidate();
        }
    }

    public void setIsShowCenterText(boolean z) {
        this.f686CL = z;
    }

    public void setCenterText(String str) {
        this.f684CJ = str;
    }
}
