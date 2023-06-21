package com.kingroot.kinguser;

import android.graphics.PointF;
import android.graphics.RectF;
import android.widget.ImageView;
/* renamed from: com.kingroot.kinguser.app */
/* loaded from: classes.dex */
public class C1432app {
    public RectF aIh = new RectF();
    public RectF aIi = new RectF();
    public RectF aIj = new RectF();
    RectF aIk = new RectF();
    PointF aIl = new PointF();
    float aIm;
    public float aIn;
    public ImageView.ScaleType aIo;

    public C1432app(RectF rectF, RectF rectF2, RectF rectF3, RectF rectF4, PointF pointF, float f, float f2, ImageView.ScaleType scaleType) {
        this.aIh.set(rectF);
        this.aIi.set(rectF2);
        this.aIj.set(rectF3);
        this.aIm = f;
        this.aIo = scaleType;
        this.aIn = f2;
        this.aIk.set(rectF4);
        this.aIl.set(pointF);
    }
}
