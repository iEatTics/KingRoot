package com.kingroot.kinguser;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class bzg implements bzl, ThreadFactory {
    private final AtomicInteger bVk = new AtomicInteger(1);
    private final ThreadGroup bVj = new ThreadGroup("TMS-COMMON");
    private final String bVl = "CTPl-" + bVJ.getAndIncrement() + "-Td-";

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.bVj, runnable, this.bVl + this.bVk.getAndIncrement(), 0L);
        if (thread.isDaemon()) {
            thread.setDaemon(false);
        }
        if (thread.getPriority() != 5) {
            thread.setPriority(5);
        }
        return thread;
    }
}
