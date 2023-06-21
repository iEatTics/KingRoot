package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.qq */
/* loaded from: classes.dex */
public final class C3484qq {
    /* renamed from: a */
    public static Drawable m2582a(int[] iArr, float f) {
        if (iArr == null || iArr.length == 0) {
            return null;
        }
        return new ShapeDrawable(new C3483qp(f, iArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static void m2579f(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Speed must be >= 0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2583a(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("You must provide at least 1 color");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m2581b(float f, String str) {
        if (f < 0.0f) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s %f must be positive", str, Float.valueOf(f)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static void m2578j(int i, String str) {
        if (i <= 0) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s must not be null", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m2580c(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s must be not null", str));
        }
    }
}
