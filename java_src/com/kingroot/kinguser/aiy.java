package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import com.kingroot.kinguser.activitys.MainActivity;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public class aiy {
    private static volatile aiy asM;
    private WeakReference<Handler> asK;
    private AtomicInteger asL = new AtomicInteger(-1);
    private final Object asN = new Object();
    private bed asO = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aiy.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            aiy.this.m11498yK();
            int m11518aQ = aix.m11518aQ(true);
            if (C3941yx.m1356B(m11518aQ, 2) && (!C3941yx.m1356B(m11518aQ, 1) || aix.m11510yG())) {
                m11518aQ = aix.m11518aQ(true);
            }
            if (!Thread.currentThread().isInterrupted()) {
                aiy.this.m11502dJ(m11518aQ);
                aix.m11512q(m11518aQ, true);
                aiy.this.m11508a(10201, m11518aQ, 0, null);
                bbv.m7771WK().m7762dC(false);
                aiy.this.m11498yK();
            }
        }
    });
    private static final String TAG = aiq.asd + "StartupInspector";
    public static volatile boolean asP = false;
    public static volatile int asQ = 1;

    /* renamed from: yI */
    public static aiy m11500yI() {
        if (asM == null) {
            synchronized (aiy.class) {
                if (asM == null) {
                    asM = new aiy();
                }
            }
        }
        return asM;
    }

    /* renamed from: a */
    public synchronized void m11506a(Handler handler) {
        if (handler != null) {
            this.asK = new WeakReference<>(handler);
            int m11497yL = m11497yL();
            if (m11497yL != -1) {
                handler.obtainMessage(10201, m11497yL, 0).sendToTarget();
            }
        }
    }

    /* renamed from: yJ */
    public synchronized void m11499yJ() {
        this.asK = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m11508a(int i, int i2, int i3, Object obj) {
        Handler handler;
        if (this.asK != null && (handler = this.asK.get()) != null) {
            handler.obtainMessage(i, i2, i3, obj).sendToTarget();
        }
    }

    /* renamed from: ll */
    public void m11501ll() {
        synchronized (this.asN) {
            beg.m7461Zj().m7450c(this.asO);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: yK */
    public void m11498yK() {
        this.asL.set(-1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dJ */
    public void m11502dJ(int i) {
        this.asL.set(i);
    }

    /* renamed from: yL */
    private int m11497yL() {
        return this.asL.get();
    }

    /* renamed from: a */
    public static void m11507a(final Activity activity, final int i) {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.aiy.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                int i2 = 5;
                try {
                    int i3 = aiy.asQ;
                    int m11512q = aix.m11512q(i, false);
                    aix.m11515dH(m11512q);
                    if (m11512q != 1 && m11512q != 2 && !aks.m11143BP().m11009ET()) {
                        if (aiy.asP) {
                            aiy.asP = false;
                            ady.m12308tK().m12324c(i3, 1, 0, 0, 0);
                        }
                        if (activity instanceof RootProcessActivity) {
                            ((RootProcessActivity) activity).m12609cX(0);
                            return;
                        }
                        RootProcessActivity.m12608h(activity, 0);
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aiy.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                activity.finish();
                            }
                        });
                        return;
                    }
                    if (!C3941yx.m1356B(i, 16)) {
                        if (C3941yx.m1356B(i, 1)) {
                            i2 = 2;
                        } else if (C3941yx.m1356B(i, 4)) {
                            i2 = 3;
                        } else if (!C3941yx.m1356B(i, 32)) {
                            i2 = 4;
                        }
                    }
                    aks.m11143BP().m11037Dr();
                    if (aiy.asP) {
                        aiy.asP = false;
                        ady.m12308tK().m12324c(i3, i2, 0, 0, 0);
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aiy.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                Intent intent = new Intent();
                                intent.setClass(activity, MainActivity.class);
                                activity.startActivity(intent);
                                activity.finish();
                            } catch (Exception e) {
                            }
                        }
                    });
                } catch (Exception e) {
                }
            }
        }));
    }
}
