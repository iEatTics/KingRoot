package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
/* loaded from: classes.dex */
public class apm {
    private int aHO;
    private int aHP;
    private int aHQ;
    private int aHR;
    private int height;
    private int width;

    /* renamed from: x */
    private int f1525x;

    /* renamed from: y */
    private int f1526y;

    public int getX() {
        return this.f1525x;
    }

    /* renamed from: ge */
    public void m9769ge(int i) {
        this.f1525x = i;
    }

    public int getY() {
        return this.f1526y;
    }

    public void setY(int i) {
        this.f1526y = i;
    }

    /* renamed from: Lp */
    public int m9771Lp() {
        return this.aHO;
    }

    /* renamed from: gf */
    public void m9768gf(int i) {
        this.aHO = i;
    }

    /* renamed from: gg */
    public void m9767gg(int i) {
        this.aHP = i;
    }

    public int getWidth() {
        return this.width;
    }

    public void setWidth(int i) {
        this.width = i;
    }

    public int getHeight() {
        return this.height;
    }

    public void setHeight(int i) {
        this.height = i;
    }

    /* renamed from: Lq */
    public int m9770Lq() {
        return this.aHQ;
    }

    /* renamed from: gh */
    public void m9766gh(int i) {
        this.aHQ = i;
    }

    /* renamed from: gi */
    public void m9765gi(int i) {
        this.aHR = i;
    }

    /* renamed from: v */
    public static apm m9764v(View view) {
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        apm apmVar = new apm();
        apmVar.m9769ge(iArr[0]);
        apmVar.setY(iArr[1]);
        apmVar.setWidth(view.getWidth());
        apmVar.setHeight(view.getHeight());
        if (view instanceof ImageView) {
            Drawable drawable = ((ImageView) view).getDrawable();
            if (drawable == null) {
                return apmVar;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (view.getWidth() > intrinsicWidth) {
                apmVar.m9768gf(iArr[0] + ((view.getWidth() - intrinsicWidth) / 2));
                apmVar.m9766gh(intrinsicWidth);
            } else {
                apmVar.m9768gf(iArr[0]);
                apmVar.m9766gh(view.getWidth());
            }
            if (view.getHeight() > intrinsicHeight) {
                apmVar.m9767gg(iArr[1] + ((view.getHeight() - intrinsicHeight) / 2));
                apmVar.m9765gi(intrinsicHeight);
            } else {
                apmVar.m9767gg(iArr[1]);
                apmVar.m9765gi(view.getHeight());
            }
        }
        return apmVar;
    }
}
