package com.kingroot.kinguser;

import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public abstract class aql extends aqh {
    @NonNull
    /* renamed from: MM */
    protected abstract String mo9583MM();

    /* renamed from: MN */
    public abstract int mo9582MN();

    @Override // com.kingroot.kinguser.aqh, com.kingroot.kinguser.aqb
    @NonNull
    public String getKey() {
        return super.getKey() + mo9583MM();
    }
}
