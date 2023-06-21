package com.kingroot.kinguser;

import java.io.File;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class alz<T extends Serializable> {
    private T azr;
    private boolean azs = false;
    private int azt = 1;
    private final AtomicInteger azu = new AtomicInteger(0);

    /* renamed from: com.kingroot.kinguser.alz$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1215a {
        /* renamed from: HU */
        void mo7425HU();
    }

    /* renamed from: Ha */
    public abstract File mo7424Ha();

    /* renamed from: Hc */
    public abstract T mo7423Hc();

    /* renamed from: HQ */
    public void m10476HQ() {
        m10472a(null);
    }

    /* renamed from: a */
    public void m10472a(final InterfaceC1215a interfaceC1215a) {
        C3849wp.m1526e(new Runnable() { // from class: com.kingroot.kinguser.alz.1
            @Override // java.lang.Runnable
            public void run() {
                Object m2244u;
                synchronized (alz.this.getClass()) {
                    if (alz.this.azs) {
                        return;
                    }
                    File mo7424Ha = alz.this.mo7424Ha();
                    if (mo7424Ha.exists() && (m2244u = C3604sq.m2244u(mo7424Ha)) != null && alz.this.mo7423Hc().getClass().isAssignableFrom(m2244u.getClass())) {
                        alz.this.azr = (Serializable) m2244u;
                    }
                    if (alz.this.azr == null) {
                        alz.this.azr = alz.this.mo7423Hc();
                    }
                    synchronized (alz.this.getClass()) {
                        alz.this.azs = true;
                        alz.this.getClass().notifyAll();
                        if (interfaceC1215a != null) {
                            interfaceC1215a.mo7425HU();
                        }
                    }
                }
            }
        });
    }

    /* renamed from: HR */
    public T m10475HR() {
        T t;
        synchronized (getClass()) {
            m10474HS();
            t = this.azr;
        }
        return t;
    }

    /* renamed from: HS */
    private void m10474HS() {
        while (!this.azs) {
            try {
                getClass().wait();
            } catch (InterruptedException e) {
            }
        }
    }

    /* renamed from: HT */
    public void m10473HT() {
        synchronized (this.azu) {
            if (this.azu.incrementAndGet() % this.azt == 0) {
                this.azu.set(0);
                C3849wp.m1526e(new Runnable() { // from class: com.kingroot.kinguser.alz.2
                    @Override // java.lang.Runnable
                    public void run() {
                        C3604sq.m2250a(alz.this.m10475HR(), alz.this.mo7424Ha());
                    }
                });
            }
        }
    }

    /* renamed from: fn */
    public void m10467fn(int i) {
        this.azt = i;
    }
}
