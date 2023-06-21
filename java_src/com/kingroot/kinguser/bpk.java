package com.kingroot.kinguser;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class bpk extends PriorityBlockingQueue {
    private bpl bHA;
    private Integer bHB;

    public bpk() {
        this.bHA = null;
        this.bHB = null;
    }

    public bpk(int i) {
        super(64);
        this.bHA = null;
        this.bHB = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    /* renamed from: a */
    public Runnable poll(long j, TimeUnit timeUnit) {
        Runnable runnable = (Runnable) super.poll(j, timeUnit);
        if (runnable == null && this.bHA != null) {
            this.bHA.m5896a();
        }
        return runnable;
    }

    /* renamed from: a */
    public final void m5898a(bpl bplVar) {
        this.bHA = bplVar;
    }

    /* renamed from: a */
    public final boolean m5897a(Runnable runnable, long j, TimeUnit timeUnit) {
        if (this.bHA.isShutdown()) {
            throw new RejectedExecutionException("Executor not running, can't force a command into the queue");
        }
        return super.offer(runnable, j, timeUnit);
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
    public final /* synthetic */ boolean offer(Object obj) {
        Runnable runnable = (Runnable) obj;
        if (this.bHA == null || this.bHA.getPoolSize() == this.bHA.getMaximumPoolSize() || this.bHA.m5894c() < this.bHA.getPoolSize() || this.bHA.getPoolSize() >= this.bHA.getMaximumPoolSize()) {
            return super.offer(runnable);
        }
        return false;
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public final int remainingCapacity() {
        return super.remainingCapacity();
    }

    @Override // java.util.concurrent.PriorityBlockingQueue, java.util.concurrent.BlockingQueue
    public final /* synthetic */ Object take() {
        return (this.bHA == null || !this.bHA.m5895b()) ? (Runnable) super.take() : poll(this.bHA.getKeepAliveTime(TimeUnit.MILLISECONDS), TimeUnit.MILLISECONDS);
    }
}
