package android.support.p004v4.p006os;

import android.os.AsyncTask;
import android.os.Build;
/* renamed from: android.support.v4.os.AsyncTaskCompat */
/* loaded from: classes.dex */
public final class AsyncTaskCompat {
    public static <Params, Progress, Result> AsyncTask<Params, Progress, Result> executeParallel(AsyncTask<Params, Progress, Result> asyncTask, Params... paramsArr) {
        if (asyncTask == null) {
            throw new IllegalArgumentException("task can not be null");
        }
        if (Build.VERSION.SDK_INT >= 11) {
            AsyncTaskCompatHoneycomb.executeParallel(asyncTask, paramsArr);
        } else {
            asyncTask.execute(paramsArr);
        }
        return asyncTask;
    }

    private AsyncTaskCompat() {
    }
}
