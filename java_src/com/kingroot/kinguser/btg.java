package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
/* loaded from: classes.dex */
public class btg {
    /* renamed from: O */
    public static btd m5546O(View view) {
        return m5544h(view, 0.5f);
    }

    @SuppressLint({"NewApi"})
    /* renamed from: h */
    public static btd m5544h(View view, float f) {
        Log.i("ads_SDK", "checkVisible:");
        long currentTimeMillis = System.currentTimeMillis();
        if (view == null) {
            return btd.VIEW_NULL;
        }
        Context context = view.getContext();
        if (view.getParent() == null) {
            return btd.PARENT_NULL;
        }
        if (view.getWindowVisibility() != 0) {
            return btd.WINDOW_NOT_VISIBLE;
        }
        if (view.getVisibility() != 0) {
            return btd.VIEW_NOT_VISIBLE;
        }
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            return btd.VIEW_INVISIBLE_DIMENSIONS;
        }
        if (Build.VERSION.SDK_INT >= 11 && view.getAlpha() < 0.9f) {
            return btd.VIEW_TOO_TRANSPARENT;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        int[] iArr = new int[2];
        try {
            view.getLocationOnScreen(iArr);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            if (iArr[1] < (-f) * height) {
                return btd.TOP_INVISIBLE;
            }
            if ((height * (1.0f - f)) + iArr[1] > displayMetrics.heightPixels) {
                return btd.BOTTOM_INVISIBLE;
            }
            if (iArr[0] < 0) {
                return btd.LEFT_INVISIBLE;
            }
            if (width + iArr[0] > displayMetrics.widthPixels) {
                return btd.RIGHT_INVISIBLE;
            }
            Log.d("ads_SDK", "checkVisible cost time:" + (System.currentTimeMillis() - currentTimeMillis));
            return btd.NO_ERROR;
        } catch (NullPointerException e) {
            return btd.CAN_NOT_GET_LOCATION;
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: P */
    public static btd m5545P(View view) {
        Log.i("ads_SDK", "checkAttached:");
        if (view == null) {
            return btd.VIEW_NULL;
        }
        if (!view.isShown()) {
            return btd.VIEW_NOT_VISIBLE;
        }
        if (view.getWindowVisibility() != 0) {
            return btd.WINDOW_NOT_VISIBLE;
        }
        if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            return btd.UN_LAYOUT;
        }
        if (Build.VERSION.SDK_INT >= 11 && view.getAlpha() < 0.9f) {
            return btd.VIEW_TOO_TRANSPARENT;
        }
        return btd.NO_ERROR;
    }
}
