package com.kingroot.kinguser;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class ash {
    private static Executor aMM = Executors.newCachedThreadPool();

    public static void execute(Runnable runnable) {
        if (runnable != null) {
            aMM.execute(runnable);
        }
    }
}
