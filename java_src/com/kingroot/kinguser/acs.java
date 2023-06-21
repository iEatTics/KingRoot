package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public class acs {
    /* renamed from: b */
    public static Bitmap m12656b(Drawable drawable) {
        return m12657a(drawable, 1.0f);
    }

    /* renamed from: a */
    public static Bitmap m12657a(Drawable drawable, float f) {
        if (drawable == null) {
            return null;
        }
        if (f > 1.0f || f <= 0.0f) {
            throw new RuntimeException("quality is out of rang");
        }
        new Matrix().postScale(1.0f * f, 1.0f * f);
        Bitmap createBitmap = Bitmap.createBitmap((int) (drawable.getIntrinsicWidth() * f), (int) (drawable.getIntrinsicHeight() * f), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: a */
    public static BitmapDrawable m12658a(Bitmap bitmap, Context context) {
        if (bitmap == null || context == null) {
            return null;
        }
        return new BitmapDrawable(C3953zi.m1311pr(), bitmap);
    }

    /* renamed from: c */
    public static void m12655c(Bitmap bitmap) {
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
    }
}
