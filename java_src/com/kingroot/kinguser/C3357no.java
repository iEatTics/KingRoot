package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
/* renamed from: com.kingroot.kinguser.no */
/* loaded from: classes.dex */
public class C3357no {

    /* renamed from: xq */
    private static volatile C3357no f3205xq = null;
    private Handler mHandler;

    /* renamed from: fl */
    public static C3357no m2832fl() {
        if (f3205xq == null) {
            synchronized (C3357no.class) {
                if (f3205xq == null) {
                    f3205xq = new C3357no();
                }
            }
        }
        return f3205xq;
    }

    private C3357no() {
        HandlerThread handlerThread = new HandlerThread("KThreadHandler");
        handlerThread.start();
        Looper looper = handlerThread.getLooper();
        if (looper != null) {
            this.mHandler = new Handler(looper);
            return;
        }
        throw new IllegalStateException();
    }

    /* renamed from: a */
    public void m2834a(AbstractRunnableC3352nj abstractRunnableC3352nj) {
        this.mHandler.post(abstractRunnableC3352nj);
    }

    /* renamed from: a */
    public void m2833a(AbstractRunnableC3352nj abstractRunnableC3352nj, long j) {
        this.mHandler.postDelayed(abstractRunnableC3352nj, j);
    }
}
