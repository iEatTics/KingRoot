package com.kingroot.kinguser.common.check;

import android.os.Parcelable;
import com.kingroot.kinguser.ajf;
/* loaded from: classes.dex */
public abstract class BaseSuCheckUnit implements Parcelable, ajf {
    private boolean asV = false;
    private boolean asW = false;

    /* renamed from: d */
    public abstract boolean mo4231d(boolean z, boolean z2);

    /* renamed from: yQ */
    public abstract boolean mo4227yQ();

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: e */
    public synchronized boolean mo4288e(boolean z, boolean z2) {
        boolean z3;
        synchronized (this) {
            this.asW = !mo4231d(z, z2);
            this.asV = true;
            z3 = this.asW ? false : true;
        }
        return z3;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: yR */
    public synchronized boolean mo4287yR() {
        return this.asW;
    }

    @Override // com.kingroot.kinguser.ajf
    /* renamed from: yS */
    public synchronized boolean mo4286yS() {
        boolean mo4227yQ;
        if (!this.asV) {
            mo4227yQ = false;
        } else if (!this.asW) {
            mo4227yQ = true;
        } else {
            mo4227yQ = mo4227yQ();
        }
        return mo4227yQ;
    }
}
