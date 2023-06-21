package com.kingroot.kinguser;

import android.os.Process;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.KlConst;
import java.util.UUID;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes.dex */
public class bel implements ThreadFactory {
    private final int blg;
    private bec blh;

    public bel(int i, bec becVar) {
        this.blg = i;
        this.blh = becVar;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@NonNull final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.kingroot.kinguser.bel.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Process.setThreadPriority(bel.this.blg);
                } catch (Throwable th) {
                }
                runnable.run();
            }
        };
        beh.m7443Zo().mo7431b(beh.m7441c(this.blh));
        return new Thread(runnable2, "KJobManager-Thread-type:" + this.blh + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + UUID.randomUUID());
    }
}
