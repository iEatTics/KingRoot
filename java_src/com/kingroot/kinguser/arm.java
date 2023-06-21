package com.kingroot.kinguser;

import android.content.p002pm.IPackageDataObserver;
import com.kingroot.kinguser.asg;
/* loaded from: classes.dex */
public class arm extends arl implements asg.InterfaceC1478b {
    private long aLS = 0;
    private final bed aLT = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.arm.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            asg.m9475NO().m9471a(arm.this);
        }
    });

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MG */
    protected boolean mo9522MG() {
        if (beg.m7461Zj().m7450c(this.aLT)) {
            synchronized (this) {
                try {
                    wait(5000L);
                } catch (InterruptedException e) {
                }
            }
        }
        return 0 == this.aLS;
    }

    @Override // com.kingroot.kinguser.arl
    /* renamed from: LY */
    public void mo9526LY() {
        super.mo9526LY();
        asg.m9475NO().m9473NQ();
    }

    @Override // com.kingroot.kinguser.arl
    /* renamed from: MH */
    protected boolean mo9521MH() {
        asg.m9475NO().m9472a((IPackageDataObserver) null);
        return true;
    }

    @Override // com.kingroot.kinguser.asg.InterfaceC1478b
    /* renamed from: go */
    public void mo9467go(int i) {
    }

    @Override // com.kingroot.kinguser.asg.InterfaceC1478b
    /* renamed from: a */
    public void mo9468a(asg.C1477a c1477a) {
        this.aLS += c1477a.aML;
        if (this.aLS > 0) {
            synchronized (this) {
                notifyAll();
            }
        }
    }

    @Override // com.kingroot.kinguser.asg.InterfaceC1478b
    /* renamed from: Nl */
    public void mo9469Nl() {
        synchronized (this) {
            notifyAll();
        }
    }

    /* renamed from: Nm */
    public long m9528Nm() {
        asg.m9475NO().m9473NQ();
        return this.aLS;
    }
}
