package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bzk extends Thread {
    private InterfaceC2681a bVH;
    private Runnable bVI;

    /* renamed from: com.kingroot.kinguser.bzk$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2681a {
        /* renamed from: a */
        void mo5124a(Thread thread, Runnable runnable);

        /* renamed from: b */
        void mo5123b(Thread thread, Runnable runnable);

        void beforeExecute(Thread thread, Runnable runnable);
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        if (this.bVH != null) {
            this.bVH.mo5124a(this, this.bVI);
        }
        super.start();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (this.bVH != null) {
            this.bVH.beforeExecute(this, this.bVI);
        }
        super.run();
        if (this.bVH != null) {
            this.bVH.mo5123b(this, this.bVI);
        }
    }
}
