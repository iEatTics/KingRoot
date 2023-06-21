package com.kingroot.kinguser;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
/* renamed from: com.kingroot.kinguser.gs */
/* loaded from: classes.dex */
public class C3133gs {

    /* renamed from: qA */
    private static volatile ExecutorService f2726qA = null;

    /* renamed from: b */
    private static final byte[] f2725b = new byte[0];

    /* renamed from: qB */
    private static volatile ExecutorService f2727qB = null;

    /* renamed from: d */
    private static void m3657d() {
        if (f2726qA == null) {
            synchronized (f2725b) {
                if (f2726qA == null) {
                    f2726qA = Executors.newSingleThreadExecutor();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public static void m3656e() {
        if (f2727qB == null) {
            f2727qB = Executors.newSingleThreadExecutor();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m3655f() {
        if (f2727qB != null) {
            try {
                f2727qB.shutdownNow();
            } catch (Throwable th) {
            }
            f2727qB = null;
        }
    }

    /* renamed from: a */
    public static void m3661a(Runnable runnable) {
        m3659b(runnable, 30000L);
    }

    /* renamed from: b */
    public static void m3659b(Runnable runnable, long j) {
        if (runnable != null && j > 0) {
            m3657d();
            f2726qA.execute(new RunnableC3136gt(runnable, j));
        }
    }

    /* renamed from: com.kingroot.kinguser.gs$b */
    /* loaded from: classes.dex */
    static class C3135b extends FutureTask<Integer> {
        public C3135b(Runnable runnable) {
            super(new CallableC3134a(runnable));
        }
    }

    /* renamed from: com.kingroot.kinguser.gs$a */
    /* loaded from: classes.dex */
    static class CallableC3134a implements Callable<Integer> {

        /* renamed from: a */
        private Runnable f2728a;

        public CallableC3134a(Runnable runnable) {
            this.f2728a = null;
            this.f2728a = runnable;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: aG */
        public Integer call() {
            try {
                this.f2728a.run();
                return 0;
            } catch (Throwable th) {
                return -1;
            }
        }
    }
}
