package com.kingroot.kinguser;

import com.kingroot.kinguser.C3133gs;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.gt */
/* loaded from: classes.dex */
public final class RunnableC3136gt implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Runnable f2729a;

    /* renamed from: b */
    final /* synthetic */ long f2730b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3136gt(Runnable runnable, long j) {
        this.f2729a = runnable;
        this.f2730b = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        ExecutorService executorService;
        try {
            C3133gs.m3656e();
            C3133gs.C3135b c3135b = new C3133gs.C3135b(this.f2729a);
            executorService = C3133gs.f2727qB;
            executorService.execute(c3135b);
            try {
                c3135b.get(this.f2730b, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
            } catch (ExecutionException e2) {
            } catch (TimeoutException e3) {
                C3133gs.m3655f();
            }
        } catch (Throwable th) {
        }
    }
}
