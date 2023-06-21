package com.kingroot.kinguser;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class bpn extends LinkedBlockingQueue {
    private Integer bHB;
    private bpp bHE;

    public bpn() {
        this.bHE = null;
        this.bHB = null;
    }

    public bpn(int i) {
        super(16);
        this.bHE = null;
        this.bHB = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.LinkedBlockingQueue, java.util.concurrent.BlockingQueue
    /* renamed from: a */
    public Runnable poll(long j, TimeUnit timeUnit) {
        Runnable runnable = (Runnable) super.poll(j, timeUnit);
        if (runnable == null && this.bHE != null) {
            this.bHE.m5889a();
        }
        return runnable;
    }

    /* renamed from: a */
    public final void m5892a(bpp bppVar) {
        this.bHE = bppVar;
    }

    /* renamed from: a */
    public final boolean m5891a(Runnable runnable, long j, TimeUnit timeUnit) {
        if (this.bHE.isShutdown()) {
            throw new RejectedExecutionException("Executor not running, can't force a command into the queue");
        }
        return super.offer(runnable, j, timeUnit);
    }

    @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
    public final /* synthetic */ boolean offer(Object obj) {
        Runnable runnable = (Runnable) obj;
        if (this.bHE == null || this.bHE.getPoolSize() == this.bHE.getMaximumPoolSize() || this.bHE.m5887c() < this.bHE.getPoolSize() || this.bHE.getPoolSize() >= this.bHE.getMaximumPoolSize()) {
            return super.offer(runnable);
        }
        return false;
    }

    @Override // java.util.concurrent.LinkedBlockingQueue, java.util.concurrent.BlockingQueue
    public final int remainingCapacity() {
        return super.remainingCapacity();
    }

    @Override // java.util.concurrent.LinkedBlockingQueue, java.util.concurrent.BlockingQueue
    public final /* synthetic */ Object take() {
        return (this.bHE == null || !this.bHE.m5888b()) ? (Runnable) super.take() : poll(this.bHE.getKeepAliveTime(TimeUnit.MILLISECONDS), TimeUnit.MILLISECONDS);
    }
}
