package com.kingroot.kinguser;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.support.p004v4.view.ViewCompat;
import android.util.TypedValue;
import android.view.View;
import android.widget.ImageView;
import java.util.List;
/* renamed from: com.kingroot.kinguser.wz */
/* loaded from: classes.dex */
public class C3870wz {
    /* renamed from: a */
    public static int m1485a(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: b */
    public static int m1483b(Context context, float f) {
        return (int) TypedValue.applyDimension(2, f, context.getResources().getDisplayMetrics());
    }

    /* renamed from: c */
    public static ImageView m1482c(Context context, @DrawableRes int i) {
        return m1484a(context, i, ImageView.ScaleType.CENTER_CROP);
    }

    /* renamed from: a */
    public static ImageView m1484a(Context context, @DrawableRes int i, ImageView.ScaleType scaleType) {
        ImageView imageView = new ImageView(context);
        imageView.setImageResource(i);
        imageView.setClickable(true);
        imageView.setScaleType(scaleType);
        return imageView;
    }

    /* renamed from: K */
    public static void m1486K(List<? extends View> list) {
        if (list != null) {
            for (View view : list) {
                view.setVisibility(0);
                ViewCompat.setAlpha(view, 1.0f);
                ViewCompat.setPivotX(view, view.getMeasuredWidth() * 0.5f);
                ViewCompat.setPivotY(view, view.getMeasuredHeight() * 0.5f);
                ViewCompat.setTranslationX(view, 0.0f);
                ViewCompat.setTranslationY(view, 0.0f);
                ViewCompat.setScaleX(view, 1.0f);
                ViewCompat.setScaleY(view, 1.0f);
                ViewCompat.setRotationX(view, 0.0f);
                ViewCompat.setRotationY(view, 0.0f);
                ViewCompat.setRotation(view, 0.0f);
            }
        }
    }
}
