package com.kingroot.kinguser;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public class bxz {

    /* renamed from: Zc */
    private Process f2147Zc;

    /* renamed from: Zd */
    private DataOutputStream f2148Zd;
    private C2665a bTC;
    private C2665a bTD;

    /* renamed from: Za */
    private final Object f2145Za = new Object();

    /* renamed from: Zb */
    private final Object f2146Zb = new Object();

    /* renamed from: Zi */
    private ByteArrayOutputStream f2149Zi = new ByteArrayOutputStream();

    /* renamed from: Zj */
    private ByteArrayOutputStream f2150Zj = new ByteArrayOutputStream();

    public bxz(String str) {
        boolean z;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith("/") && !new File(str).exists()) {
            throw new FileNotFoundException();
        }
        this.f2147Zc = Runtime.getRuntime().exec(str);
        synchronized (this.f2145Za) {
            this.f2145Za.wait(10L);
        }
        try {
            this.f2147Zc.exitValue();
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            throw new IOException();
        }
        this.f2148Zd = new DataOutputStream(this.f2147Zc.getOutputStream());
        this.bTC = new C2665a("s", this.f2147Zc.getInputStream(), this.f2149Zi);
        this.bTD = new C2665a("e", this.f2147Zc.getErrorStream(), this.f2150Zj);
        synchronized (this.f2145Za) {
            this.f2145Za.wait(10L);
        }
        this.bTC.start();
        this.bTD.start();
    }

    protected void finalize() {
        shutdown();
        super.finalize();
    }

    /* renamed from: nz */
    public synchronized C2666b m5197nz(String str) {
        return m5202L(str, true);
    }

    /* renamed from: L */
    public synchronized C2666b m5202L(String str, boolean z) {
        return m5201a(new C2667c(str, str, z ? 5000L : 0L));
    }

    /* renamed from: a */
    public synchronized C2666b m5201a(C2667c c2667c) {
        C2666b m5200a;
        if (c2667c != null) {
            if (!c2667c.isEmpty() && c2667c.mTimeout >= 0) {
                synchronized (this.f2146Zb) {
                    this.f2149Zi.reset();
                    this.f2150Zj.reset();
                }
                this.f2148Zd.write((c2667c.mCmdValue + "\n").getBytes());
                this.f2148Zd.flush();
                synchronized (this.f2145Za) {
                    this.f2145Za.wait(10L);
                }
                this.f2148Zd.writeBytes("echo :RET=$?\n");
                this.f2148Zd.flush();
                long nanoTime = System.nanoTime();
                long j = 0;
                do {
                    if (c2667c.mTimeout != 0) {
                        j = c2667c.mTimeout - ((System.nanoTime() - nanoTime) / 1000000);
                        if (j <= 0) {
                            throw new TimeoutException("t");
                        }
                    }
                    m5200a = m5200a(c2667c, j);
                } while (m5200a == null);
            }
        }
        throw new IllegalArgumentException("v");
        return m5200a;
    }

    /* renamed from: a */
    private C2666b m5200a(C2667c c2667c, long j) {
        boolean z;
        synchronized (this.f2145Za) {
            synchronized (this.f2146Zb) {
                z = new String(this.f2149Zi.toByteArray()).lastIndexOf(":RET=") == -1;
            }
            if (z) {
                this.f2145Za.wait(j);
            }
        }
        synchronized (this.f2146Zb) {
            byte[] byteArray = this.f2149Zi.toByteArray();
            byte[] byteArray2 = this.f2150Zj.toByteArray();
            String str = new String(byteArray);
            String str2 = new String(byteArray2);
            if (str.lastIndexOf(":RET=") != -1) {
                this.f2149Zi.reset();
                this.f2150Zj.reset();
                if (str.lastIndexOf(":RET=0") != -1) {
                    return new C2666b(c2667c.mCmdFlag, 0, str.substring(0, str.lastIndexOf(":RET=")), str2);
                }
                return new C2666b(c2667c.mCmdFlag, Integer.valueOf((str.lastIndexOf(":RET=EOF") == -1 && str2.lastIndexOf(":RET=EOF") == -1) ? 1 : 2), str.substring(0, str.lastIndexOf(":RET=")), str2);
            }
            return null;
        }
    }

    public void shutdown() {
        try {
            m5196qS();
        } catch (Throwable th) {
        }
    }

    /* renamed from: qS */
    private void m5196qS() {
        try {
            this.f2148Zd.write("exit\n".getBytes());
            this.f2148Zd.flush();
            this.f2147Zc.wait(100L);
        } catch (Exception e) {
        }
        if (this.bTC != null) {
            this.bTC.interrupt();
            this.bTC = null;
        }
        if (this.bTD != null) {
            this.bTD.interrupt();
            this.bTD = null;
        }
        if (this.f2147Zc != null) {
            try {
                this.f2147Zc.destroy();
            } catch (Throwable th) {
            }
            this.f2147Zc = null;
        }
    }

    /* renamed from: com.kingroot.kinguser.bxz$a */
    /* loaded from: classes.dex */
    public class C2665a extends Thread {

        /* renamed from: Zk */
        InputStream f2151Zk;

        /* renamed from: Zl */
        ByteArrayOutputStream f2152Zl;

        public C2665a(String str, InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream) {
            super(str);
            this.f2151Zk = inputStream;
            this.f2152Zl = byteArrayOutputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = this.f2151Zk.read(bArr);
                    if (read < 0) {
                        synchronized (bxz.this.f2146Zb) {
                            this.f2152Zl.write(":RET=EOF".getBytes());
                            this.f2152Zl.flush();
                        }
                        synchronized (bxz.this.f2145Za) {
                            bxz.this.f2145Za.notifyAll();
                        }
                        return;
                    } else if (read > 0) {
                        synchronized (bxz.this.f2146Zb) {
                            this.f2152Zl.write(bArr, 0, read);
                            this.f2152Zl.flush();
                        }
                        synchronized (bxz.this.f2145Za) {
                            bxz.this.f2145Za.notifyAll();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bxz$b */
    /* loaded from: classes.dex */
    public static class C2666b {
        public final String mCmdFlag;
        public final Integer mExitValue;
        public final String mStdErr;
        public final String mStdOut;

        public C2666b(String str, Integer num, String str2, String str3) {
            this.mCmdFlag = str;
            this.mExitValue = num;
            this.mStdOut = str2;
            this.mStdErr = str3;
        }
    }

    /* renamed from: com.kingroot.kinguser.bxz$c */
    /* loaded from: classes.dex */
    public static class C2667c {
        public final String mCmdFlag;
        public final String mCmdValue;
        public final long mTimeout;

        public C2667c(String str, String str2, long j) {
            this.mCmdFlag = str;
            this.mCmdValue = str2;
            this.mTimeout = j;
        }

        public boolean isEmpty() {
            return this.mCmdFlag == null || this.mCmdFlag.length() <= 0 || this.mCmdValue == null || this.mCmdValue.length() <= 0;
        }
    }
}
