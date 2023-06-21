package com.kingroot.common.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
/* loaded from: classes.dex */
public class ModuleAnimation extends ImageView {

    /* renamed from: Pv */
    private static float f962Pv = 10.0f;

    /* renamed from: PA */
    private boolean f963PA;

    /* renamed from: Pw */
    private int f964Pw;

    /* renamed from: Px */
    private int f965Px;

    /* renamed from: Py */
    private float f966Py;

    /* renamed from: Pz */
    private float f967Pz;
    private int height;
    private Drawable mDrawable;
    private int width;

    public ModuleAnimation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f967Pz = f962Pv;
        this.f963PA = false;
        init();
    }

    public ModuleAnimation(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f967Pz = f962Pv;
        this.f963PA = false;
        init();
    }

    private void init() {
        if (getDrawable() != null) {
            this.mDrawable = getDrawable();
            setImageDrawable(null);
        }
    }

    public void setSpeed(float f) {
        this.f967Pz = f;
    }

    public void setDrawable(Drawable drawable) {
        this.mDrawable = drawable;
        if (drawable != null) {
            this.mDrawable.setBounds(0, 0, this.width, this.height);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f963PA && this.mDrawable != null) {
            canvas.save();
            canvas.rotate(this.f966Py, this.f964Pw / 2, this.f965Px / 2);
            canvas.translate((this.f964Pw - this.width) / 2, (this.f965Px - this.height) / 2);
            this.mDrawable.draw(canvas);
            this.f966Py += this.f967Pz;
            if (this.f966Py >= 359.9d) {
                this.f966Py = 0.0f;
            }
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f964Pw = i;
        this.f965Px = i2;
        int min = Math.min(this.f964Pw, this.f965Px);
        this.height = min;
        this.width = min;
        if (this.mDrawable != null) {
            this.mDrawable.setBounds(0, 0, this.width, this.height);
        }
    }
}
