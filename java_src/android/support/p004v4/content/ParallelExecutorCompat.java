package android.support.p004v4.content;

import android.os.Build;
import java.util.concurrent.Executor;
/* renamed from: android.support.v4.content.ParallelExecutorCompat */
/* loaded from: classes.dex */
public final class ParallelExecutorCompat {
    public static Executor getParallelExecutor() {
        return Build.VERSION.SDK_INT >= 11 ? ExecutorCompatHoneycomb.getParallelExecutor() : ModernAsyncTask.THREAD_POOL_EXECUTOR;
    }

    private ParallelExecutorCompat() {
    }
}
