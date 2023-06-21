package com.kingroot.kinguser;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.kingroot.kinguser.ub */
/* loaded from: classes.dex */
public class C3685ub {

    /* renamed from: Ie */
    private static ThreadPoolExecutor f3613Ie = null;

    public static synchronized void execute(Runnable runnable) {
        synchronized (C3685ub.class) {
            m2061ks();
            f3613Ie.execute(runnable);
        }
    }

    /* renamed from: ks */
    private static void m2061ks() {
        if (f3613Ie == null) {
            f3613Ie = new ThreadPoolExecutor(8, 128, 5L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: com.kingroot.kinguser.ub.1
                private final AtomicInteger mCount = new AtomicInteger(1);

                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    return new Thread(runnable, "task_" + this.mCount.getAndIncrement());
                }
            });
        }
    }
}
