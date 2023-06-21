package com.kingroot.kinguser;

import cloudsdk.shell.VTCmdResult;
import cloudsdk.shell.VTCommand;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
public final class blv {
    private static final String bAp = bms.get("vt1");
    private static final String bAq = bms.get("vt2");
    private static final String bAr = bms.get("vt3");
    private static final String bAs = bms.get("vt4");
    private Process bAv;
    private DataOutputStream bAw;
    private C2507a bAx;
    private C2507a bAy;
    private final Object bAt = new Object();
    private final Object bAu = new Object();
    private ByteArrayOutputStream bAz = new ByteArrayOutputStream();

    /* renamed from: sK */
    private ByteArrayOutputStream f1736sK = new ByteArrayOutputStream();

    public blv(String str) {
        boolean z;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith("/") && !new File(str).exists()) {
            throw new FileNotFoundException();
        }
        this.bAv = Runtime.getRuntime().exec(str);
        synchronized (this.bAt) {
            this.bAt.wait(10L);
        }
        try {
            this.bAv.exitValue();
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            throw new IOException();
        }
        this.bAw = new DataOutputStream(this.bAv.getOutputStream());
        this.bAx = new C2507a("StrReader", this.bAv.getInputStream(), this.bAz);
        this.bAy = new C2507a("ErrReader", this.bAv.getErrorStream(), this.f1736sK);
        synchronized (this.bAt) {
            this.bAt.wait(10L);
        }
        this.bAx.start();
        this.bAy.start();
    }

    protected final void finalize() {
        shutdown();
        super.finalize();
    }

    /* renamed from: mh */
    public final synchronized VTCmdResult m6441mh(String str) {
        return m6448I(str, true);
    }

    /* renamed from: I */
    private synchronized VTCmdResult m6448I(String str, boolean z) {
        return m6447a(new VTCommand(str, str, 120000L));
    }

    /* renamed from: o */
    public final synchronized VTCmdResult m6440o(String str, long j) {
        return m6447a(new VTCommand(str, str, j));
    }

    /* renamed from: a */
    public final synchronized VTCmdResult m6447a(VTCommand vTCommand) {
        VTCmdResult m6446a;
        if (vTCommand != null) {
            if (!vTCommand.isEmpty() && vTCommand.mTimeout >= 0) {
                synchronized (this.bAu) {
                    this.bAz.reset();
                    this.f1736sK.reset();
                }
                this.bAw.write((vTCommand.mCmdValue + "\n").getBytes());
                this.bAw.flush();
                synchronized (this.bAt) {
                    this.bAt.wait(10L);
                }
                this.bAw.writeBytes(bAp);
                this.bAw.flush();
                long nanoTime = System.nanoTime();
                long j = 0;
                do {
                    if (vTCommand.mTimeout != 0) {
                        j = vTCommand.mTimeout - ((System.nanoTime() - nanoTime) / 1000000);
                        if (j <= 0) {
                            throw new TimeoutException("Exec Timeout");
                        }
                    }
                    m6446a = m6446a(vTCommand, j);
                } while (m6446a == null);
            }
        }
        throw new IllegalArgumentException("Cmd Argument Invalid");
        return m6446a;
    }

    /* renamed from: a */
    private VTCmdResult m6446a(VTCommand vTCommand, long j) {
        boolean z;
        synchronized (this.bAt) {
            synchronized (this.bAu) {
                z = new String(this.bAz.toByteArray()).lastIndexOf(bAq) == -1;
            }
            if (z) {
                this.bAt.wait(j);
            }
        }
        synchronized (this.bAu) {
            byte[] byteArray = this.bAz.toByteArray();
            byte[] byteArray2 = this.f1736sK.toByteArray();
            String str = new String(byteArray);
            String str2 = new String(byteArray2);
            if (str.lastIndexOf(bAq) != -1) {
                this.bAz.reset();
                this.f1736sK.reset();
                if (str.lastIndexOf(bAr) != -1) {
                    return new VTCmdResult(vTCommand.mCmdFlag, 0, new String(str.substring(0, str.lastIndexOf(bAq))), str2);
                }
                return new VTCmdResult(vTCommand.mCmdFlag, Integer.valueOf((str.lastIndexOf(bAs) == -1 && str2.lastIndexOf(bAs) == -1) ? 1 : 2), new String(str.substring(0, str.lastIndexOf(bAq))), str2);
            }
            return null;
        }
    }

    /* renamed from: i */
    public final synchronized void m6442i(String str) {
        this.bAw.write((str + "\n").getBytes());
        this.bAw.flush();
    }

    public final void shutdown() {
        try {
            m6444ay();
        } catch (Throwable th) {
        }
    }

    /* renamed from: ay */
    private synchronized void m6444ay() {
        try {
            this.bAw.write("exit\n".getBytes());
            this.bAw.flush();
            this.bAv.wait(100L);
        } catch (Exception e) {
        }
        if (this.bAx != null) {
            this.bAx.interrupt();
            this.bAx = null;
        }
        if (this.bAy != null) {
            this.bAy.interrupt();
            this.bAy = null;
        }
        if (this.bAv != null) {
            try {
                this.bAv.destroy();
            } catch (Throwable th) {
            }
            this.bAv = null;
        }
    }

    /* renamed from: com.kingroot.kinguser.blv$a */
    /* loaded from: classes.dex */
    public class C2507a extends Thread {
        private InputStream bAA;
        private ByteArrayOutputStream bAB;

        public C2507a(String str, InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream) {
            super(str);
            this.bAA = inputStream;
            this.bAB = byteArrayOutputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public final void run() {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = this.bAA.read(bArr);
                    if (read < 0) {
                        synchronized (blv.this.bAu) {
                            this.bAB.write(blv.bAs.getBytes());
                            this.bAB.flush();
                        }
                        synchronized (blv.this.bAt) {
                            blv.this.bAt.notifyAll();
                        }
                        return;
                    } else if (read > 0) {
                        synchronized (blv.this.bAu) {
                            this.bAB.write(bArr, 0, read);
                            this.bAB.flush();
                        }
                        synchronized (blv.this.bAt) {
                            blv.this.bAt.notifyAll();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
