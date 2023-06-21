package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.support.annotation.NonNull;
import com.tencent.feedback.eup.CrashReport;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bee implements Runnable {
    private static final String TAG = aiq.asi + "_KJobHolder";
    private static final Handler bkO;
    bee bkG;
    private bed bkH;
    private long bkJ;
    private long bkK;
    private WeakReference<Thread> bkL;
    private Runnable bkM;
    private Future bkI = null;
    private long bkN = -2147483648L;
    private final Object avz = new Object();

    static {
        HandlerThread handlerThread = new HandlerThread("KJobManager-block-checker");
        handlerThread.start();
        bkO = new Handler(handlerThread.getLooper());
    }

    public bee(@NonNull bed bedVar) {
        this.bkH = (bed) C3948zd.m1327k(bedVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.bkM = new RunnableC2119a();
            this.bkK = System.nanoTime();
            this.bkH.m7479a(beb.RUNNING);
            this.bkH.onRunning();
            if (this.bkN != -2147483648L && this.bkM != null) {
                bkO.postDelayed(this.bkM, this.bkN);
            }
            this.bkH.run();
        } finally {
            this.bkH.m7479a(beb.END);
            this.bkH.m7476xr();
            bkO.removeCallbacks(this.bkM);
            Thread.interrupted();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m7470a(Thread thread) {
        synchronized (this.avz) {
            this.bkL = new WeakReference<>(thread);
        }
    }

    Thread getThread() {
        Thread thread;
        synchronized (this.avz) {
            thread = this.bkL == null ? null : this.bkL.get();
        }
        return thread;
    }

    /* renamed from: cs */
    public void m7466cs(long j) {
        synchronized (this.avz) {
            this.bkJ = j;
        }
    }

    /* renamed from: ct */
    public void m7465ct(long j) {
        synchronized (this.avz) {
            this.bkN = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m7472a(bed bedVar) {
        synchronized (this.avz) {
            this.bkH = bedVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Zg */
    public bed m7475Zg() {
        bed bedVar;
        synchronized (this.avz) {
            bedVar = this.bkH;
        }
        return bedVar;
    }

    /* renamed from: Zh */
    public Future m7474Zh() {
        Future future;
        synchronized (this.avz) {
            future = this.bkI;
        }
        return future;
    }

    /* renamed from: a */
    public bee m7469a(Future future) {
        synchronized (this.avz) {
            this.bkI = future;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Zi */
    public long m7473Zi() {
        long j = 0;
        synchronized (this.avz) {
            if (this.bkJ != 0) {
                if (this.bkK >= this.bkJ) {
                    j = (this.bkK - this.bkJ) / 1000000;
                }
            }
        }
        return j;
    }

    public String toString() {
        String bedVar;
        synchronized (this.avz) {
            bedVar = this.bkH == null ? "Job is null" : this.bkH.toString();
        }
        return bedVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void recycle() {
        synchronized (this.avz) {
            this.bkH = null;
            this.bkI = null;
            this.bkJ = 0L;
            this.bkK = 0L;
            this.bkG = null;
            this.bkL = null;
            this.bkM = null;
            this.bkN = -2147483648L;
        }
    }

    /* renamed from: com.kingroot.kinguser.bee$a */
    /* loaded from: classes.dex */
    class RunnableC2119a implements Runnable {
        private RunnableC2119a() {
        }

        /* JADX WARN: Type inference failed for: r0v21, types: [com.kingroot.kinguser.bee$a$1] */
        @Override // java.lang.Runnable
        public void run() {
            Thread.State state;
            synchronized (bee.this.avz) {
                System.currentTimeMillis();
                Thread thread = bee.this.getThread();
                if (thread != null && ((state = thread.getState()) == Thread.State.WAITING || state == Thread.State.TIMED_WAITING || state == Thread.State.BLOCKED)) {
                    StackTraceElement[] stackTrace = thread.getStackTrace();
                    if (stackTrace != null) {
                        long nanoTime = (System.nanoTime() - bee.this.bkK) / 1000000;
                        if (nanoTime >= bee.this.bkN) {
                            if (bee.this.bkH != null) {
                                StringBuilder sb = new StringBuilder();
                                for (StackTraceElement stackTraceElement : stackTrace) {
                                    sb.append(stackTraceElement.toString()).append("\r\n");
                                }
                                final beo beoVar = new beo("Thread state:" + state + "\nJob type:" + bee.this.bkH.m7482Zd() + "\nJob cost:" + nanoTime + "\n");
                                beoVar.setStackTrace(stackTrace);
                                if (state == Thread.State.WAITING || state == Thread.State.TIMED_WAITING) {
                                    new Thread() { // from class: com.kingroot.kinguser.bee.a.1
                                        @Override // java.lang.Thread, java.lang.Runnable
                                        public void run() {
                                            super.run();
                                            CrashReport.handleCatchException(new Thread(), beoVar, beoVar.getMessage(), null);
                                        }
                                    }.start();
                                    if (state == Thread.State.WAITING) {
                                        thread.interrupt();
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
