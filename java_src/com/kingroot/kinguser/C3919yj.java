package com.kingroot.kinguser;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.yj */
/* loaded from: classes.dex */
public class C3919yj {

    /* renamed from: UY */
    public List<AbstractC3913yd> f4009UY = new ArrayList();
    public View view;

    public void apply() {
        if (!C3942yy.m1351d(this.f4009UY)) {
            for (AbstractC3913yd abstractC3913yd : this.f4009UY) {
                abstractC3913yd.mo1426k(this.view);
            }
        }
    }

    public void clean() {
        if (!C3942yy.m1351d(this.f4009UY)) {
            this.f4009UY.clear();
        }
    }

    public String toString() {
        return "SkinItem [view=" + this.view.getClass().getSimpleName() + ", attrs=" + this.f4009UY + "]";
    }
}
