package com.tencent.feedback.common;

import android.util.SparseArray;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: com.tencent.feedback.common.b */
/* loaded from: classes.dex */
public abstract class AbstractC4069b {

    /* renamed from: a */
    private static AbstractC4069b f4416a;

    /* renamed from: a */
    public abstract boolean mo1112a();

    /* renamed from: a */
    public abstract boolean mo1111a(Runnable runnable);

    /* renamed from: a */
    public abstract boolean mo1110a(Runnable runnable, long j);

    /* renamed from: a */
    public static synchronized void m1115a(AbstractC4069b abstractC4069b) {
        synchronized (AbstractC4069b.class) {
            C4073e.m1017a("rqdp{  AsyncTaskHandlerAbs setInstance} " + abstractC4069b, new Object[0]);
            if (f4416a != null && f4416a != abstractC4069b) {
                f4416a.mo1112a();
            }
            f4416a = abstractC4069b;
            C4073e.m1017a("rqdp{  AsyncTaskHandlerAbs setInstance end}", new Object[0]);
        }
    }

    /* renamed from: b */
    public static synchronized AbstractC4069b m1113b() {
        AbstractC4069b abstractC4069b;
        synchronized (AbstractC4069b.class) {
            if (f4416a == null) {
                f4416a = new C4070a();
            }
            abstractC4069b = f4416a;
        }
        return abstractC4069b;
    }

    /* renamed from: a */
    public static AbstractC4069b m1114a(ScheduledExecutorService scheduledExecutorService) {
        return new C4070a(scheduledExecutorService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tencent.feedback.common.b$a */
    /* loaded from: classes.dex */
    public static class C4070a extends AbstractC4069b {

        /* renamed from: a */
        private ScheduledExecutorService f4417a;

        /* renamed from: b */
        private SparseArray<ScheduledFuture<?>> f4418b;

        public C4070a() {
            this(Executors.newScheduledThreadPool(3));
        }

        public C4070a(ScheduledExecutorService scheduledExecutorService) {
            this.f4417a = null;
            this.f4418b = null;
            if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                throw new IllegalArgumentException("ScheduledExecutorService is not valiable!");
            }
            this.f4417a = scheduledExecutorService;
            this.f4418b = new SparseArray<>();
        }

        @Override // com.tencent.feedback.common.AbstractC4069b
        /* renamed from: a */
        public final synchronized boolean mo1111a(Runnable runnable) {
            boolean z = false;
            synchronized (this) {
                if (!m1109c()) {
                    C4073e.m1012d("rqdp{  ScheduleTaskHandlerImp was closed , should not post!}", new Object[0]);
                } else if (runnable == null) {
                    C4073e.m1012d("rqdp{  task runner should not be null}", new Object[0]);
                } else {
                    this.f4417a.execute(runnable);
                    z = true;
                }
            }
            return z;
        }

        @Override // com.tencent.feedback.common.AbstractC4069b
        /* renamed from: a */
        public final synchronized boolean mo1112a() {
            boolean z = false;
            synchronized (this) {
                C4073e.m1017a("rqdp{  stopAllScheduleTasks start}", new Object[0]);
                if (!m1109c()) {
                    C4073e.m1012d("rqdp{  ScheduleTaskHandlerImp was closed , should all stopped!}", new Object[0]);
                } else {
                    C4073e.m1015b("rqdp{  stop All ScheduleTasks!}", new Object[0]);
                    this.f4417a.shutdown();
                    this.f4417a = null;
                    this.f4418b.clear();
                    this.f4418b = null;
                    C4073e.m1017a("rqdp{  stopAllScheduleTasks end}", new Object[0]);
                    z = true;
                }
            }
            return z;
        }

        @Override // com.tencent.feedback.common.AbstractC4069b
        /* renamed from: a */
        public final synchronized boolean mo1110a(Runnable runnable, long j) {
            boolean z = false;
            synchronized (this) {
                if (!m1109c()) {
                    C4073e.m1012d("rqdp{  ScheduleTaskHandlerImp was closed , should not post!}", new Object[0]);
                } else if (runnable == null) {
                    C4073e.m1012d("rqdp{  task runner should not be null}", new Object[0]);
                } else {
                    if (j <= 0) {
                        j = 0;
                    }
                    this.f4417a.schedule(runnable, j, TimeUnit.MILLISECONDS);
                    z = true;
                }
            }
            return z;
        }

        /* renamed from: c */
        private synchronized boolean m1109c() {
            boolean z;
            if (this.f4417a != null) {
                z = this.f4417a.isShutdown() ? false : true;
            }
            return z;
        }
    }
}
