package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class bzr implements Runnable {

    /* renamed from: MO */
    private static List<Thread> f2187MO = new ArrayList(8);

    /* renamed from: MR */
    private static int f2188MR = 0;

    /* renamed from: MS */
    private static AtomicInteger f2189MS = new AtomicInteger(0);
    private volatile AbstractC2685b bVQ = null;

    /* renamed from: MQ */
    private final Object f2190MQ = new Object();

    /* renamed from: com.kingroot.kinguser.bzr$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2684a {
        /* renamed from: a */
        boolean mo5103a();
    }

    /* renamed from: ny */
    public boolean m5104ny() {
        return m5110b(null, 5, null, false);
    }

    /* renamed from: X */
    public boolean m5114X(boolean z) {
        return m5110b(null, 5, null, z);
    }

    /* renamed from: b */
    public boolean m5110b(String str, int i, List<Object> list, boolean z) {
        boolean z2 = false;
        if (this.bVQ == null) {
            synchronized (this.f2190MQ) {
                if (this.bVQ == null) {
                    this.bVQ = new bzs(this, list, z);
                    AbstractC2685b abstractC2685b = this.bVQ;
                    if (str == null) {
                        str = "SingleThread";
                    }
                    abstractC2685b.setName(str);
                    this.bVQ.setPriority(i);
                    this.bVQ.setDaemon(true);
                    this.bVQ.start();
                    if (this.bVQ != null) {
                        if (z) {
                            f2187MO.add(this.bVQ);
                        }
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    public void mo4974a(InterfaceC2684a interfaceC2684a) {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    /* renamed from: nA */
    public void m5108nA() {
        if (this.bVQ != null) {
            synchronized (this.f2190MQ) {
                if (this.bVQ != null) {
                    AbstractC2685b abstractC2685b = this.bVQ;
                    this.bVQ = null;
                    abstractC2685b.interrupt();
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bzr$b */
    /* loaded from: classes.dex */
    public abstract class AbstractC2685b extends Thread implements InterfaceC2684a {
        private List<Object> bFl;
        private AtomicBoolean bVR;

        /* renamed from: b */
        public abstract void mo5102b(InterfaceC2684a interfaceC2684a);

        public AbstractC2685b(List<Object> list) {
            if (list != null) {
                this.bFl = new ArrayList();
                this.bFl.addAll(list);
            }
            this.bVR = new AtomicBoolean();
            this.bVR.set(false);
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.bVR.set(false);
            super.interrupt();
        }

        @Override // com.kingroot.kinguser.bzr.InterfaceC2684a
        /* renamed from: a */
        public boolean mo5103a() {
            return this.bVR.get();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.bVR.set(true);
            mo5102b(this);
            this.bVR.set(false);
        }
    }
}
