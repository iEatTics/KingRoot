package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class ben extends ThreadPoolExecutor {
    private static final String TAG = aiq.asi + "_PriorityExecutor";
    private bec blh;
    private final List<bee> blp;
    private final List<InterfaceC2134a> blq;

    /* renamed from: com.kingroot.kinguser.ben$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2134a {
        /* renamed from: a */
        void mo7409a(ben benVar, bee beeVar);

        /* renamed from: b */
        void mo7408b(ben benVar, bee beeVar);
    }

    public ben(int i, int i2, long j, C2135b c2135b, TimeUnit timeUnit, int i3, bec becVar) {
        super(i, i2, j, timeUnit, c2135b, new bel(i3, becVar));
        this.blp = new CopyOnWriteArrayList();
        this.blq = new ArrayList();
        setRejectedExecutionHandler(new RejectedExecutionHandler() { // from class: com.kingroot.kinguser.ben.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
                try {
                    BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
                    if (queue instanceof C2135b) {
                        ((C2135b) queue).m7406h(runnable);
                    }
                } catch (Throwable th) {
                    Thread.currentThread().interrupt();
                }
            }
        });
        this.blh = becVar;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    @NonNull
    public Future<?> submit(Runnable runnable) {
        bee beeVar = (bee) runnable;
        C2136c c2136c = new C2136c(beeVar);
        execute(c2136c);
        beeVar.m7466cs(System.nanoTime());
        if (!m7414i(((bee) runnable).m7475Zg())) {
            synchronized (this.blp) {
                this.blp.add((bee) runnable);
            }
        }
        return c2136c;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        bee m7416f = m7416f(runnable);
        m7416f.m7470a(thread);
        synchronized (this.blq) {
            for (InterfaceC2134a interfaceC2134a : this.blq) {
                interfaceC2134a.mo7408b(this, m7416f);
            }
        }
        synchronized (this.blp) {
            if (!this.blp.contains(m7416f)) {
                this.blp.add(m7416f);
            }
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        bee m7416f = m7416f(runnable);
        synchronized (this.blq) {
            for (InterfaceC2134a interfaceC2134a : this.blq) {
                interfaceC2134a.mo7409a(this, m7416f);
            }
        }
        try {
            if (runnable instanceof C2136c) {
                ((C2136c) runnable).get();
            }
        } catch (Throwable th2) {
        }
        if (this.blp.contains(m7416f)) {
            synchronized (this.blp) {
                this.blp.remove(m7416f);
            }
            if (th != null) {
                m7416f.m7475Zg().setException(th);
                m7416f.m7475Zg().m7477g(th);
            }
        }
        if (m7416f.m7475Zg().bkD) {
            bej.m7420g(m7416f.m7475Zg());
        }
        bef.m7462e(m7416f);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void terminated() {
        super.terminated();
    }

    /* renamed from: f */
    private bee m7416f(Runnable runnable) {
        if (!(runnable instanceof C2136c)) {
            throw new InvalidParameterException("The " + runnable.getClass().getSimpleName() + " must be an instance of " + C2136c.class.getSimpleName());
        }
        return ((C2136c) runnable).bls;
    }

    /* renamed from: h */
    public boolean m7415h(bed bedVar) {
        return m7411l(bedVar).size() > 0;
    }

    /* renamed from: i */
    public boolean m7414i(bed bedVar) {
        return m7410m(bedVar).size() > 0;
    }

    /* renamed from: j */
    public boolean m7413j(bed bedVar) {
        return m7414i(bedVar) || m7415h(bedVar);
    }

    @NonNull
    /* renamed from: k */
    public List<bee> m7412k(bed bedVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(m7410m(bedVar));
        arrayList.addAll(m7411l(bedVar));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Zu */
    public int m7418Zu() {
        return getQueue().size();
    }

    @NonNull
    /* renamed from: l */
    private Collection<? extends bee> m7411l(bed bedVar) {
        ArrayList arrayList = new ArrayList();
        synchronized (this.blp) {
            for (bee beeVar : this.blp) {
                if (beeVar.m7475Zg() == bedVar) {
                    arrayList.add(beeVar);
                }
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: m */
    private Collection<? extends bee> m7410m(bed bedVar) {
        ArrayList arrayList = new ArrayList();
        for (Runnable runnable : getQueue()) {
            if ((runnable instanceof C2136c) && ((C2136c) runnable).bls.m7475Zg() == bedVar) {
                arrayList.add(((C2136c) runnable).bls);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public void m7417a(InterfaceC2134a interfaceC2134a) {
        if (interfaceC2134a != null) {
            synchronized (this.blq) {
                this.blq.add(interfaceC2134a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ben$c */
    /* loaded from: classes.dex */
    public static final class C2136c extends FutureTask<bee> implements Comparable<C2136c> {
        private final bee bls;

        C2136c(@NonNull bee beeVar) {
            super(beeVar, null);
            this.bls = beeVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(C2136c c2136c) {
            return c2136c.bls.m7475Zg().m7484Zb().ordinal() - this.bls.m7475Zg().m7484Zb().ordinal();
        }

        public String toString() {
            return "PriorityFutureTask#kJobHolder = " + this.bls.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ben$b */
    /* loaded from: classes.dex */
    public static class C2135b extends PriorityBlockingQueue<Runnable> {
        @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
        /* renamed from: g */
        public boolean offer(Runnable runnable) {
            if (size() == 0) {
                return super.offer(runnable);
            }
            return false;
        }

        /* renamed from: h */
        public boolean m7406h(Runnable runnable) {
            return super.offer(runnable);
        }
    }
}
