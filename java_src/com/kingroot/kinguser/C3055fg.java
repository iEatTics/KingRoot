package com.kingroot.kinguser;

import cloudsdk.shell.VTCommand;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.concurrent.TimeoutException;
/* renamed from: com.kingroot.kinguser.fg */
/* loaded from: classes.dex */
public class C3055fg {

    /* renamed from: pI */
    private Process f2658pI;

    /* renamed from: pJ */
    private DataOutputStream f2659pJ;

    /* renamed from: pK */
    private C3056fh f2660pK;

    /* renamed from: pL */
    private C3056fh f2661pL;

    /* renamed from: V */
    private final Object f2656V = new Object();

    /* renamed from: pH */
    private final Object f2657pH = new Object();

    /* renamed from: pM */
    private ByteArrayOutputStream f2662pM = new ByteArrayOutputStream();

    /* renamed from: pN */
    private ByteArrayOutputStream f2663pN = new ByteArrayOutputStream();

    public C3055fg(String str) {
        boolean z;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith("/") && !new File(str).exists()) {
            throw new FileNotFoundException();
        }
        this.f2658pI = Runtime.getRuntime().exec(str);
        synchronized (this.f2656V) {
            this.f2656V.wait(10L);
        }
        try {
            this.f2658pI.exitValue();
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            throw new IOException();
        }
        this.f2659pJ = new DataOutputStream(this.f2658pI.getOutputStream());
        this.f2660pK = new C3056fh(this, "s", this.f2658pI.getInputStream(), this.f2662pM);
        this.f2661pL = new C3056fh(this, "e", this.f2658pI.getErrorStream(), this.f2663pN);
        synchronized (this.f2656V) {
            this.f2656V.wait(10L);
        }
        this.f2660pK.start();
        this.f2661pL.start();
    }

    protected void finalize() {
        shutdown();
        super.finalize();
    }

    /* renamed from: Z */
    public synchronized C3057fi m3856Z(String str) {
        return m3850b(str, true);
    }

    /* renamed from: b */
    public synchronized C3057fi m3850b(String str, boolean z) {
        return m3854a(new C3058fj(str, str, z ? VTCommand.TIMEOUT_DEFAULT : 0L));
    }

    /* renamed from: a */
    public synchronized C3057fi m3854a(C3058fj c3058fj) {
        C3057fi m3853a;
        if (c3058fj != null) {
            if (!c3058fj.isEmpty() && c3058fj.f2673pT >= 0) {
                synchronized (this.f2657pH) {
                    this.f2662pM.reset();
                    this.f2663pN.reset();
                }
                this.f2659pJ.write((c3058fj.f2672ak + "\n").getBytes());
                this.f2659pJ.flush();
                synchronized (this.f2656V) {
                    this.f2656V.wait(10L);
                }
                this.f2659pJ.writeBytes("echo :RET=$?\n");
                this.f2659pJ.flush();
                long nanoTime = System.nanoTime();
                long j = 0;
                do {
                    if (c3058fj.f2673pT != 0) {
                        j = c3058fj.f2673pT - ((System.nanoTime() - nanoTime) / 1000000);
                        if (j <= 0) {
                            throw new TimeoutException("t");
                        }
                    }
                    m3853a = m3853a(c3058fj, j);
                } while (m3853a == null);
            }
        }
        throw new IllegalArgumentException("v");
        return m3853a;
    }

    /* renamed from: a */
    private C3057fi m3853a(C3058fj c3058fj, long j) {
        boolean z;
        synchronized (this.f2656V) {
            synchronized (this.f2657pH) {
                z = new String(this.f2662pM.toByteArray()).lastIndexOf(":RET=") == -1;
            }
            if (z) {
                this.f2656V.wait(j);
            }
        }
        synchronized (this.f2657pH) {
            byte[] byteArray = this.f2662pM.toByteArray();
            byte[] byteArray2 = this.f2663pN.toByteArray();
            String str = new String(byteArray);
            String str2 = new String(byteArray2);
            if (str.lastIndexOf(":RET=") != -1) {
                this.f2662pM.reset();
                this.f2663pN.reset();
                if (str.lastIndexOf(":RET=0") != -1) {
                    return new C3057fi(c3058fj.f2671ag, 0, str.substring(0, str.lastIndexOf(":RET=")), str2);
                }
                return new C3057fi(c3058fj.f2671ag, Integer.valueOf((str.lastIndexOf(":RET=EOF") == -1 && str2.lastIndexOf(":RET=EOF") == -1) ? 1 : 2), str.substring(0, str.lastIndexOf(":RET=")), str2);
            }
            return null;
        }
    }

    public void shutdown() {
        try {
            m3852ag();
        } catch (Throwable th) {
        }
    }

    /* renamed from: ag */
    private void m3852ag() {
        try {
            this.f2659pJ.write("exit\n".getBytes());
            this.f2659pJ.flush();
            this.f2658pI.wait(100L);
        } catch (Exception e) {
        }
        if (this.f2660pK != null) {
            this.f2660pK.interrupt();
            this.f2660pK = null;
        }
        if (this.f2661pL != null) {
            this.f2661pL.interrupt();
            this.f2661pL = null;
        }
        if (this.f2658pI != null) {
            try {
                this.f2658pI.destroy();
            } catch (Throwable th) {
            }
            this.f2658pI = null;
        }
    }
}
