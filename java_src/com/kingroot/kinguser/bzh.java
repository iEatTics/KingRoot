package com.kingroot.kinguser;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class bzh extends ThreadPoolExecutor {
    private InterfaceC2676a bVm;

    /* renamed from: com.kingroot.kinguser.bzh$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2676a {
        void afterExecute(Runnable runnable, Throwable th);

        void beforeExecute(Thread thread, Runnable runnable);
    }

    public bzh(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, new bzg(), rejectedExecutionHandler);
        this.bVm = null;
    }

    /* renamed from: a */
    public void m5138a(InterfaceC2676a interfaceC2676a) {
        this.bVm = interfaceC2676a;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        super.execute(runnable);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void beforeExecute(Thread thread, Runnable runnable) {
        super.beforeExecute(thread, runnable);
        if (this.bVm != null) {
            this.bVm.beforeExecute(thread, runnable);
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (this.bVm != null) {
            this.bVm.afterExecute(runnable, th);
        }
    }
}
