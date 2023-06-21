package com.kingroot.kinguser;

import android.os.HandlerThread;
import com.kingroot.kinguser.bzk;
/* loaded from: classes.dex */
public class cgc extends HandlerThread {
    private bzk.InterfaceC2681a bVH;
    private long bVi;

    public cgc(String str, int i, long j) {
        super(str, i);
        this.bVi = j;
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        amS().mo5124a(this, null);
        super.start();
    }

    @Override // android.os.HandlerThread, java.lang.Thread, java.lang.Runnable
    public void run() {
        amS().beforeExecute(this, null);
        super.run();
        amS().mo5123b(this, null);
    }

    /* renamed from: fs */
    public long m4347fs() {
        return this.bVi;
    }

    private bzk.InterfaceC2681a amS() {
        if (this.bVH == null) {
            this.bVH = bzj.akk();
        }
        return this.bVH;
    }
}
