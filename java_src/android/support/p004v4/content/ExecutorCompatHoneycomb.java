package android.support.p004v4.content;

import android.os.AsyncTask;
import java.util.concurrent.Executor;
/* renamed from: android.support.v4.content.ExecutorCompatHoneycomb */
/* loaded from: classes.dex */
class ExecutorCompatHoneycomb {
    ExecutorCompatHoneycomb() {
    }

    public static Executor getParallelExecutor() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }
}
