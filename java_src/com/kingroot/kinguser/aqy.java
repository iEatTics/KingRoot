package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.arl;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class aqy<T extends arl> implements aqb {
    protected T aLz = null;
    protected AtomicBoolean aLA = new AtomicBoolean(true);
    protected AtomicBoolean aLB = new AtomicBoolean(false);
    protected AtomicBoolean aLC = new AtomicBoolean(false);
    protected AtomicBoolean aLD = new AtomicBoolean(false);
    private String aLE = "";
    private long aLe = 2147483647L;
    private boolean aLf = false;

    /* renamed from: Nb */
    protected abstract String mo9534Nb();

    /* renamed from: Nc */
    protected abstract String mo9533Nc();

    /* renamed from: Nd */
    protected abstract String mo9532Nd();

    /* renamed from: Nf */
    protected abstract String mo9531Nf();

    @Override // com.kingroot.kinguser.aqb
    /* renamed from: My */
    public boolean mo9529My() {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        try {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            ash.execute(new Runnable() { // from class: com.kingroot.kinguser.aqy.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        long m10992Ek = aks.m11143BP().m10992Ek();
                        if ((aqy.this.mo9547Na() || adk.m12539b(m10992Ek, System.currentTimeMillis(), 900000L)) && !aqy.this.aLD.get() && aqy.this.aLz != null) {
                            try {
                                aqy.this.aLA.set(aqy.this.aLz.mo9529My());
                            } catch (Throwable th) {
                            }
                        }
                        aqy.this.aLC.set(true);
                        atomicBoolean.set(aqy.this.aLA.get());
                    } finally {
                        countDownLatch.countDown();
                    }
                }
            });
            if (!countDownLatch.await(m9549ML(), TimeUnit.MILLISECONDS)) {
                m9542cH(true);
                return true;
            }
        } catch (Throwable th) {
        }
        return atomicBoolean.get();
    }

    /* renamed from: MJ */
    public boolean m9550MJ() {
        if (this.aLC.get() && this.aLz != null) {
            try {
                this.aLB.set(this.aLz.m9530MJ());
                return this.aLB.get();
            } catch (Throwable th) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: LY */
    public void m9552LY() {
        this.aLD.set(true);
        if (this.aLz != null) {
            this.aLz.mo9526LY();
        }
    }

    /* renamed from: ME */
    public final String m9551ME() {
        return this.aLA.get() ? mo9534Nb() : mo9533Nc();
    }

    /* renamed from: MU */
    public final String m9548MU() {
        return this.aLA.get() ? mo9532Nd() : mo9531Nf();
    }

    @Override // com.kingroot.kinguser.aqb
    @NonNull
    public String getKey() {
        return getClass().getName();
    }

    /* renamed from: Ne */
    public boolean mo9546Ne() {
        return false;
    }

    public boolean isVisible() {
        return true;
    }

    /* renamed from: Au */
    public boolean mo9536Au() {
        return false;
    }

    /* renamed from: Ng */
    public boolean m9545Ng() {
        return this.aLA.get() || this.aLf;
    }

    /* renamed from: Nh */
    public boolean m9544Nh() {
        return this.aLB.get();
    }

    /* renamed from: MK */
    public int mo9535MK() {
        return 0;
    }

    /* renamed from: Na */
    protected boolean mo9547Na() {
        return false;
    }

    /* renamed from: Ni */
    public String m9543Ni() {
        return this.aLE;
    }

    /* renamed from: im */
    public void m9541im(String str) {
        this.aLE = str;
    }

    /* renamed from: bV */
    public void mo9538bV(long j) {
        this.aLe = j;
    }

    /* renamed from: ML */
    public long m9549ML() {
        return this.aLe;
    }

    /* renamed from: cH */
    public void m9542cH(boolean z) {
        this.aLf = z;
    }
}
