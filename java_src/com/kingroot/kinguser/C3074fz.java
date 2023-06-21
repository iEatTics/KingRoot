package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.tencent.tps.client.TPSException;
import com.tencent.tps.client.p024kr.ISharkForXMod;
import com.tencent.tps.client.p024kr.XModFeature;
import java.util.List;
/* renamed from: com.kingroot.kinguser.fz */
/* loaded from: classes.dex */
public class C3074fz {

    /* renamed from: qg */
    private static volatile C3074fz f2685qg = null;
    private volatile Handler mHandler;

    /* renamed from: qh */
    private ISharkForXMod f2686qh;

    /* renamed from: s */
    private volatile boolean f2687s = false;

    private C3074fz() {
    }

    /* renamed from: ak */
    public static C3074fz m3793ak() {
        if (f2685qg == null) {
            synchronized (C3074fz.class) {
                if (f2685qg == null) {
                    f2685qg = new C3074fz();
                }
            }
        }
        return f2685qg;
    }

    /* renamed from: a */
    public void m3795a(ISharkForXMod iSharkForXMod) {
        if (iSharkForXMod == null) {
            throw new TPSException("ISharkForXMod object is null");
        }
        this.f2686qh = iSharkForXMod;
        start();
    }

    public void start() {
        HandlerThread handlerThread = new HandlerThread("tps-shark");
        handlerThread.start();
        this.mHandler = new HandlerC3076ga(this, handlerThread.getLooper());
        this.mHandler.sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleMessage(Message message) {
        if (message != null) {
            if (message.what == 1) {
                m3791am();
            } else if (message.what == 2 && message.obj != null && (message.obj instanceof Runnable)) {
                if (!this.f2687s) {
                    synchronized (this) {
                        while (!this.f2687s) {
                            try {
                                wait();
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
                try {
                    ((Runnable) message.obj).run();
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: a */
    public void m3794a(Runnable runnable) {
        m3788b(runnable, 0L);
    }

    /* renamed from: b */
    public void m3789b(Runnable runnable) {
        if (runnable != null) {
            if (!m3792al()) {
            }
            Message obtain = Message.obtain();
            obtain.what = 2;
            obtain.obj = runnable;
            this.mHandler.sendMessageAtFrontOfQueue(obtain);
        }
    }

    /* renamed from: b */
    public void m3788b(Runnable runnable, long j) {
        if (runnable != null && m3792al()) {
            Message obtain = Message.obtain();
            obtain.what = 2;
            obtain.obj = runnable;
            this.mHandler.sendMessageDelayed(obtain, j);
        }
    }

    /* renamed from: al */
    public boolean m3792al() {
        return this.mHandler != null;
    }

    /* renamed from: b */
    public boolean m3787b(List<XModFeature> list) {
        return this.f2686qh != null && this.f2686qh.syncReport(14, C3049fa.f2650P, "47AED88AE89FDE00", 72, list);
    }

    /* renamed from: am */
    private void m3791am() {
        synchronized (this) {
            try {
                m3790an();
                this.f2687s = true;
                notifyAll();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: an */
    private void m3790an() {
    }
}
