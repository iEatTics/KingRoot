package com.kingroot.kinguser;

import android.text.TextUtils;
/* loaded from: classes.dex */
public abstract class agn {
    private String mName;

    public String getName() {
        return this.mName;
    }

    public boolean equals(Object obj) {
        return TextUtils.equals(getName(), ((agn) obj).getName());
    }
}
