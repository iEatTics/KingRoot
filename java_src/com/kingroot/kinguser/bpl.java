package com.kingroot.kinguser;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class bpl extends ThreadPoolExecutor {

    /* renamed from: a */
    private final AtomicInteger f1962a;
    private final AtomicLong bHC;
    private final AtomicLong bHD;

    /* renamed from: d */
    private long f1963d;

    /* renamed from: com.kingroot.kinguser.bpl$a */
    /* loaded from: classes.dex */
    public class C2555a extends FutureTask implements Comparable {
        private Object byK;

        public C2555a(bpl bplVar, Runnable runnable, Object obj) {
            super(runnable, null);
            this.byK = runnable;
        }

        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            C2555a c2555a = (C2555a) obj;
            if (this != c2555a) {
                if (c2555a == null) {
                    return -1;
                }
                if (this.byK != null && c2555a.byK != null && this.byK.getClass().equals(c2555a.byK.getClass()) && (this.byK instanceof Comparable)) {
                    return ((Comparable) this.byK).compareTo(c2555a.byK);
                }
            }
            return 0;
        }
    }

    /* renamed from: com.kingroot.kinguser.bpl$b */
    /* loaded from: classes.dex */
    static class RejectedExecutionHandlerC2556b implements RejectedExecutionHandler {
        private RejectedExecutionHandlerC2556b() {
        }

        /* synthetic */ RejectedExecutionHandlerC2556b(byte b) {
            this();
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            throw new RejectedExecutionException();
        }
    }

    public bpl(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(1, i2, 60L, timeUnit, blockingQueue, threadFactory, new RejectedExecutionHandlerC2556b((byte) 0));
        this.f1962a = new AtomicInteger(0);
        this.bHC = new AtomicLong(0L);
        this.bHD = new AtomicLong(0L);
        this.f1963d = 1000L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m5896a() {
        if (m5895b()) {
            long longValue = this.bHD.longValue();
            if (this.f1963d + longValue >= System.currentTimeMillis() || !this.bHD.compareAndSet(longValue, System.currentTimeMillis() + 1)) {
                return;
            }
            Thread.currentThread().setUncaughtExceptionHandler(new bpm(this));
            throw new RuntimeException("Stopping thread to avoid potential memory leaks after a context was stopped.");
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable runnable, Throwable th) {
        this.f1962a.decrementAndGet();
        if (th == null) {
            m5896a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final boolean m5895b() {
        return this.f1963d >= 0 && (Thread.currentThread() instanceof bpo) && ((bpo) Thread.currentThread()).m5890a() < this.bHC.longValue();
    }

    /* renamed from: c */
    public final int m5894c() {
        return this.f1962a.get();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f1962a.incrementAndGet();
        try {
            super.execute(runnable);
        } catch (RejectedExecutionException e) {
            if (!(super.getQueue() instanceof bpk)) {
                this.f1962a.decrementAndGet();
                throw e;
            }
            try {
                if (((bpk) super.getQueue()).m5897a(runnable, 0L, timeUnit)) {
                    return;
                }
                this.f1962a.decrementAndGet();
                throw new RejectedExecutionException("Queue capacity is full.");
            } catch (InterruptedException e2) {
                this.f1962a.decrementAndGet();
                Thread.interrupted();
                throw new RejectedExecutionException(e2);
            }
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return (RunnableFuture) runnable;
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final RunnableFuture newTaskFor(Callable callable) {
        return (RunnableFuture) callable;
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public final Future submit(Runnable runnable) {
        return super.submit(new C2555a(this, runnable, null));
    }
}
