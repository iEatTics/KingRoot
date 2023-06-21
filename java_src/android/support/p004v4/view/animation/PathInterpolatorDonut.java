package android.support.p004v4.view.animation;

import android.graphics.Path;
import android.graphics.PathMeasure;
import android.view.animation.Interpolator;
/* renamed from: android.support.v4.view.animation.PathInterpolatorDonut */
/* loaded from: classes.dex */
class PathInterpolatorDonut implements Interpolator {
    private static final float PRECISION = 0.002f;

    /* renamed from: mX */
    private final float[] f85mX;

    /* renamed from: mY */
    private final float[] f86mY;

    public PathInterpolatorDonut(Path path) {
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int i = ((int) (length / PRECISION)) + 1;
        this.f85mX = new float[i];
        this.f86mY = new float[i];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < i; i2++) {
            pathMeasure.getPosTan((i2 * length) / (i - 1), fArr, null);
            this.f85mX[i2] = fArr[0];
            this.f86mY[i2] = fArr[1];
        }
    }

    public PathInterpolatorDonut(float f, float f2) {
        this(createQuad(f, f2));
    }

    public PathInterpolatorDonut(float f, float f2, float f3, float f4) {
        this(createCubic(f, f2, f3, f4));
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i;
        if (f <= 0.0f) {
            return 0.0f;
        }
        if (f < 1.0f) {
            int i2 = 0;
            int length = this.f85mX.length - 1;
            while (length - i2 > 1) {
                int i3 = (i2 + length) / 2;
                if (f < this.f85mX[i3]) {
                    i = i2;
                } else {
                    int i4 = length;
                    i = i3;
                    i3 = i4;
                }
                i2 = i;
                length = i3;
            }
            float f2 = this.f85mX[length] - this.f85mX[i2];
            if (f2 == 0.0f) {
                return this.f86mY[i2];
            }
            float f3 = (f - this.f85mX[i2]) / f2;
            float f4 = this.f86mY[i2];
            return (f3 * (this.f86mY[length] - f4)) + f4;
        }
        return 1.0f;
    }

    private static Path createQuad(float f, float f2) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.quadTo(f, f2, 1.0f, 1.0f);
        return path;
    }

    private static Path createCubic(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(0.0f, 0.0f);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        return path;
    }
}
