package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class bmq implements Runnable {
    private static List<Thread> bCh = new ArrayList(8);
    private static int bCk = 0;
    private static AtomicInteger bCl = new AtomicInteger(0);
    private volatile AbstractC2514b bCi = null;
    private final Object bCj = new Object();

    /* renamed from: com.kingroot.kinguser.bmq$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2513a {
        boolean isRunning();
    }

    /* renamed from: co */
    public final boolean m6355co() {
        return m6358a(null, 5, null, false);
    }

    /* renamed from: a */
    private boolean m6358a(String str, int i, List<Object> list, boolean z) {
        boolean z2 = false;
        if (this.bCi == null) {
            synchronized (this.bCj) {
                if (this.bCi == null) {
                    this.bCi = new AbstractC2514b(null) { // from class: com.kingroot.kinguser.bmq.1
                        @Override // com.kingroot.kinguser.bmq.AbstractC2514b
                        /* renamed from: a */
                        public final void mo6354a(InterfaceC2513a interfaceC2513a) {
                            try {
                                if (bmq.bCl.getAndIncrement() > bmq.bCk) {
                                    int unused = bmq.bCk = bmq.bCl.get();
                                }
                                synchronized (bmq.this) {
                                    bmq.this.afV();
                                }
                                if (interfaceC2513a.isRunning()) {
                                    synchronized (bmq.this.bCj) {
                                        if (r3) {
                                            bmq.bCh.remove(bmq.this.bCi);
                                        }
                                        bmq.this.bCi = null;
                                    }
                                }
                                bmq.bCl.getAndDecrement();
                            } catch (Throwable th) {
                                if (interfaceC2513a.isRunning()) {
                                    synchronized (bmq.this.bCj) {
                                        if (r3) {
                                            bmq.bCh.remove(bmq.this.bCi);
                                        }
                                        bmq.this.bCi = null;
                                    }
                                }
                                bmq.bCl.getAndDecrement();
                            }
                        }
                    };
                    this.bCi.setName("SingleThread");
                    this.bCi.setPriority(5);
                    this.bCi.setDaemon(true);
                    this.bCi.start();
                    if (this.bCi != null) {
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    public final void afV() {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    /* renamed from: com.kingroot.kinguser.bmq$b */
    /* loaded from: classes.dex */
    public abstract class AbstractC2514b extends Thread implements InterfaceC2513a {
        private List<Object> bCo;
        private AtomicBoolean bCp;

        /* renamed from: a */
        public abstract void mo6354a(InterfaceC2513a interfaceC2513a);

        public AbstractC2514b(bmq bmqVar, List<Object> list) {
            if (list != null) {
                this.bCo = new ArrayList();
                this.bCo.addAll(list);
            }
            this.bCp = new AtomicBoolean();
            this.bCp.set(false);
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.bCp.set(false);
            super.interrupt();
        }

        @Override // com.kingroot.kinguser.bmq.InterfaceC2513a
        public final boolean isRunning() {
            return this.bCp.get();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.bCp.set(true);
            mo6354a(this);
            this.bCp.set(false);
        }
    }
}
