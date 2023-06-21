package com.kingroot.kinguser;

import android.os.AsyncTask;
import java.util.concurrent.Executor;
/* renamed from: com.kingroot.kinguser.yw */
/* loaded from: classes.dex */
public class C3940yw {
    /* renamed from: pe */
    public static void m1357pe() {
        if (abd.m12839qb() >= 14) {
            try {
                AsyncTask.class.getMethod("setDefaultExecutor", Executor.class).invoke(null, aam.m12966b(AsyncTask.class, "SERIAL_EXECUTOR"));
            } catch (Throwable th) {
            }
        }
    }
}
