package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class bgy {
    private final Handler mHandler;
    private final HandlerThread mHandlerThread;

    public bgy(@NonNull String str, int i) {
        this.mHandlerThread = new HandlerThread(str, i);
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
    }

    public boolean post(Runnable runnable) {
        return this.mHandler.post(runnable);
    }
}
