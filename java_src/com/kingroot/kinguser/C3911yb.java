package com.kingroot.kinguser;

import android.view.View;
import android.widget.TextView;
/* renamed from: com.kingroot.kinguser.yb */
/* loaded from: classes.dex */
public class C3911yb extends AbstractC3913yd {
    @Override // com.kingroot.kinguser.AbstractC3913yd
    /* renamed from: k */
    public void mo1426k(View view) {
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            if ("color".equals(this.f4006UV)) {
                textView.setTextColor(C3906xy.m1431ox().getColor(this.f4004UT));
            }
        }
    }
}
