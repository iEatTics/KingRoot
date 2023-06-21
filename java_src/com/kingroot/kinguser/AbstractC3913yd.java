package com.kingroot.kinguser;

import android.view.View;
/* renamed from: com.kingroot.kinguser.yd */
/* loaded from: classes.dex */
public abstract class AbstractC3913yd implements Cloneable {

    /* renamed from: US */
    public String f4003US;

    /* renamed from: UT */
    public int f4004UT;

    /* renamed from: UU */
    public String f4005UU;

    /* renamed from: UV */
    public String f4006UV;

    /* renamed from: k */
    public abstract void mo1426k(View view);

    /* renamed from: oA */
    public AbstractC3913yd clone() {
        try {
            return (AbstractC3913yd) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }
}
