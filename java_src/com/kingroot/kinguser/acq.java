package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.p004v4.util.LruCache;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public abstract class acq<R, C extends View, D> {
    private static ConcurrentLinkedQueue<WeakReference<acq<?, ? extends View, ?>>> aaP = new ConcurrentLinkedQueue<>();
    private static RunnableC3845wo aba = null;
    private BlockingQueue<acq<R, C, D>.C0663a> aaR;
    private int aaS;
    private int aaV;
    private boolean aaW;
    private LruCache<Integer, R> aaX;
    private RunnableC3845wo aaQ = null;
    private Object aaT = new Object();
    private boolean aaU = false;
    private boolean aaY = false;
    private Exception aaZ = null;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.acq.4
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            switch (message.what) {
                case 1:
                    C0663a c0663a = (C0663a) message.obj;
                    if (acq.this.aaW && c0663a.abd != null) {
                        try {
                            acq.this.aaX.put(c0663a.abd, c0663a.mData);
                        } catch (Throwable th) {
                        }
                    }
                    if (c0663a.abc.getTag() == c0663a.mInfo && c0663a.mData != null) {
                        try {
                            acq.this.mo9132a((acq) c0663a.abc, (C) c0663a.mData);
                            return;
                        } catch (Throwable th2) {
                            return;
                        }
                    }
                    return;
                case 2:
                    acq.this.release();
                    return;
                default:
                    return;
            }
        }
    };

    /* renamed from: a */
    public abstract void mo9132a(C c, R r);

    /* renamed from: l */
    public abstract R mo9124l(D d);

    /* renamed from: m */
    public abstract int mo9123m(R r);

    public acq() {
        m12685b(10, false, 0);
    }

    public acq(int i, boolean z, int i2) {
        m12685b(i, z, i2);
    }

    /* renamed from: rZ */
    private void m12678rZ() {
        if (C3954zj.m1304pt()) {
            if (aba == null) {
                aba = new RunnableC3845wo() { // from class: com.kingroot.kinguser.acq.1
                    @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
                    public void run() {
                        Thread thread;
                        super.run();
                        try {
                            Thread.sleep(2000L);
                        } catch (InterruptedException e) {
                        }
                        Iterator it = acq.aaP.iterator();
                        while (it.hasNext()) {
                            WeakReference weakReference = (WeakReference) it.next();
                            if (weakReference != null) {
                                acq acqVar = (acq) weakReference.get();
                                if (acqVar == null || acqVar.aaY) {
                                    acq.aaP.remove(weakReference);
                                } else {
                                    long j = -1;
                                    String str = null;
                                    String obj = acqVar.toString();
                                    if (acqVar.aaQ != null && (thread = acqVar.aaQ.getThread()) != null) {
                                        j = thread.getId();
                                        str = thread.getName();
                                    }
                                    if (str == null) {
                                        str = "";
                                    }
                                    C3954zj.m1308c("Last AsyncLoader not closed: object-" + obj + ", threadId-" + j + ", threadName-" + str);
                                }
                            }
                        }
                        acq.this.aaZ = new RuntimeException("not closed");
                        acq.this.aaZ.fillInStackTrace();
                        acq.aaP.add(new WeakReference(acq.this));
                    }
                };
            }
            aba.m1530ny();
        }
    }

    /* renamed from: b */
    private void m12685b(int i, boolean z, int i2) {
        m12678rZ();
        this.aaW = z;
        this.aaV = i2;
        if (this.aaW) {
            this.aaX = new LruCache<Integer, R>(this.aaV) { // from class: com.kingroot.kinguser.acq.2
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // android.support.p004v4.util.LruCache
                /* renamed from: a */
                public int sizeOf(Integer num, R r) {
                    try {
                        return acq.this.mo9123m(r);
                    } catch (Throwable th) {
                        return 0;
                    }
                }
            };
        }
        this.aaS = i;
        this.aaR = new ArrayBlockingQueue(i);
        m12677sa();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void release() {
        if (this.aaX != null) {
            try {
                this.aaX.evictAll();
                this.aaX = null;
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public void m12687a(D d, C c, Integer num) {
        m12686a(d, c, num, null);
    }

    /* renamed from: a */
    public void m12686a(D d, C c, Integer num, R r) {
        R r2 = null;
        try {
            c.setTag(d);
            if (this.aaW && num != null) {
                try {
                    r2 = this.aaX.get(num);
                } catch (Throwable th) {
                }
                if (r2 != null) {
                    mo9132a((acq<R, C, D>) c, (C) r2);
                    return;
                }
            }
            if (r != null) {
                mo9132a((acq<R, C, D>) c, (C) r);
            }
            acq<R, C, D>.C0663a c0663a = new C0663a();
            c0663a.mType = 0;
            c0663a.abc = c;
            c0663a.mInfo = d;
            c0663a.abd = num;
            m12690a(c0663a);
        } catch (Throwable th2) {
        }
    }

    public void close() {
        this.aaY = true;
        acq<R, C, D>.C0663a c0663a = new C0663a();
        c0663a.mType = 1;
        m12690a(c0663a);
    }

    /* renamed from: sa */
    private void m12677sa() {
        if (this.aaQ == null || this.aaQ.getThread() == null) {
            this.aaQ = new RunnableC3845wo() { // from class: com.kingroot.kinguser.acq.3
                @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
                public void run() {
                    acq.this.m12676sb();
                }
            };
            this.aaQ.m1530ny();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: sb */
    public synchronized void m12676sb() {
        acq<R, C, D>.C0663a take;
        while (true) {
            try {
                synchronized (this.aaT) {
                    if (this.aaU) {
                        this.aaT.wait();
                    }
                }
                take = this.aaR.take();
            } catch (InterruptedException e) {
            }
            if (take.mType == 1) {
                this.mHandler.obtainMessage(2).sendToTarget();
            } else {
                try {
                    take.mData = mo9124l(take.mInfo);
                } catch (Throwable th) {
                }
                if (take.mData != null) {
                    Message message = new Message();
                    message.what = 1;
                    message.obj = take;
                    this.mHandler.sendMessage(message);
                }
            }
        }
    }

    public void pause() {
        synchronized (this.aaT) {
            this.aaU = true;
        }
    }

    public void resume() {
        try {
            synchronized (this.aaT) {
                this.aaU = false;
                this.aaT.notifyAll();
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private void m12690a(acq<R, C, D>.C0663a c0663a) {
        m12677sa();
        try {
            if (c0663a.mType == 1) {
                this.aaR.clear();
            }
            if (this.aaR.size() == this.aaS) {
                this.aaR.poll();
            }
            this.aaR.put(c0663a);
        } catch (InterruptedException e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.acq$a */
    /* loaded from: classes.dex */
    public class C0663a {
        C abc;
        Integer abd;
        R mData;
        D mInfo;
        int mType;

        private C0663a() {
        }
    }
}
