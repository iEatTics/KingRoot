package com.kingroot.kinguser;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
/* loaded from: classes.dex */
public class bpt extends bqb implements Handler.Callback {
    private bpu bHR;
    private FileWriter bHS;
    private volatile bpz bHT;
    private volatile bpz bHU;
    private volatile bpz bHV;
    private volatile bpz bHW;
    private HandlerThread bHX;
    private Handler bHY;

    /* renamed from: c */
    private File f1974c;

    /* renamed from: i */
    private volatile boolean f1975i;

    /* renamed from: pZ */
    private char[] f1976pZ;

    public bpt(bpu bpuVar) {
        this(bpv.f1986b, true, bqa.bIi, bpuVar);
    }

    public bpt(int i, boolean z, bqa bqaVar, bpu bpuVar) {
        super(i, z, bqaVar);
        this.f1975i = false;
        m5879a(bpuVar);
        this.bHT = new bpz();
        this.bHU = new bpz();
        this.bHV = this.bHT;
        this.bHW = this.bHU;
        this.f1976pZ = new char[bpuVar.m5862d()];
        ahe();
        this.bHX = new HandlerThread(bpuVar.m5866c(), bpuVar.m5860f());
        if (this.bHX != null) {
            this.bHX.start();
        }
        if (this.bHX.isAlive() && this.bHX.getLooper() != null) {
            this.bHY = new Handler(this.bHX.getLooper(), this);
        }
    }

    /* renamed from: a */
    public void m5880a() {
        if (this.bHY.hasMessages(1024)) {
            this.bHY.removeMessages(1024);
        }
        this.bHY.sendEmptyMessage(1024);
    }

    /* renamed from: b */
    public void m5877b() {
        m5875h();
        this.bHX.quit();
    }

    @Override // com.kingroot.kinguser.bqb
    /* renamed from: a */
    protected void mo5832a(int i, Thread thread, long j, String str, String str2, Throwable th) {
        m5878a(ahk().m5834b(i, thread, j, str, str2, th));
    }

    /* renamed from: a */
    protected void m5878a(String str) {
        this.bHV.m5837a(str);
        if (this.bHV.m5839a() >= ahf().m5862d()) {
            m5880a();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1024:
                m5876f();
                return true;
            default:
                return true;
        }
    }

    /* renamed from: f */
    private void m5876f() {
        if (Thread.currentThread() == this.bHX && !this.f1975i) {
            this.f1975i = true;
            m5874i();
            try {
                this.bHW.m5838a(ahe(), this.f1976pZ);
            } catch (IOException e) {
            } finally {
                this.bHW.m5836b();
            }
            this.f1975i = false;
        }
    }

    private Writer ahe() {
        File aeL = ahf().aeL();
        if ((aeL != null && !aeL.equals(this.f1974c)) || (this.bHS == null && aeL != null)) {
            this.f1974c = aeL;
            m5875h();
            try {
                this.bHS = new FileWriter(this.f1974c, true);
            } catch (IOException e) {
                return null;
            }
        }
        return this.bHS;
    }

    /* renamed from: h */
    private void m5875h() {
        try {
            if (this.bHS != null) {
                this.bHS.flush();
                this.bHS.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: i */
    private void m5874i() {
        synchronized (this) {
            if (this.bHV == this.bHT) {
                this.bHV = this.bHU;
                this.bHW = this.bHT;
            } else {
                this.bHV = this.bHT;
                this.bHW = this.bHU;
            }
        }
    }

    public bpu ahf() {
        return this.bHR;
    }

    /* renamed from: a */
    public void m5879a(bpu bpuVar) {
        this.bHR = bpuVar;
    }
}
