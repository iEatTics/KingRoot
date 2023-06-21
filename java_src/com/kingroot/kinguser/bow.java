package com.kingroot.kinguser;

import android.os.SystemClock;
/* loaded from: classes.dex */
public final class bow implements Runnable {
    private box bFQ;

    /* renamed from: b */
    private volatile boolean f1855b = false;

    /* renamed from: c */
    private Object f1856c = new Object();
    private Object bFR = new Object();

    /* renamed from: e */
    private volatile boolean f1857e = false;

    public bow(box boxVar) {
        this.bFQ = boxVar;
        new Thread(this, "HalleyDownload-SaveThread").start();
    }

    /* renamed from: a */
    public final void m6022a() {
        synchronized (this.f1856c) {
            if (!this.f1855b) {
                this.f1855b = true;
                this.f1856c.notify();
            }
        }
    }

    /* renamed from: b */
    public final void m6021b() {
        synchronized (this.f1856c) {
            if (this.f1855b) {
                this.f1855b = false;
            }
        }
    }

    /* renamed from: c */
    public final void m6020c() {
        try {
            if (this.f1857e) {
                synchronized (this.bFR) {
                    this.bFR.notify();
                }
            }
        } catch (Exception e) {
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        while (true) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            try {
                z = this.bFQ.mo5925e();
            } catch (Throwable th) {
                z = false;
            }
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            if (!z) {
                int i = bnz.f1796f;
                if (elapsedRealtime2 > 0 && elapsedRealtime2 < i) {
                    int i2 = (int) (i - elapsedRealtime2);
                    try {
                        this.f1857e = true;
                        synchronized (this.bFR) {
                            this.bFR.wait(i2);
                        }
                    } catch (Exception e) {
                    } finally {
                        this.f1857e = false;
                    }
                }
            }
            synchronized (this.f1856c) {
                if (!this.f1855b) {
                    try {
                        this.f1856c.wait();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }
}
