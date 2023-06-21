package com.kingroot.kinguser;

import android.content.Context;
import android.net.LocalServerSocket;
import android.net.LocalSocket;
import android.os.Process;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class bdv extends Thread {
    private ExecutorService bjW;
    private InterfaceC2111a bjX;
    private Context mContext;
    private LocalServerSocket bjV = null;
    private volatile boolean mIsRunning = false;

    /* renamed from: com.kingroot.kinguser.bdv$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2111a {
        /* renamed from: is */
        void mo7487is(int i);
    }

    public bdv(Context context, InterfaceC2111a interfaceC2111a) {
        this.mContext = null;
        this.bjW = null;
        this.bjX = null;
        this.mContext = context.getApplicationContext();
        this.bjW = Executors.newCachedThreadPool(new ThreadFactoryC3836wj("SuLocalSocektServer"));
        this.bjX = interfaceC2111a;
    }

    /* renamed from: YT */
    public synchronized void m7495YT() {
        start();
    }

    /* renamed from: nA */
    public synchronized void m7494nA() {
        close();
        if (this.bjW != null) {
            this.bjW.shutdown();
        }
    }

    private synchronized void close() {
        this.mIsRunning = false;
        if (this.bjV != null) {
            try {
                this.bjV.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.bjV = null;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        close();
        try {
            this.bjV = new LocalServerSocket(akf.m11306An() + ".ku_server");
            this.mIsRunning = true;
        } catch (Throwable th) {
            th.printStackTrace();
            close();
        }
        if (this.bjX != null) {
            this.bjX.mo7487is(this.mIsRunning ? 0 : -1);
        }
        while (this.mIsRunning && this.bjV != null) {
            LocalSocket localSocket = null;
            try {
                localSocket = this.bjV.accept();
            } catch (IOException e) {
                e.printStackTrace();
                if (e.getMessage().equals("Too many open files")) {
                    Process.killProcess(Process.myPid());
                    System.exit(0);
                }
            }
            if (this.mIsRunning) {
                if (localSocket != null) {
                    try {
                        this.bjW.execute(new bdw(this.mContext, localSocket));
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                        try {
                            localSocket.close();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            } else {
                return;
            }
        }
    }
}
