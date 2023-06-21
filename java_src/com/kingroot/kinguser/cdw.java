package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public abstract class cdw {
    private cdw bXJ;

    /* renamed from: I */
    public abstract void mo4351I(Context context);

    public int aka() {
        if (this.bXJ != null) {
            return this.bXJ.aka();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public <ImplType extends cdw> void m4794a(ImplType impltype) {
        this.bXJ = impltype;
    }
}
