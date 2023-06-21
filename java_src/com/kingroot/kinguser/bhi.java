package com.kingroot.kinguser;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class bhi extends Animation {
    public static final boolean bqB;
    private static final WeakHashMap<View, bhi> bqC;
    private float acQ;
    private float acR;
    private boolean bqD;
    private float bqE;
    private float bqF;
    private float bqG;
    private float bqJ;
    private float bqK;
    private final WeakReference<View> mView;

    /* renamed from: Cq */
    private final Camera f1677Cq = new Camera();
    private float mAlpha = 1.0f;
    private float bqH = 1.0f;
    private float bqI = 1.0f;
    private final RectF bqL = new RectF();
    private final RectF bqM = new RectF();
    private final Matrix mTempMatrix = new Matrix();

    static {
        bqB = Integer.valueOf(Build.VERSION.SDK).intValue() < 11;
        bqC = new WeakHashMap<>();
    }

    /* renamed from: J */
    public static bhi m7003J(View view) {
        bhi bhiVar = bqC.get(view);
        if (bhiVar == null || bhiVar != view.getAnimation()) {
            bhi bhiVar2 = new bhi(view);
            bqC.put(view, bhiVar2);
            return bhiVar2;
        }
        return bhiVar;
    }

    public bhi(View view) {
        setDuration(0L);
        setFillAfter(true);
        view.setAnimation(this);
        this.mView = new WeakReference<>(view);
    }

    public float getAlpha() {
        return this.mAlpha;
    }

    public void setAlpha(float f) {
        if (this.mAlpha != f) {
            this.mAlpha = f;
            View view = this.mView.get();
            if (view != null) {
                view.invalidate();
            }
        }
    }

    public float getPivotX() {
        return this.acQ;
    }

    public void setPivotX(float f) {
        if (!this.bqD || this.acQ != f) {
            acv();
            this.bqD = true;
            this.acQ = f;
            acw();
        }
    }

    public float getPivotY() {
        return this.acR;
    }

    public void setPivotY(float f) {
        if (!this.bqD || this.acR != f) {
            acv();
            this.bqD = true;
            this.acR = f;
            acw();
        }
    }

    public float getRotation() {
        return this.bqG;
    }

    public void setRotation(float f) {
        if (this.bqG != f) {
            acv();
            this.bqG = f;
            acw();
        }
    }

    public float getRotationX() {
        return this.bqE;
    }

    public void setRotationX(float f) {
        if (this.bqE != f) {
            acv();
            this.bqE = f;
            acw();
        }
    }

    public float getRotationY() {
        return this.bqF;
    }

    public void setRotationY(float f) {
        if (this.bqF != f) {
            acv();
            this.bqF = f;
            acw();
        }
    }

    public float getScaleX() {
        return this.bqH;
    }

    public void setScaleX(float f) {
        if (this.bqH != f) {
            acv();
            this.bqH = f;
            acw();
        }
    }

    public float getScaleY() {
        return this.bqI;
    }

    public void setScaleY(float f) {
        if (this.bqI != f) {
            acv();
            this.bqI = f;
            acw();
        }
    }

    public int getScrollX() {
        View view = this.mView.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollX();
    }

    public void setScrollX(int i) {
        View view = this.mView.get();
        if (view != null) {
            view.scrollTo(i, view.getScrollY());
        }
    }

    public int getScrollY() {
        View view = this.mView.get();
        if (view == null) {
            return 0;
        }
        return view.getScrollY();
    }

    public void setScrollY(int i) {
        View view = this.mView.get();
        if (view != null) {
            view.scrollTo(view.getScrollX(), i);
        }
    }

    public float getTranslationX() {
        return this.bqJ;
    }

    public void setTranslationX(float f) {
        if (this.bqJ != f) {
            acv();
            this.bqJ = f;
            acw();
        }
    }

    public float getTranslationY() {
        return this.bqK;
    }

    public void setTranslationY(float f) {
        if (this.bqK != f) {
            acv();
            this.bqK = f;
            acw();
        }
    }

    public float getX() {
        View view = this.mView.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getLeft() + this.bqJ;
    }

    public void setX(float f) {
        View view = this.mView.get();
        if (view != null) {
            setTranslationX(f - view.getLeft());
        }
    }

    public float getY() {
        View view = this.mView.get();
        if (view == null) {
            return 0.0f;
        }
        return view.getTop() + this.bqK;
    }

    public void setY(float f) {
        View view = this.mView.get();
        if (view != null) {
            setTranslationY(f - view.getTop());
        }
    }

    private void acv() {
        View view = this.mView.get();
        if (view != null) {
            m7001a(this.bqL, view);
        }
    }

    private void acw() {
        View view = this.mView.get();
        if (view != null && view.getParent() != null) {
            RectF rectF = this.bqM;
            m7001a(rectF, view);
            rectF.union(this.bqL);
            ((View) view.getParent()).invalidate((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
        }
    }

    /* renamed from: a */
    private void m7001a(RectF rectF, View view) {
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        Matrix matrix = this.mTempMatrix;
        matrix.reset();
        m7002a(matrix, view);
        this.mTempMatrix.mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        if (rectF.right < rectF.left) {
            float f = rectF.right;
            rectF.right = rectF.left;
            rectF.left = f;
        }
        if (rectF.bottom < rectF.top) {
            float f2 = rectF.top;
            rectF.top = rectF.bottom;
            rectF.bottom = f2;
        }
    }

    /* renamed from: a */
    private void m7002a(Matrix matrix, View view) {
        float width = view.getWidth();
        float height = view.getHeight();
        boolean z = this.bqD;
        float f = z ? this.acQ : width / 2.0f;
        float f2 = z ? this.acR : height / 2.0f;
        float f3 = this.bqE;
        float f4 = this.bqF;
        float f5 = this.bqG;
        if (f3 != 0.0f || f4 != 0.0f || f5 != 0.0f) {
            Camera camera = this.f1677Cq;
            camera.save();
            camera.rotateX(f3);
            camera.rotateY(f4);
            camera.rotateZ(-f5);
            camera.getMatrix(matrix);
            camera.restore();
            matrix.preTranslate(-f, -f2);
            matrix.postTranslate(f, f2);
        }
        float f6 = this.bqH;
        float f7 = this.bqI;
        if (f6 != 1.0f || f7 != 1.0f) {
            matrix.postScale(f6, f7);
            matrix.postTranslate((-(f / width)) * ((f6 * width) - width), (-(f2 / height)) * ((f7 * height) - height));
        }
        matrix.postTranslate(this.bqJ, this.bqK);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        View view = this.mView.get();
        if (view != null) {
            transformation.setAlpha(this.mAlpha);
            m7002a(transformation.getMatrix(), view);
        }
    }
}
