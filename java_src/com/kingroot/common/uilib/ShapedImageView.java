package com.kingroot.common.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.support.p004v4.view.ViewCompat;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.kingroot.kinguser.afs;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ShapedImageView extends ImageView {

    /* renamed from: RA */
    private int f1060RA;

    /* renamed from: RB */
    private Shape f1061RB;
    private Paint mPaint;
    private float mRadius;

    public ShapedImageView(Context context) {
        super(context);
        this.f1060RA = 0;
        this.mRadius = 0.0f;
        m13227a(null);
    }

    public ShapedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1060RA = 0;
        this.mRadius = 0.0f;
        m13227a(attributeSet);
    }

    public ShapedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1060RA = 0;
        this.mRadius = 0.0f;
        m13227a(attributeSet);
    }

    /* renamed from: a */
    private void m13227a(AttributeSet attributeSet) {
        if (Build.VERSION.SDK_INT >= 11) {
            setLayerType(2, null);
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, afs.C0826a.ShapedImageView);
            this.f1060RA = obtainStyledAttributes.getInt(0, 0);
            this.mRadius = obtainStyledAttributes.getDimension(1, 0.0f);
            obtainStyledAttributes.recycle();
        }
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setFilterBitmap(true);
        this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            switch (this.f1060RA) {
                case 2:
                    this.mRadius = Math.min(getWidth(), getHeight()) / 2.0f;
                    break;
            }
            if (this.f1061RB == null) {
                float[] fArr = new float[8];
                Arrays.fill(fArr, this.mRadius);
                this.f1061RB = new RoundRectShape(fArr, null, null);
            }
            this.f1061RB.resize(getWidth(), getHeight());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        int saveCount = canvas.getSaveCount();
        canvas.save();
        super.onDraw(canvas);
        switch (this.f1060RA) {
            case 1:
            case 2:
                if (this.f1061RB != null) {
                    this.f1061RB.draw(canvas, this.mPaint);
                    break;
                }
                break;
        }
        canvas.restoreToCount(saveCount);
    }
}
