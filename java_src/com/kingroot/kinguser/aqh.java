package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public abstract class aqh implements aqb {
    private final AtomicBoolean aLd = new AtomicBoolean(true);
    private long aLe = 2147483647L;
    private boolean aLf = false;

    /* renamed from: ME */
    public abstract String mo9580ME();

    /* renamed from: MF */
    public abstract String mo9579MF();

    /* renamed from: MG */
    protected abstract boolean mo9578MG();

    /* renamed from: MH */
    protected abstract boolean mo9577MH();

    public abstract Drawable getIconDrawable();

    /* renamed from: MI */
    public final boolean m9595MI() {
        return this.aLd.get() || this.aLf;
    }

    @Override // com.kingroot.kinguser.aqb
    /* renamed from: My */
    public final synchronized boolean mo9529My() {
        final CountDownLatch countDownLatch;
        boolean z = true;
        synchronized (this) {
            try {
                countDownLatch = new CountDownLatch(1);
                ash.execute(new Runnable() { // from class: com.kingroot.kinguser.aqh.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (!aqh.this.mo9575vs()) {
                                aqh.this.aLd.set(true);
                            } else {
                                try {
                                    aqh.this.aLd.set(aqh.this.mo9578MG());
                                } catch (Throwable th) {
                                }
                            }
                        } finally {
                            countDownLatch.countDown();
                        }
                    }
                });
            } catch (Throwable th) {
            }
            if (!countDownLatch.await(m9593ML(), TimeUnit.MILLISECONDS)) {
                m9590cH(true);
            }
            z = this.aLd.get();
        }
        return z;
    }

    /* renamed from: MJ */
    public final synchronized boolean m9594MJ() {
        boolean z;
        try {
            z = mo9577MH();
        } catch (Throwable th) {
            z = false;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public boolean m9589h(long j, int i) {
        if (i == 2) {
            return false;
        }
        return acu.m12573b(j, System.currentTimeMillis(), 259200000L);
    }

    public void ignore() {
    }

    /* renamed from: MK */
    public int mo9576MK() {
        return 0;
    }

    public int getPriority() {
        return 0;
    }

    @Override // com.kingroot.kinguser.aqb
    @NonNull
    public String getKey() {
        return getClass().getName();
    }

    /* renamed from: vs */
    public boolean mo9575vs() {
        return true;
    }

    /* renamed from: bV */
    public void m9591bV(long j) {
        this.aLe = j;
    }

    /* renamed from: ML */
    public long m9593ML() {
        return this.aLe;
    }

    /* renamed from: cH */
    public void m9590cH(boolean z) {
        this.aLf = z;
    }
}
