package com.kingroot.kinguser;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
/* renamed from: com.kingroot.kinguser.ix */
/* loaded from: classes.dex */
public class C3199ix {

    /* renamed from: sD */
    private Process f2866sD;

    /* renamed from: sE */
    private DataOutputStream f2867sE;

    /* renamed from: sF */
    private C3200a f2868sF;

    /* renamed from: sG */
    private C3200a f2869sG;

    /* renamed from: sB */
    private final Object f2864sB = new Object();

    /* renamed from: sC */
    private final Object f2865sC = new Object();

    /* renamed from: sH */
    private ByteArrayOutputStream f2870sH = new ByteArrayOutputStream();

    /* renamed from: sI */
    private ByteArrayOutputStream f2871sI = new ByteArrayOutputStream();

    public C3199ix(String str) {
        boolean z;
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith("/") && !new File(str).exists()) {
            throw new FileNotFoundException();
        }
        this.f2866sD = Runtime.getRuntime().exec(str);
        synchronized (this.f2864sB) {
            this.f2864sB.wait(10L);
        }
        try {
            this.f2866sD.exitValue();
            z = true;
        } catch (Exception e) {
            z = false;
        }
        if (z) {
            throw new IOException();
        }
        this.f2867sE = new DataOutputStream(this.f2866sD.getOutputStream());
        this.f2868sF = new C3200a("StrReader", this.f2866sD.getInputStream(), this.f2870sH);
        this.f2869sG = new C3200a("ErrReader", this.f2866sD.getErrorStream(), this.f2871sI);
        synchronized (this.f2864sB) {
            this.f2864sB.wait(10L);
        }
        this.f2868sF.start();
        this.f2869sG.start();
    }

    protected void finalize() {
        shutdown();
        super.finalize();
    }

    /* renamed from: c */
    public synchronized List<C3201b> m3452c(List<String> list, boolean z) {
        ArrayList arrayList;
        arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                arrayList.add(m3449d(list.get(i2), z));
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    /* renamed from: aD */
    public synchronized C3201b m3454aD(String str) {
        return m3449d(str, true);
    }

    /* renamed from: d */
    public synchronized C3201b m3449d(String str, boolean z) {
        return m3453b(new C3202c(str, str, z ? 120000L : 0L));
    }

    /* renamed from: a */
    public synchronized C3201b m3455a(String str, long j) {
        return m3453b(new C3202c(str, str, j));
    }

    /* renamed from: b */
    public synchronized C3201b m3453b(C3202c c3202c) {
        C3201b m3456a;
        if (c3202c != null) {
            if (!c3202c.isEmpty() && c3202c.f2876sN >= 0) {
                synchronized (this.f2865sC) {
                    this.f2870sH.reset();
                    this.f2871sI.reset();
                }
                this.f2867sE.writeBytes(c3202c.f2875sM + "\n");
                this.f2867sE.flush();
                synchronized (this.f2864sB) {
                    this.f2864sB.wait(10L);
                }
                this.f2867sE.writeBytes("echo :RET=$?\n");
                this.f2867sE.flush();
                long nanoTime = System.nanoTime();
                long j = 0;
                do {
                    if (c3202c.f2876sN != 0) {
                        j = c3202c.f2876sN - ((System.nanoTime() - nanoTime) / 1000000);
                        if (j <= 0) {
                            throw new TimeoutException("Exec Timeout");
                        }
                    }
                    m3456a = m3456a(c3202c, j);
                } while (m3456a == null);
            }
        }
        throw new IllegalArgumentException("Cmd Argument Invalid");
        return m3456a;
    }

    /* renamed from: a */
    private C3201b m3456a(C3202c c3202c, long j) {
        boolean z;
        synchronized (this.f2864sB) {
            synchronized (this.f2865sC) {
                z = new String(this.f2870sH.toByteArray()).lastIndexOf(":RET=") == -1;
            }
            if (z) {
                this.f2864sB.wait(j);
            }
        }
        synchronized (this.f2865sC) {
            byte[] byteArray = this.f2870sH.toByteArray();
            byte[] byteArray2 = this.f2871sI.toByteArray();
            String str = new String(byteArray);
            String str2 = new String(byteArray2);
            if (str.lastIndexOf(":RET=") != -1) {
                this.f2870sH.reset();
                this.f2871sI.reset();
                if (str.lastIndexOf(":RET=0") != -1) {
                    return new C3201b(c3202c.mCmdFlag, 0, str.substring(0, str.lastIndexOf(":RET=")), str2);
                }
                return new C3201b(c3202c.mCmdFlag, Integer.valueOf((str.lastIndexOf(":RET=EOF") == -1 && str2.lastIndexOf(":RET=EOF") == -1) ? 1 : 2), str.substring(0, str.lastIndexOf(":RET=")), str2);
            }
            return null;
        }
    }

    public void shutdown() {
        try {
            m3451cn();
        } catch (Throwable th) {
        }
    }

    /* renamed from: cn */
    private void m3451cn() {
        boolean z = false;
        if (this.f2867sE != null) {
            try {
                this.f2867sE.writeBytes("exit\n");
                this.f2867sE.flush();
                this.f2866sD.wait(100L);
                z = true;
            } catch (Exception e) {
            }
        }
        if (this.f2868sF != null) {
            this.f2868sF.interrupt();
            this.f2868sF = null;
        }
        if (this.f2869sG != null) {
            this.f2869sG.interrupt();
            this.f2869sG = null;
        }
        if (this.f2866sD != null) {
            if (!z) {
                this.f2866sD.destroy();
            }
            this.f2866sD = null;
        }
    }

    /* renamed from: com.kingroot.kinguser.ix$a */
    /* loaded from: classes.dex */
    public class C3200a extends Thread {

        /* renamed from: sJ */
        InputStream f2872sJ;

        /* renamed from: sK */
        ByteArrayOutputStream f2873sK;

        public C3200a(String str, InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream) {
            super(str);
            this.f2872sJ = inputStream;
            this.f2873sK = byteArrayOutputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = this.f2872sJ.read(bArr);
                    if (read < 0) {
                        synchronized (C3199ix.this.f2865sC) {
                            this.f2873sK.write(":RET=EOF".getBytes());
                            this.f2873sK.flush();
                        }
                        synchronized (C3199ix.this.f2864sB) {
                            C3199ix.this.f2864sB.notifyAll();
                        }
                        return;
                    } else if (read > 0) {
                        synchronized (C3199ix.this.f2865sC) {
                            this.f2873sK.write(bArr, 0, read);
                            this.f2873sK.flush();
                        }
                        synchronized (C3199ix.this.f2864sB) {
                            C3199ix.this.f2864sB.notifyAll();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.ix$b */
    /* loaded from: classes.dex */
    public static class C3201b {
        public final String mCmdFlag;
        public final Integer mExitValue;
        public final String mStdErr;
        public final String mStdOut;

        public C3201b(String str, Integer num, String str2, String str3) {
            this.mCmdFlag = str;
            this.mExitValue = num;
            this.mStdOut = str2;
            this.mStdErr = str3;
        }

        /* renamed from: co */
        public boolean m3447co() {
            return this.mExitValue != null && this.mExitValue.intValue() == 0;
        }
    }

    /* renamed from: com.kingroot.kinguser.ix$c */
    /* loaded from: classes.dex */
    public static class C3202c {
        public final String mCmdFlag;

        /* renamed from: sM */
        public final String f2875sM;

        /* renamed from: sN */
        public final long f2876sN;

        public C3202c(String str, String str2, long j) {
            this.mCmdFlag = str;
            this.f2875sM = str2;
            this.f2876sN = j;
        }

        public boolean isEmpty() {
            return this.mCmdFlag == null || this.mCmdFlag.length() <= 0 || this.f2875sM == null || this.f2875sM.length() <= 0;
        }
    }
}
