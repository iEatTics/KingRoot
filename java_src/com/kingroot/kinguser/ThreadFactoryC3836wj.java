package com.kingroot.kinguser;

import android.os.Process;
import android.support.annotation.NonNull;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.kingroot.kinguser.wj */
/* loaded from: classes.dex */
public class ThreadFactoryC3836wj implements ThreadFactory {
    private final AtomicInteger mCount = new AtomicInteger(1);
    String name;

    public ThreadFactoryC3836wj(@NonNull String str) {
        this.name = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@NonNull Runnable runnable) {
        return new Thread(runnable, this.name + "_k_thread_pool_" + this.mCount.getAndIncrement()) { // from class: com.kingroot.kinguser.wj.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                boolean m13437ih;
                C3838a c3838a;
                try {
                    Process.setThreadPriority(10);
                    super.run();
                } finally {
                    if (m13437ih) {
                    }
                }
            }
        };
    }

    /* renamed from: com.kingroot.kinguser.wj$a */
    /* loaded from: classes.dex */
    public static class C3838a extends RuntimeException {
        public C3838a(Throwable th) {
            super(th);
        }

        @Override // java.lang.Throwable
        public String toString() {
            String localizedMessage = getLocalizedMessage();
            String simpleName = getClass().getSimpleName();
            return localizedMessage == null ? simpleName : simpleName + ": " + localizedMessage;
        }
    }
}
