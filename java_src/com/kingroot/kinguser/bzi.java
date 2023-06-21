package com.kingroot.kinguser;

import android.content.Context;
import android.os.Debug;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.support.p007v7.internal.widget.ActivityChooserView;
import com.kingroot.kinguser.bzh;
import com.kingroot.kinguser.cgd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class bzi extends cec implements bzh.InterfaceC2676a, cgd {
    private int bVt;
    private HandlerThread bVw;
    private HandlerC2679b bVx;
    private static ArrayList<cgd.InterfaceC2803a> bVo = new ArrayList<>();
    private static long bVy = 0;
    private static long bVz = 0;
    private static cgd.InterfaceC2803a bVB = new cgd.InterfaceC2803a() { // from class: com.kingroot.kinguser.bzi.1
        @Override // com.kingroot.kinguser.cgd.InterfaceC2803a
        /* renamed from: a */
        public final void mo4345a(cgd.C2805c c2805c, int i) {
            Iterator it = bzi.bVo.iterator();
            while (it.hasNext()) {
                ((cgd.InterfaceC2803a) it.next()).mo4345a(c2805c, i);
            }
        }

        @Override // com.kingroot.kinguser.cgd.InterfaceC2803a
        /* renamed from: a */
        public final void mo4346a(cgd.C2805c c2805c) {
            Iterator it = bzi.bVo.iterator();
            while (it.hasNext()) {
                ((cgd.InterfaceC2803a) it.next()).mo4346a(c2805c);
            }
        }

        @Override // com.kingroot.kinguser.cgd.InterfaceC2803a
        /* renamed from: b */
        public final void mo4344b(cgd.C2805c c2805c) {
            Iterator it = bzi.bVo.iterator();
            while (it.hasNext()) {
                ((cgd.InterfaceC2803a) it.next()).mo4344b(c2805c);
            }
        }
    };
    private ArrayList<cgd.InterfaceC2804b> bVn = new ArrayList<>();
    protected PriorityBlockingQueue<Runnable> bVp = new PriorityBlockingQueue<>(5);
    protected LinkedList<RunnableC2678a> bVq = new LinkedList<>();
    protected ArrayList<RunnableC2678a> bVr = new ArrayList<>();
    protected HashMap<RunnableC2678a, Thread> bVs = new HashMap<>();
    protected bzh bVu = null;
    private boolean bVv = false;
    private Object mLock = new Object();
    private volatile boolean bVA = false;

    @Override // com.kingroot.kinguser.cdw
    /* renamed from: I */
    public void mo4351I(Context context) {
        this.bVt = m5137YY();
        this.bVu = new bzh(0, this.bVt + 2, 3L, TimeUnit.SECONDS, this.bVp, new ThreadPoolExecutor.CallerRunsPolicy());
        this.bVu.m5138a(this);
        this.bVw = new HandlerThread("TMS_THREAD_POOL_HANDLER");
        this.bVw.start();
        this.bVx = new HandlerC2679b(this.bVw.getLooper());
        m5131cN(2000L);
    }

    @Override // com.kingroot.kinguser.cdw
    public int aka() {
        return 1;
    }

    /* renamed from: YY */
    private int m5137YY() {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        int i = (availableProcessors * 4) + 2;
        int i2 = i <= 16 ? i : 16;
        cgl.m4334b(65538, "ThreadPoolSizeInfo-" + i2 + "|" + availableProcessors);
        return i2;
    }

    private int akb() {
        return m5137YY() << 1;
    }

    @Override // com.kingroot.kinguser.bzh.InterfaceC2676a
    public void beforeExecute(Thread thread, Runnable runnable) {
        boolean z;
        int i = 10;
        synchronized (this.mLock) {
            Iterator<RunnableC2678a> it = this.bVr.iterator();
            if (it != null) {
                RunnableC2678a runnableC2678a = (RunnableC2678a) runnable;
                int i2 = runnableC2678a.aki().priority;
                if (i2 <= 0) {
                    i = 1;
                } else if (i2 <= 10) {
                    i = i2;
                }
                thread.setPriority(i);
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    RunnableC2678a next = it.next();
                    if (next != null && next.equals(runnableC2678a)) {
                        it.remove();
                        z = true;
                        break;
                    }
                }
                if (z) {
                    if (!this.bVv) {
                        Iterator<cgd.InterfaceC2804b> it2 = this.bVn.iterator();
                        while (it2.hasNext()) {
                            it2.next().amT();
                        }
                    }
                    Iterator<cgd.InterfaceC2803a> it3 = bVo.iterator();
                    while (it3.hasNext()) {
                        it3.next().mo4346a(runnableC2678a.aki());
                    }
                    runnableC2678a.aki().ced = System.currentTimeMillis();
                    runnableC2678a.aki().cee = Debug.threadCpuTimeNanos();
                    this.bVs.put(runnableC2678a, thread);
                    thread.setName(runnableC2678a.aki().name);
                    this.bVv = true;
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.bzh.InterfaceC2676a
    public void afterExecute(Runnable runnable, Throwable th) {
        boolean z;
        synchronized (this.mLock) {
            RunnableC2678a runnableC2678a = (RunnableC2678a) runnable;
            Iterator<RunnableC2678a> it = this.bVs.keySet().iterator();
            if (it != null) {
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    RunnableC2678a next = it.next();
                    if (next != null && next.equals(runnableC2678a)) {
                        it.remove();
                        z = true;
                        break;
                    }
                }
                if (z) {
                    runnableC2678a.aki().ced = System.currentTimeMillis() - runnableC2678a.aki().ced;
                    runnableC2678a.aki().cee = Debug.threadCpuTimeNanos() - runnableC2678a.aki().cee;
                    Iterator<cgd.InterfaceC2803a> it2 = bVo.iterator();
                    while (it2.hasNext()) {
                        it2.next().mo4344b(runnableC2678a.aki());
                    }
                }
            }
            try {
                int activeCount = this.bVu.getActiveCount();
                int size = this.bVu.getQueue().size();
                int corePoolSize = this.bVu.getCorePoolSize();
                if (size == 0) {
                    int max = Math.max(0, activeCount - 1);
                    if (corePoolSize - max > 0) {
                        this.bVt = m5137YY();
                        this.bVu.setCorePoolSize(max);
                        int corePoolSize2 = this.bVu.getCorePoolSize();
                        int i = this.bVt + 2;
                        if (i <= 2) {
                            i = 2;
                        }
                        if (i < corePoolSize2) {
                            i = corePoolSize2;
                        }
                        try {
                            this.bVu.setMaximumPoolSize(i);
                        } catch (Exception e) {
                        }
                        if (corePoolSize2 == 0) {
                            Iterator<cgd.InterfaceC2804b> it3 = this.bVn.iterator();
                            while (it3.hasNext()) {
                                it3.next().amU();
                            }
                            this.bVv = false;
                        }
                    }
                }
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: a */
    public void m5134a(Runnable runnable, String str, long j, boolean z, Object obj) {
        m5136a(5, runnable, str, j, z, obj);
    }

    /* renamed from: a */
    public void m5136a(int i, Runnable runnable, String str, long j, boolean z, Object obj) {
        synchronized (this.mLock) {
            RunnableC2678a runnableC2678a = new RunnableC2678a(i, runnable, str, j, z, obj);
            this.bVq.add(runnableC2678a);
            this.bVr.add(runnableC2678a);
            this.bVx.sendEmptyMessage(1);
        }
    }

    /* renamed from: b */
    public void m5132b(Runnable runnable, String str, long j, boolean z, Object obj) {
        synchronized (this.mLock) {
            RunnableC2678a runnableC2678a = new RunnableC2678a(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, runnable, str, j, z, obj);
            this.bVr.add(runnableC2678a);
            this.bVu.execute(runnableC2678a);
            if (this.bVu.getActiveCount() >= this.bVt && this.bVt < akb()) {
                this.bVt++;
                this.bVu.setCorePoolSize(this.bVt);
                this.bVu.setMaximumPoolSize(this.bVt);
            } else {
                akd();
            }
            Iterator<cgd.InterfaceC2803a> it = bVo.iterator();
            while (it.hasNext()) {
                it.next().mo4345a(runnableC2678a.aki(), this.bVu.getActiveCount());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void akc() {
        Iterator<RunnableC2678a> it;
        synchronized (this.mLock) {
            if (!this.bVq.isEmpty() && (it = this.bVq.iterator()) != null && it.hasNext()) {
                RunnableC2678a next = it.next();
                it.remove();
                akd();
                this.bVu.execute(next);
                Iterator<cgd.InterfaceC2803a> it2 = bVo.iterator();
                while (it2.hasNext()) {
                    it2.next().mo4345a(next.aki(), this.bVu.getActiveCount());
                }
            }
            if (!this.bVq.isEmpty()) {
                this.bVx.sendEmptyMessage(1);
            }
        }
    }

    private void akd() {
        if (this.bVu.getCorePoolSize() < this.bVt) {
            this.bVu.setCorePoolSize(this.bVt);
            this.bVu.setMaximumPoolSize(this.bVt);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bzi$b */
    /* loaded from: classes.dex */
    public class HandlerC2679b extends Handler {
        public HandlerC2679b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    removeMessages(message.what);
                    if (!bzi.this.akf()) {
                        bzi.this.akc();
                        return;
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    if (bzi.bVy > 0 && Math.abs(bzi.bVz - currentTimeMillis) > bzi.bVy) {
                        bzi.this.ake();
                    }
                    sendEmptyMessageDelayed(1, 1000L);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: cN */
    public void m5131cN(long j) {
        synchronized (this.mLock) {
            this.bVA = true;
            bVz = System.currentTimeMillis();
            bVy = j;
        }
    }

    public void ake() {
        synchronized (this.mLock) {
            this.bVA = false;
            bVz = 0L;
            bVy = 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean akf() {
        return this.bVA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bzi$a */
    /* loaded from: classes.dex */
    public class RunnableC2678a implements Comparable<RunnableC2678a>, Runnable {
        private cgd.C2805c bVC = new cgd.C2805c();

        public RunnableC2678a(int i, Runnable runnable, String str, long j, boolean z, Object obj) {
            str = (str == null || str.length() == 0) ? runnable.getClass().getName() : str;
            this.bVC.ceb = 1;
            this.bVC.priority = i;
            this.bVC.name = str;
            this.bVC.f2317jY = j;
            this.bVC.ceg = runnable;
            this.bVC.cef = z;
            this.bVC.ceh = obj;
            this.bVC.cec = System.currentTimeMillis();
        }

        public cgd.C2805c aki() {
            return this.bVC;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.bVC != null && this.bVC.ceg != null) {
                this.bVC.ceg.run();
            }
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(RunnableC2678a runnableC2678a) {
            int abs = (int) (Math.abs(System.currentTimeMillis() - this.bVC.cec) / 200);
            int i = this.bVC.priority;
            if (abs > 0) {
                i += abs;
            }
            return runnableC2678a.bVC.priority - i;
        }
    }

    /* renamed from: e */
    public HandlerThread m5130e(String str, int i, long j) {
        return bzj.m5126e(str, i, j);
    }

    public static cgd.InterfaceC2803a akg() {
        return bVB;
    }
}
