package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.kingroot.kinguser.mg */
/* loaded from: classes.dex */
public class RunnableC3305mg implements Runnable {

    /* renamed from: vH */
    private static List<Thread> f3119vH = new ArrayList(8);

    /* renamed from: vI */
    private volatile AbstractC3307b f3120vI = null;

    /* renamed from: vJ */
    private final Object f3121vJ = new Object();

    /* renamed from: com.kingroot.kinguser.mg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3306a {
        /* renamed from: eC */
        List<Object> mo3079eC();

        boolean isRunning();
    }

    /* renamed from: ez */
    public boolean m3081ez() {
        return m3086a(null, 5, null, false);
    }

    /* renamed from: n */
    public boolean m3080n(boolean z) {
        return m3086a(null, 5, null, z);
    }

    /* renamed from: d */
    public boolean m3084d(List<Object> list, boolean z) {
        return m3086a(null, 5, list, z);
    }

    /* renamed from: a */
    public boolean m3086a(String str, int i, List<Object> list, boolean z) {
        boolean z2 = false;
        if (this.f3120vI == null) {
            synchronized (this.f3121vJ) {
                if (this.f3120vI == null) {
                    this.f3120vI = new C3308mh(this, list, z);
                    AbstractC3307b abstractC3307b = this.f3120vI;
                    if (str == null) {
                        str = "SingleThread";
                    }
                    abstractC3307b.setName(str);
                    this.f3120vI.setPriority(i);
                    this.f3120vI.setDaemon(true);
                    this.f3120vI.start();
                    if (z) {
                        f3119vH.add(this.f3120vI);
                    }
                    z2 = true;
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    public void mo3089a(InterfaceC3306a interfaceC3306a) {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    /* renamed from: eA */
    public void m3083eA() {
        if (this.f3120vI != null) {
            synchronized (this.f3121vJ) {
                if (this.f3120vI != null) {
                    AbstractC3307b abstractC3307b = this.f3120vI;
                    this.f3120vI = null;
                    abstractC3307b.interrupt();
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.mg$b */
    /* loaded from: classes.dex */
    public abstract class AbstractC3307b extends Thread implements InterfaceC3306a {

        /* renamed from: vK */
        private List<Object> f3122vK;

        /* renamed from: vL */
        private AtomicBoolean f3123vL;

        /* renamed from: b */
        public abstract void mo3078b(InterfaceC3306a interfaceC3306a);

        public AbstractC3307b(List<Object> list) {
            if (list != null) {
                this.f3122vK = new ArrayList();
                this.f3122vK.addAll(list);
            }
            this.f3123vL = new AtomicBoolean();
            this.f3123vL.set(false);
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.f3123vL.set(false);
            super.interrupt();
        }

        @Override // com.kingroot.kinguser.RunnableC3305mg.InterfaceC3306a
        public boolean isRunning() {
            return this.f3123vL.get();
        }

        @Override // com.kingroot.kinguser.RunnableC3305mg.InterfaceC3306a
        /* renamed from: eC */
        public List<Object> mo3079eC() {
            if (this.f3122vK == null) {
                this.f3122vK = new ArrayList();
            }
            return this.f3122vK;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f3123vL.set(true);
            try {
                mo3078b(this);
            } finally {
                this.f3123vL.set(false);
            }
        }
    }
}
