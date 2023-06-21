package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class arl implements aqb {
    protected AtomicBoolean aLD = new AtomicBoolean(false);
    protected boolean aLv = false;
    protected boolean aLQ = false;
    protected boolean aLw = false;
    protected boolean aLR = false;

    /* renamed from: MG */
    protected abstract boolean mo9522MG();

    /* renamed from: MH */
    protected abstract boolean mo9521MH();

    @Override // com.kingroot.kinguser.aqb
    /* renamed from: My */
    public final synchronized boolean mo9529My() {
        boolean z;
        boolean z2 = true;
        synchronized (this) {
            if (this.aLv) {
                z = this.aLQ;
            } else {
                try {
                    if (!this.aLD.get() && !mo9522MG()) {
                        z2 = false;
                    }
                    this.aLQ = z2;
                } catch (Throwable th) {
                }
                this.aLv = true;
                z = this.aLQ;
            }
        }
        return z;
    }

    /* renamed from: MJ */
    public final synchronized boolean m9530MJ() {
        boolean z = true;
        synchronized (this) {
            if (!mo9529My()) {
                if (this.aLw) {
                    z = this.aLR;
                } else {
                    this.aLR = mo9521MH();
                    this.aLw = true;
                    z = this.aLR;
                }
            }
        }
        return z;
    }

    /* renamed from: LY */
    public void mo9526LY() {
        this.aLD.set(true);
    }

    @Override // com.kingroot.kinguser.aqb
    @NonNull
    public String getKey() {
        return getClass().getName();
    }
}
