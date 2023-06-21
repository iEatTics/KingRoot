package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.kingroot.kinguser.wo */
/* loaded from: classes.dex */
public class RunnableC3845wo implements Runnable {

    /* renamed from: MO */
    private static List<Thread> f3875MO = new ArrayList(8);

    /* renamed from: MR */
    private static int f3876MR = 0;

    /* renamed from: MS */
    private static AtomicInteger f3877MS = new AtomicInteger(0);

    /* renamed from: MP */
    private volatile AbstractC3848b f3878MP = null;

    /* renamed from: MQ */
    private final Object f3879MQ = new Object();

    /* renamed from: com.kingroot.kinguser.wo$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3847a {
        boolean isRunning();

        /* renamed from: nF */
        List<Object> mo1527nF();
    }

    /* renamed from: ny */
    public boolean m1530ny() {
        return m1539b(null, 5, null, false);
    }

    /* renamed from: c */
    public boolean m1537c(Object... objArr) {
        ArrayList arrayList = new ArrayList();
        if (objArr != null) {
            for (Object obj : objArr) {
                arrayList.add(obj);
            }
        }
        return m1536f(arrayList, false);
    }

    /* renamed from: I */
    public boolean m1545I(List<Object> list) {
        return m1539b(null, 5, list, false);
    }

    /* renamed from: X */
    public boolean m1544X(boolean z) {
        return m1539b(null, 5, null, z);
    }

    /* renamed from: f */
    public boolean m1536f(List<Object> list, boolean z) {
        return m1539b(null, 5, list, z);
    }

    /* renamed from: nz */
    public static int m1529nz() {
        return f3876MR;
    }

    /* renamed from: b */
    public boolean m1539b(String str, int i, List<Object> list, final boolean z) {
        boolean z2 = false;
        if (this.f3878MP == null) {
            synchronized (this.f3879MQ) {
                if (this.f3878MP == null) {
                    this.f3878MP = new AbstractC3848b(list) { // from class: com.kingroot.kinguser.wo.1
                        @Override // com.kingroot.kinguser.RunnableC3845wo.AbstractC3848b
                        /* renamed from: b */
                        public void mo1528b(InterfaceC3847a interfaceC3847a) {
                            try {
                                if (RunnableC3845wo.f3877MS.getAndIncrement() > RunnableC3845wo.f3876MR) {
                                    int unused = RunnableC3845wo.f3876MR = RunnableC3845wo.f3877MS.get();
                                }
                                synchronized (RunnableC3845wo.this) {
                                    RunnableC3845wo.this.mo1543a(interfaceC3847a);
                                }
                                if (interfaceC3847a.isRunning()) {
                                    synchronized (RunnableC3845wo.this.f3879MQ) {
                                        if (z) {
                                            RunnableC3845wo.f3875MO.remove(RunnableC3845wo.this.f3878MP);
                                        }
                                        RunnableC3845wo.this.f3878MP = null;
                                    }
                                }
                                RunnableC3845wo.f3877MS.getAndDecrement();
                            } catch (Throwable th) {
                                if (interfaceC3847a.isRunning()) {
                                    synchronized (RunnableC3845wo.this.f3879MQ) {
                                        if (z) {
                                            RunnableC3845wo.f3875MO.remove(RunnableC3845wo.this.f3878MP);
                                        }
                                        RunnableC3845wo.this.f3878MP = null;
                                    }
                                }
                                RunnableC3845wo.f3877MS.getAndDecrement();
                            }
                        }
                    };
                    AbstractC3848b abstractC3848b = this.f3878MP;
                    if (str == null) {
                        str = "SingleThread";
                    }
                    abstractC3848b.setName(str);
                    this.f3878MP.setPriority(i);
                    this.f3878MP.setDaemon(true);
                    this.f3878MP.start();
                    if (this.f3878MP != null) {
                        if (z) {
                            f3875MO.add(this.f3878MP);
                        }
                        z2 = true;
                    }
                }
            }
        }
        return z2;
    }

    /* renamed from: a */
    public void mo1543a(InterfaceC3847a interfaceC3847a) {
        run();
    }

    @Override // java.lang.Runnable
    public void run() {
    }

    /* renamed from: nA */
    public void m1535nA() {
        if (this.f3878MP != null) {
            synchronized (this.f3879MQ) {
                if (this.f3878MP != null) {
                    AbstractC3848b abstractC3848b = this.f3878MP;
                    this.f3878MP = null;
                    abstractC3848b.interrupt();
                }
            }
        }
    }

    public boolean isRunning() {
        boolean z = false;
        if (this.f3878MP != null) {
            synchronized (this.f3879MQ) {
                if (this.f3878MP != null) {
                    z = this.f3878MP.isRunning();
                }
            }
        }
        return z;
    }

    public Thread getThread() {
        return this.f3878MP;
    }

    /* renamed from: nB */
    public static boolean m1534nB() {
        for (int size = f3875MO.size() - 1; size >= 0; size--) {
            Thread thread = f3875MO.get(size);
            if (thread == null || !thread.isAlive()) {
                f3875MO.remove(size);
            }
        }
        return f3875MO.size() == 0;
    }

    /* renamed from: com.kingroot.kinguser.wo$b */
    /* loaded from: classes.dex */
    public abstract class AbstractC3848b extends Thread implements InterfaceC3847a {

        /* renamed from: MV */
        private List<Object> f3883MV;
        private AtomicBoolean mRunning;

        /* renamed from: b */
        public abstract void mo1528b(InterfaceC3847a interfaceC3847a);

        public AbstractC3848b(List<Object> list) {
            if (list != null) {
                this.f3883MV = new ArrayList();
                this.f3883MV.addAll(list);
            }
            this.mRunning = new AtomicBoolean();
            this.mRunning.set(false);
        }

        @Override // java.lang.Thread
        public void interrupt() {
            this.mRunning.set(false);
            super.interrupt();
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo.InterfaceC3847a
        public boolean isRunning() {
            return this.mRunning.get();
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo.InterfaceC3847a
        /* renamed from: nF */
        public List<Object> mo1527nF() {
            if (this.f3883MV == null) {
                this.f3883MV = new ArrayList();
            }
            return this.f3883MV;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.mRunning.set(true);
            mo1528b(this);
            this.mRunning.set(false);
        }
    }
}
