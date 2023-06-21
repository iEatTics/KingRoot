package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import java.util.Random;
/* loaded from: classes.dex */
public class bdi extends bdc {
    private final ExamRecommendAppInfo biY;

    public bdi(ExamRecommendAppInfo examRecommendAppInfo, Drawable drawable, String str, String str2, String str3) {
        super(drawable, str, str2, str3);
        this.biY = examRecommendAppInfo;
    }

    /* renamed from: YC */
    public ExamRecommendAppInfo m7552YC() {
        return this.biY;
    }

    /* renamed from: f */
    public static Drawable m7550f(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        return new BitmapDrawable(C3953zi.m1311pr(), bitmap);
    }

    /* renamed from: ag */
    public static int m7551ag(int i, int i2) {
        return new Random().nextInt((i2 - i) + 1) + i;
    }
}
