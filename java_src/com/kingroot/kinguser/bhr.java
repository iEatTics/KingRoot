package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public final class bhr {
    private bia aWA;
    private bhz aWB;
    private bhy aWz;
    private Context mContext;

    public bhr(Context context) {
        this.mContext = context;
    }

    public bhy acH() {
        if (this.aWz == null) {
            this.aWz = new bhy(this.mContext);
        }
        return this.aWz;
    }

    public bia acI() {
        if (this.aWA == null) {
            this.aWA = new bia(this.mContext);
        }
        return this.aWA;
    }

    public bhz acJ() {
        if (this.aWB == null) {
            this.aWB = new bhz(this.mContext);
        }
        return this.aWB;
    }
}
