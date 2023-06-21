package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.view.animation.Interpolator;
/* renamed from: com.kingroot.kinguser.xr  reason: invalid class name */
/* loaded from: classes.dex */
public class animationInterpolatorC3896xr implements Interpolator {

    /* renamed from: UI */
    private final EnumC3895xq f3991UI;

    public animationInterpolatorC3896xr(@NonNull EnumC3895xq enumC3895xq) {
        this.f3991UI = enumC3895xq;
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        return C3897xs.m1458a(this.f3991UI, f);
    }
}
