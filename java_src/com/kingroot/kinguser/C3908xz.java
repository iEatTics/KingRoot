package com.kingroot.kinguser;

import android.view.View;
/* renamed from: com.kingroot.kinguser.xz */
/* loaded from: classes.dex */
public class C3908xz extends AbstractC3913yd {
    @Override // com.kingroot.kinguser.AbstractC3913yd
    /* renamed from: k */
    public void mo1426k(View view) {
        if ("color".equals(this.f4006UV)) {
            view.setBackgroundColor(C3906xy.m1431ox().getColor(this.f4004UT));
        } else if ("drawable".equals(this.f4006UV)) {
            C3867wx.m1488a(view, C3906xy.m1431ox().getDrawable(this.f4004UT));
        }
    }
}
