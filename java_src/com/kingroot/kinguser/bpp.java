package com.kingroot.kinguser;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public final class bpp extends ThreadPoolExecutor {

    /* renamed from: a */
    private final AtomicInteger f1965a;
    private final AtomicLong bHC;
    private final AtomicLong bHD;

    /* renamed from: d */
    private long f1966d;

    /* renamed from: com.kingroot.kinguser.bpp$a */
    /* loaded from: classes.dex */
    static class RejectedExecutionHandlerC2557a implements RejectedExecutionHandler {
        private RejectedExecutionHandlerC2557a() {
        }

        /* synthetic */ RejectedExecutionHandlerC2557a(byte b) {
            this();
        }

        @Override // java.util.concurrent.RejectedExecutionHandler
        public final void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            throw new RejectedExecutionException();
        }
    }

    public bpp(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue blockingQueue, ThreadFactory threadFactory) {
        super(1, i2, 60L, timeUnit, blockingQueue, threadFactory, new RejectedExecutionHandlerC2557a((byte) 0));
        this.f1965a = new AtomicInteger(0);
        this.bHC = new AtomicLong(0L);
        this.bHD = new AtomicLong(0L);
        this.f1966d = 1000L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m5889a() {
        if (m5888b()) {
            long longValue = this.bHD.longValue();
            if (this.f1966d + longValue >= System.currentTimeMillis() || !this.bHD.compareAndSet(longValue, System.currentTimeMillis() + 1)) {
                return;
            }
            Thread.currentThread().setUncaughtExceptionHandler(new bpq(this));
            throw new RuntimeException("Stopping thread to avoid potential memory leaks after a context was stopped.");
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable runnable, Throwable th) {
        this.f1965a.decrementAndGet();
        if (th == null) {
            m5889a();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final boolean m5888b() {
        return this.f1966d >= 0 && (Thread.currentThread() instanceof bpo) && ((bpo) Thread.currentThread()).m5890a() < this.bHC.longValue();
    }

    /* renamed from: c */
    public final int m5887c() {
        return this.f1965a.get();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.f1965a.incrementAndGet();
        try {
            super.execute(runnable);
        } catch (RejectedExecutionException e) {
            if (!(super.getQueue() instanceof bpn)) {
                this.f1965a.decrementAndGet();
                throw e;
            }
            try {
                if (((bpn) super.getQueue()).m5891a(runnable, 0L, timeUnit)) {
                    return;
                }
                this.f1965a.decrementAndGet();
                throw new RejectedExecutionException("Queue capacity is full.");
            } catch (InterruptedException e2) {
                this.f1965a.decrementAndGet();
                Thread.interrupted();
                throw new RejectedExecutionException(e2);
            }
        }
    }
}
