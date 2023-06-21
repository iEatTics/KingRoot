package com.kingroot.kinguser;

import android.support.annotation.NonNull;
/* renamed from: com.kingroot.kinguser.xs */
/* loaded from: classes.dex */
class C3897xs {
    /* renamed from: a */
    public static float m1458a(@NonNull EnumC3895xq enumC3895xq, float f) {
        switch (enumC3895xq) {
            case LINEAR:
            default:
                return f;
            case QUAD_IN:
                return m1460a(f, 2.0d);
            case QUAD_OUT:
                return m1457b(f, 2.0d);
            case QUAD_IN_OUT:
                return m1455c(f, 2.0d);
            case CUBIC_IN:
                return m1460a(f, 3.0d);
            case CUBIC_OUT:
                return m1457b(f, 3.0d);
            case CUBIC_IN_OUT:
                return m1455c(f, 3.0d);
            case QUART_IN:
                return m1460a(f, 4.0d);
            case QUART_OUT:
                return m1457b(f, 4.0d);
            case QUART_IN_OUT:
                return m1455c(f, 4.0d);
            case QUINT_IN:
                return m1460a(f, 5.0d);
            case QUINT_OUT:
                return m1457b(f, 5.0d);
            case QUINT_IN_OUT:
                return m1455c(f, 5.0d);
            case SINE_IN:
                return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
            case SINE_OUT:
                return (float) Math.sin((f * 3.141592653589793d) / 2.0d);
            case SINE_IN_OUT:
                return (float) ((-0.5d) * (Math.cos(3.141592653589793d * f) - 1.0d));
            case BACK_IN:
                return (float) (f * f * ((2.7d * f) - 1.7d));
            case BACK_OUT:
                float f2 = f - 1.0f;
                return (float) ((((f2 * 2.7d) + 1.7d) * f2 * f2) + 1.0d);
            case BACK_IN_OUT:
                return m1453d(f, 1.7f);
            case CIRC_IN:
                return (float) (-(Math.sqrt(1.0f - (f * f)) - 1.0d));
            case CIRC_OUT:
                float f3 = f - 1.0f;
                return (float) Math.sqrt(1.0f - (f3 * f3));
            case CIRC_IN_OUT:
                float f4 = f * 2.0f;
                if (f4 < 1.0f) {
                    return (float) ((Math.sqrt(1.0f - (f4 * f4)) - 1.0d) * (-0.5d));
                }
                float f5 = f4 - 2.0f;
                return (float) ((Math.sqrt(1.0f - (f5 * f5)) + 1.0d) * 0.5d);
            case BOUNCE_IN:
                return m1452p(f);
            case BOUNCE_OUT:
                return m1451q(f);
            case BOUNCE_IN_OUT:
                if (f < 0.5f) {
                    return m1452p(f * 2.0f) * 0.5f;
                }
                return (m1451q((f * 2.0f) - 1.0f) * 0.5f) + 0.5f;
            case ELASTIC_IN:
                return m1459a(f, 1.0d, 0.3d);
            case ELASTIC_OUT:
                return m1456b(f, 1.0d, 0.3d);
            case ELASTIC_IN_OUT:
                return m1454c(f, 1.0d, 0.45d);
        }
    }

    /* renamed from: a */
    private static float m1460a(float f, double d) {
        return (float) Math.pow(f, d);
    }

    /* renamed from: b */
    private static float m1457b(float f, double d) {
        return (float) (1.0d - Math.pow(1.0f - f, d));
    }

    /* renamed from: c */
    private static float m1455c(float f, double d) {
        float f2 = f * 2.0f;
        return f2 < 1.0f ? (float) (Math.pow(f2, d) * 0.5d) : (float) (1.0d - (Math.abs(Math.pow(2.0f - f2, d)) * 0.5d));
    }

    /* renamed from: d */
    private static float m1453d(float f, float f2) {
        float f3 = (float) (f2 * 1.525d);
        float f4 = f * 2.0f;
        if (f4 < 1.0f) {
            return (float) (((f4 * (f3 + 1.0f)) - f3) * f4 * f4 * 0.5d);
        }
        float f5 = f4 - 2.0f;
        return (float) ((((f3 + (f5 * (f3 + 1.0f))) * f5 * f5) + 2.0f) * 0.5d);
    }

    /* renamed from: p */
    private static float m1452p(float f) {
        return 1.0f - m1451q(1.0f - f);
    }

    /* renamed from: q */
    private static float m1451q(float f) {
        if (f < 0.36363636363636365d) {
            return (float) (f * 7.5625d * f);
        }
        if (f < 0.7272727272727273d) {
            float f2 = (float) (f - 0.5454545454545454d);
            return (float) ((f2 * f2 * 7.5625d) + 0.75d);
        } else if (f < 0.9090909090909091d) {
            float f3 = (float) (f - 0.8181818181818182d);
            return (float) ((f3 * f3 * 7.5625d) + 0.9375d);
        } else {
            float f4 = (float) (f - 0.9545454545454546d);
            return (float) ((f4 * f4 * 7.5625d) + 0.984375d);
        }
    }

    /* renamed from: a */
    private static float m1459a(float f, double d, double d2) {
        if (f != 0.0f && f != 1.0f) {
            float f2 = f - 1.0f;
            return (float) (-(Math.sin((6.283185307179586d * (f2 - ((d2 / 6.283185307179586d) * Math.asin(1.0d / d)))) / d2) * Math.pow(2.0d, 10.0f * f2) * d));
        }
        return f;
    }

    /* renamed from: b */
    private static float m1456b(float f, double d, double d2) {
        if (f != 0.0f && f != 1.0f) {
            return (float) ((Math.sin((6.283185307179586d * (f - ((d2 / 6.283185307179586d) * Math.asin(1.0d / d)))) / d2) * Math.pow(2.0d, (-10.0f) * f) * d) + 1.0d);
        }
        return f;
    }

    /* renamed from: c */
    private static float m1454c(float f, double d, double d2) {
        double asin = (d2 / 6.283185307179586d) * Math.asin(1.0d / d);
        float f2 = 2.0f * f;
        if (f2 < 1.0f) {
            float f3 = f2 - 1.0f;
            return (float) (Math.sin((6.283185307179586d * (f3 - asin)) / d2) * Math.pow(2.0d, 10.0f * f3) * d * (-0.5d));
        }
        float f4 = f2 - 1.0f;
        return (float) ((Math.sin((6.283185307179586d * (f4 - asin)) / d2) * Math.pow(2.0d, (-10.0f) * f4) * d * 0.5d) + 1.0d);
    }
}
