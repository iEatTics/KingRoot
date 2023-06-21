package com.kingroot.kinguser;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: com.kingroot.kinguser.qc */
/* loaded from: classes.dex */
public class C3453qc extends Animation {

    /* renamed from: Ck */
    private final float f3351Ck;

    /* renamed from: Cl */
    private final float f3352Cl;

    /* renamed from: Cm */
    private final float f3353Cm;

    /* renamed from: Cn */
    private final float f3354Cn;

    /* renamed from: Co */
    private final float f3355Co;

    /* renamed from: Cp */
    private final boolean f3356Cp;

    /* renamed from: Cq */
    private Camera f3357Cq;

    /* renamed from: Cr */
    ContextThemeWrapper f3358Cr;

    /* renamed from: Cs */
    float f3359Cs;

    public C3453qc(ContextThemeWrapper contextThemeWrapper, float f, float f2, float f3, float f4, float f5, boolean z) {
        this.f3359Cs = 1.0f;
        this.f3358Cr = contextThemeWrapper;
        this.f3351Ck = f;
        this.f3352Cl = f2;
        this.f3353Cm = f3;
        this.f3354Cn = f4;
        this.f3355Co = f5;
        this.f3356Cp = z;
        this.f3359Cs = contextThemeWrapper.getResources().getDisplayMetrics().density;
        Log.e("scale", "" + this.f3359Cs);
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.f3357Cq = new Camera();
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.f3351Ck;
        float f3 = f2 + ((this.f3352Cl - f2) * f);
        float f4 = this.f3353Cm;
        float f5 = this.f3354Cn;
        Camera camera = this.f3357Cq;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (this.f3356Cp) {
            camera.translate(0.0f, 0.0f, this.f3355Co * f);
        } else {
            camera.translate(0.0f, 0.0f, this.f3355Co * (1.0f - f));
        }
        camera.rotateY(f3);
        camera.getMatrix(matrix);
        camera.restore();
        float[] fArr = {0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
        matrix.getValues(fArr);
        fArr[6] = fArr[6] / this.f3359Cs;
        matrix.setValues(fArr);
        matrix.preTranslate(-f4, -f5);
        matrix.postTranslate(f4, f5);
    }
}
