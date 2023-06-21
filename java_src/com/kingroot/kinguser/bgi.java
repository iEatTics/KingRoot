package com.kingroot.kinguser;

import android.graphics.Color;
import android.support.annotation.ColorInt;
import android.support.annotation.ColorRes;
import android.support.annotation.IntRange;
/* loaded from: classes.dex */
public class bgi {
    @ColorInt
    public static int getColor(@ColorRes int i) {
        return C3953zi.m1311pr().getColor(i);
    }

    @ColorInt
    public static int getColor(@IntRange(from = 0, m13740to = 255) int i, @ColorRes int i2) {
        int color = C3953zi.m1311pr().getColor(i2);
        return Color.argb(i, Color.red(color), Color.green(color), Color.blue(color));
    }
}
