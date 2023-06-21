package com.kingroot.kinguser;

import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import com.kingroot.common.uilib.ShadowProperty;
/* renamed from: com.kingroot.kinguser.wv */
/* loaded from: classes.dex */
public class C3860wv {

    /* renamed from: Rs */
    private ShadowProperty f3924Rs;

    /* renamed from: Rt */
    private C3859wu f3925Rt;

    /* renamed from: Ru */
    private C3859wu f3926Ru;

    /* renamed from: Rv */
    private int f3927Rv;

    /* renamed from: Rw */
    private float f3928Rw;

    /* renamed from: Rx */
    private float f3929Rx;

    /* renamed from: Ry */
    private StateListDrawable f3930Ry;
    private int color;
    private View view;

    /* renamed from: a */
    public static C3860wv m1495a(ShadowProperty shadowProperty, View view, int i) {
        return new C3860wv(shadowProperty, view, i, i, 0.0f, 0.0f);
    }

    private C3860wv(ShadowProperty shadowProperty, View view, int i, int i2, float f, float f2) {
        this.f3924Rs = shadowProperty;
        this.view = view;
        this.color = i;
        this.f3927Rv = i2;
        this.f3928Rw = f;
        this.f3929Rx = f2;
        init(this.color != this.f3927Rv);
    }

    private void init(boolean z) {
        if (Build.VERSION.SDK_INT > 11) {
            this.view.setLayerType(1, null);
        }
        if (!(this.view.getBackground() instanceof C3859wu)) {
            int m13234ob = this.f3924Rs.m13234ob();
            this.view.setPadding(this.f3924Rs.m13238nX() ? this.view.getPaddingLeft() + m13234ob : this.view.getPaddingLeft(), this.f3924Rs.m13237nY() ? this.view.getPaddingTop() + m13234ob : this.view.getPaddingTop(), this.f3924Rs.m13236nZ() ? this.view.getPaddingRight() + m13234ob : this.view.getPaddingRight(), this.f3924Rs.m13235oa() ? m13234ob + this.view.getPaddingBottom() : this.view.getPaddingBottom());
        }
        this.f3925Rt = new C3859wu(this.f3924Rs, this.color, this.f3928Rw, this.f3929Rx);
        this.view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.wv.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                C3860wv.this.f3925Rt.setBounds(0, 0, C3860wv.this.view.getMeasuredWidth(), C3860wv.this.view.getMeasuredHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    C3860wv.this.view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    C3860wv.this.view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
            }
        });
        if (z) {
            this.f3926Ru = new C3859wu(this.f3924Rs, this.f3927Rv, this.f3928Rw, this.f3929Rx);
            this.view.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.wv.2
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    C3860wv.this.f3926Ru.setBounds(0, 0, C3860wv.this.view.getMeasuredWidth(), C3860wv.this.view.getMeasuredHeight());
                    if (Build.VERSION.SDK_INT >= 16) {
                        C3860wv.this.view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    } else {
                        C3860wv.this.view.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                }
            });
            this.f3930Ry = new StateListDrawable();
            this.f3930Ry.addState(new int[]{16842919}, this.f3926Ru);
            this.f3930Ry.addState(new int[0], this.f3925Rt);
        }
        if (Build.VERSION.SDK_INT < 16) {
            if (this.f3930Ry != null) {
                this.view.setBackgroundDrawable(this.f3930Ry);
            } else {
                this.view.setBackgroundDrawable(this.f3925Rt);
            }
        } else if (this.f3930Ry != null) {
            this.view.setBackground(this.f3930Ry);
        } else {
            this.view.setBackground(this.f3925Rt);
        }
    }
}
