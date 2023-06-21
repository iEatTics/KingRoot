package com.kingroot.kinguser;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* renamed from: com.kingroot.kinguser.tx */
/* loaded from: classes.dex */
public abstract class AbstractC3675tx<Params, Progress, Result> {

    /* renamed from: HR */
    private volatile EnumC3679a f3592HR = EnumC3679a.PENDING;

    /* renamed from: HS */
    private final AbstractCallableC3680b<Params, Result> f3593HS = new AbstractCallableC3680b<Params, Result>() { // from class: com.kingroot.kinguser.tx.1
        @Override // java.util.concurrent.Callable
        public Result call() {
            return (Result) AbstractC3675tx.this.mo2068e(this.f3601HZ);
        }
    };
    private final FutureTask<Result> mFuture = new FutureTask<Result>(this.f3593HS) { // from class: com.kingroot.kinguser.tx.2
        @Override // java.util.concurrent.FutureTask
        protected void done() {
            Result result = null;
            try {
                result = get();
            } catch (InterruptedException e) {
            } catch (CancellationException e2) {
                AbstractC3675tx.this.mo2074km();
                return;
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
            } catch (Throwable th) {
                throw new RuntimeException("An error occured while executing doInBackground()", th);
            }
            AbstractC3675tx.this.finish(result);
        }
    };

    /* renamed from: com.kingroot.kinguser.tx$a */
    /* loaded from: classes.dex */
    public enum EnumC3679a {
        PENDING,
        RUNNING,
        FINISHED
    }

    /* renamed from: e */
    protected abstract Result mo2068e(Params params);

    /* renamed from: kl */
    protected void mo2075kl() {
    }

    /* renamed from: f */
    protected void mo2076f(Result result) {
    }

    /* renamed from: km */
    protected void mo2074km() {
    }

    /* renamed from: kn */
    protected void mo2073kn() {
    }

    /* renamed from: g */
    public final AbstractC3675tx<Params, Progress, Result> m2080g(Params params) {
        if (this.f3592HR != EnumC3679a.PENDING) {
            switch (this.f3592HR) {
                case RUNNING:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case FINISHED:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.f3592HR = EnumC3679a.RUNNING;
        mo2075kl();
        this.f3593HS.f3601HZ = params;
        C3685ub.execute(this.mFuture);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(Result result) {
        if (isCancelled()) {
            result = null;
        }
        mo2076f(result);
        this.f3592HR = EnumC3679a.FINISHED;
        mo2073kn();
    }

    public final boolean isCancelled() {
        return this.mFuture.isCancelled();
    }

    public final boolean cancel(boolean z) {
        return this.mFuture.cancel(z);
    }

    /* renamed from: com.kingroot.kinguser.tx$b */
    /* loaded from: classes.dex */
    static abstract class AbstractCallableC3680b<Params, Result> implements Callable<Result> {

        /* renamed from: HZ */
        Params f3601HZ;

        private AbstractCallableC3680b() {
        }
    }
}
