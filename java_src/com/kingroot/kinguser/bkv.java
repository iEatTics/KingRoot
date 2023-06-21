package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class bkv implements Runnable {

    /* renamed from: MO */
    private static List<Thread> f1727MO = new ArrayList(8);

    /* renamed from: MR */
    private static int f1728MR = 0;

    /* renamed from: MS */
    private static AtomicInteger f1729MS = new AtomicInteger(0);
    private volatile AbstractC2487b bzn = null;

    /* renamed from: MQ */
    private final Object f1730MQ = new Object();

    /* renamed from: com.kingroot.kinguser.bkv$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2486a {
        boolean isRunning();
    }

    /* renamed from: ny */
    public boolean m6519ny() {
        return m6524b(null, 5, null, false);
    }

    /* renamed from: b */
    public boolean m6524b(String str, int i, List<Object> list, final boolean z) {
        boolean z2 = false;
        if (this.bzn == null) {
            synchronized (this.f1730MQ) {
                if (this.bzn == null) {
                    this.bzn = new AbstractC2487b(list) { // from class: com.kingroot.kinguser.bkv.1
                        @Override // com.kingroot.kinguser.bkv.AbstractC2487b
                        /* renamed from: b */
                        public void mo6518b(InterfaceC2486a interfaceC2486a) {
                            try {
                                if (bkv.f1729MS.getAndIncrement() > bkv.f1728MR) {
                                    int unused = bkv.f1728MR = bkv.f1729MS.get();
                                }
                                synchronized (bkv.this) {
                                    bkv.this.m6528a(interfaceC2486a);
                                }
                                if (interfaceC2486a.isRunning()) {
                                    synchronized (bkv.this.f1730MQ) {
                                        if (z) {
                                            bkv.f1727MO.remove(bkv.this.bzn);
                                        }
                                        bkv.this.bzn = null;
                                    }
                                }
                                bkv.f1729MS.getAndDecrement();
                            } catch (Throwable th) {
                                try {
                                    bkq.m6550d(th);
                                    if (interfaceC2486a.isRunning()) {
                                        synchronized (bkv.this.f1730MQ) {
                                            if (z) {
                                                bkv.f1727MO.remove(bkv.this.bzn);
                                            }
                                            bkv.this.bzn = null;
                                        }
                                    }
                                    bkv.f1729MS.getAndDecrement();
                                } catch (Throwable th2) {
                                    if (interfaceC2486a.isRunning()) {
                                        synchronized (bkv.this.f1730MQ) {
                                            if (z) {
                                                bkv.f1727MO.remove(bkv.this.bzn);
                                            }
                                            bkv.this.bzn = null;
                                        }
                                    }
                                    bkv.f1729MS.getAndDecrement();
                                    throw th2;
                                }
                            }
                        }
                    };
                    AbstractC2487b abstractC2487b = this.bzn;
                    if (str == null) {
                        str = "SingleThread";
                    }
                    abstractC2487b.setName(str);
                    this.bzn.setPriority(i);
                    this.bzn.setDaemon(true);
                    this.bzn.start();
                    if (this.bzn != null) {
                        if (z) {
                            f1727MO.add(this.bzn);
                        }
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    public void m6528a(InterfaceC2486a interfaceC2486a) {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    /* renamed from: com.kingroot.kinguser.bkv$b */
    /* loaded from: classes.dex */
    public abstract class AbstractC2487b extends Thread implements InterfaceC2486a {

        /* renamed from: MV */
        private List<Object> f1732MV;
        private AtomicBoolean mRunning;

        /* renamed from: b */
        public abstract void mo6518b(InterfaceC2486a interfaceC2486a);

        public AbstractC2487b(List<Object> list) {
            if (list != null) {
                this.f1732MV = new ArrayList();
                this.f1732MV.addAll(list);
            }
            this.mRunning = new AtomicBoolean();
            this.mRunning.set(false);
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.mRunning.set(false);
            super.interrupt();
        }

        @Override // com.kingroot.kinguser.bkv.InterfaceC2486a
        public boolean isRunning() {
            return this.mRunning.get();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.mRunning.set(true);
            mo6518b(this);
            this.mRunning.set(false);
        }
    }
}
