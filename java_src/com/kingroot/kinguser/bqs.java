package com.kingroot.kinguser;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class bqs {
    private static Handler bFo;
    private static HandlerThread bIP;
    private static Object byG = new Object();
    public static final Executor bIO = ahs();

    private static Executor ahs() {
        Executor threadPoolExecutor;
        Executor executor;
        if (Build.VERSION.SDK_INT >= 11) {
            executor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        } else {
            try {
                Field declaredField = AsyncTask.class.getDeclaredField("sExecutor");
                declaredField.setAccessible(true);
                threadPoolExecutor = (Executor) declaredField.get(null);
            } catch (Exception e) {
                threadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
            }
            executor = threadPoolExecutor;
        }
        if (executor instanceof ThreadPoolExecutor) {
            ((ThreadPoolExecutor) executor).setCorePoolSize(3);
        }
        return executor;
    }

    public static Handler aht() {
        if (bFo == null) {
            synchronized (bqs.class) {
                bIP = new HandlerThread("SDK_SUB");
                bIP.start();
                bFo = new Handler(bIP.getLooper());
            }
        }
        return bFo;
    }

    /* renamed from: a */
    public static void m5756a(Runnable runnable) {
        aht().post(runnable);
    }

    public static Executor ahu() {
        return new ExecutorC2582a();
    }

    /* renamed from: com.kingroot.kinguser.bqs$a */
    /* loaded from: classes.dex */
    static class ExecutorC2582a implements Executor {
        final Queue<Runnable> bIQ;
        Runnable bIR;

        private ExecutorC2582a() {
            this.bIQ = new LinkedList();
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(final Runnable runnable) {
            this.bIQ.offer(new Runnable() { // from class: com.kingroot.kinguser.bqs.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        ExecutorC2582a.this.m5755a();
                    }
                }
            });
            if (this.bIR == null) {
                m5755a();
            }
        }

        /* renamed from: a */
        protected synchronized void m5755a() {
            Runnable poll = this.bIQ.poll();
            this.bIR = poll;
            if (poll != null) {
                bqs.bIO.execute(this.bIR);
            }
        }
    }
}
