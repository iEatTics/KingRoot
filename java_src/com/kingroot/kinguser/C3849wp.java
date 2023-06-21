package com.kingroot.kinguser;

import com.tencent.feedback.eup.CrashReport;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.kingroot.kinguser.wp */
/* loaded from: classes.dex */
public class C3849wp {

    /* renamed from: MW */
    private static final int f3884MW = Runtime.getRuntime().availableProcessors();
    private static final int CORE_POOL_SIZE = f3884MW + 1;
    private static final int MAXIMUM_POOL_SIZE = (f3884MW * 2) + 1;
    private static final BlockingQueue<Runnable> sPoolWorkQueue = new LinkedBlockingQueue(128);

    /* renamed from: MX */
    private static final ThreadPoolExecutor f3885MX = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1, TimeUnit.SECONDS, sPoolWorkQueue, new ThreadFactoryC3836wj("KWorksExecutor"));

    /* renamed from: MY */
    private static final ExecutorService f3886MY = Executors.newSingleThreadExecutor(new ThreadFactoryC3836wj("KWorksExecutor_s"));

    /* renamed from: e */
    public static void m1526e(Runnable runnable) {
        f3886MY.execute(runnable);
    }

    public static void execute(Runnable runnable) {
        try {
            f3885MX.execute(runnable);
        } catch (Throwable th) {
            if (th instanceof RejectedExecutionException) {
                CrashReport.handleCatchException(new Thread(), th, th.getMessage(), null);
            }
        }
    }
}
