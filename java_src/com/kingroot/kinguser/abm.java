package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class abm {

    /* renamed from: Za */
    private final Object f1327Za;

    /* renamed from: Zb */
    private final Object f1328Zb;

    /* renamed from: Zc */
    private Process f1329Zc;

    /* renamed from: Zd */
    private DataOutputStream f1330Zd;

    /* renamed from: Ze */
    private C0634a f1331Ze;

    /* renamed from: Zf */
    private C0634a f1332Zf;

    /* renamed from: Zg */
    private final AtomicBoolean f1333Zg;

    /* renamed from: Zh */
    private C0635b f1334Zh;

    /* renamed from: Zi */
    private ByteArrayOutputStream f1335Zi;

    /* renamed from: Zj */
    private ByteArrayOutputStream f1336Zj;

    public abm(String str) {
        this(str, "");
    }

    public abm(String str, String str2) {
        boolean z = false;
        this.f1327Za = new Object();
        this.f1328Zb = new Object();
        this.f1333Zg = new AtomicBoolean(false);
        this.f1334Zh = null;
        this.f1335Zi = new ByteArrayOutputStream();
        this.f1336Zj = new ByteArrayOutputStream();
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith("/") && !new File(str).exists()) {
            throw new FileNotFoundException();
        }
        this.f1329Zc = Runtime.getRuntime().exec(str + (TextUtils.isEmpty(str2) ? "" : str2));
        synchronized (this.f1327Za) {
            this.f1327Za.wait(10L);
        }
        try {
            this.f1329Zc.exitValue();
            z = true;
        } catch (Exception e) {
        }
        if (z) {
            throw new IOException();
        }
        this.f1330Zd = new DataOutputStream(this.f1329Zc.getOutputStream());
        this.f1331Ze = new C0634a("StrReader", this.f1329Zc.getInputStream(), this.f1335Zi);
        this.f1332Zf = new C0634a("ErrReader", this.f1329Zc.getErrorStream(), this.f1336Zj);
        this.f1334Zh = new C0635b(this.f1329Zc, this.f1333Zg);
        synchronized (this.f1327Za) {
            this.f1327Za.wait(10L);
        }
        this.f1334Zh.m1530ny();
        this.f1331Ze.start();
        this.f1332Zf.start();
    }

    protected void finalize() {
        shutdown();
        super.finalize();
    }

    /* renamed from: h */
    public synchronized List<VTCmdResult> m12800h(List<String> list, boolean z) {
        ArrayList arrayList;
        arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                arrayList.add(m12797v(list.get(i2), z));
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    /* renamed from: R */
    public synchronized List<VTCmdResult> m12808R(List<VTCommand> list) {
        ArrayList arrayList;
        arrayList = new ArrayList(list.size());
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                arrayList.add(m12806b(list.get(i2)));
                i = i2 + 1;
            }
        }
        return arrayList;
    }

    /* renamed from: em */
    public synchronized VTCmdResult m12803em(String str) {
        return m12797v(str, true);
    }

    /* renamed from: v */
    public synchronized VTCmdResult m12797v(String str, boolean z) {
        return m12806b(new VTCommand(str, str, z ? 120000L : 0L));
    }

    /* renamed from: f */
    public synchronized VTCmdResult m12801f(String str, long j) {
        return m12806b(new VTCommand(str, str, j));
    }

    /* renamed from: b */
    public synchronized VTCmdResult m12806b(VTCommand vTCommand) {
        VTCmdResult m12807a;
        if (vTCommand != null) {
            if (!vTCommand.isEmpty() && vTCommand.mTimeout >= 0) {
                synchronized (this.f1328Zb) {
                    this.f1335Zi.reset();
                    this.f1336Zj.reset();
                }
                this.f1330Zd.write((vTCommand.mCmdValue + "\n").getBytes());
                this.f1330Zd.flush();
                synchronized (this.f1327Za) {
                    this.f1327Za.wait(10L);
                }
                this.f1330Zd.write("echo :RET=$?\n".getBytes());
                this.f1330Zd.flush();
                long nanoTime = System.nanoTime();
                long j = 0;
                do {
                    if (vTCommand.mTimeout != 0) {
                        j = vTCommand.mTimeout - ((System.nanoTime() - nanoTime) / 1000000);
                        if (j <= 0) {
                            throw new TimeoutException("Exec Timeout");
                        }
                    }
                    m12807a = m12807a(vTCommand, j);
                } while (m12807a == null);
            }
        }
        throw new IllegalArgumentException("Cmd Argument Invalid");
        return m12807a;
    }

    /* renamed from: a */
    private VTCmdResult m12807a(VTCommand vTCommand, long j) {
        boolean z;
        synchronized (this.f1327Za) {
            synchronized (this.f1328Zb) {
                z = new String(this.f1335Zi.toByteArray()).lastIndexOf(":RET=") == -1;
            }
            if (z) {
                this.f1327Za.wait(j);
            }
        }
        synchronized (this.f1328Zb) {
            byte[] byteArray = this.f1335Zi.toByteArray();
            byte[] byteArray2 = this.f1336Zj.toByteArray();
            String str = new String(byteArray);
            String str2 = new String(byteArray2);
            if (str.lastIndexOf(":RET=") != -1) {
                this.f1335Zi.reset();
                this.f1336Zj.reset();
                if (str.lastIndexOf(":RET=0") != -1) {
                    return new VTCmdResult(vTCommand.mCmdFlag, 0, new String(str.substring(0, str.lastIndexOf(":RET="))), str2);
                }
                return new VTCmdResult(vTCommand.mCmdFlag, Integer.valueOf((str.lastIndexOf(":RET=EOF") == -1 && str2.lastIndexOf(":RET=EOF") == -1) ? 1 : 2), str.substring(0, str.lastIndexOf(":RET=")), str2);
            }
            return null;
        }
    }

    /* renamed from: qR */
    public boolean m12799qR() {
        return this.f1333Zg.get();
    }

    /* renamed from: ew */
    public synchronized void m12802ew(String str) {
        this.f1330Zd.write((str + "\n").getBytes());
        this.f1330Zd.flush();
    }

    public void shutdown() {
        try {
            m12798qS();
        } catch (Throwable th) {
        }
    }

    /* renamed from: qS */
    private synchronized void m12798qS() {
        try {
            this.f1330Zd.write("exit\n".getBytes());
            this.f1330Zd.flush();
            this.f1329Zc.wait(100L);
            this.f1333Zg.set(true);
        } catch (Exception e) {
        }
        if (this.f1331Ze != null) {
            this.f1331Ze.interrupt();
            this.f1331Ze = null;
        }
        if (this.f1332Zf != null) {
            this.f1332Zf.interrupt();
            this.f1332Zf = null;
        }
        if (this.f1334Zh != null) {
            this.f1334Zh.m1535nA();
            this.f1334Zh = null;
        }
        if (this.f1329Zc != null) {
            try {
                this.f1329Zc.destroy();
            } catch (Throwable th) {
            }
            this.f1329Zc = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.abm$b */
    /* loaded from: classes.dex */
    public static class C0635b extends RunnableC3845wo {

        /* renamed from: Zc */
        private Process f1340Zc;

        /* renamed from: Zg */
        private AtomicBoolean f1341Zg;

        C0635b(Process process, AtomicBoolean atomicBoolean) {
            this.f1340Zc = process;
            this.f1341Zg = atomicBoolean;
        }

        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            try {
                this.f1340Zc.waitFor();
            } catch (InterruptedException e) {
            }
            this.f1341Zg.set(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.abm$a */
    /* loaded from: classes.dex */
    public class C0634a extends Thread {

        /* renamed from: Zk */
        InputStream f1337Zk;

        /* renamed from: Zl */
        ByteArrayOutputStream f1338Zl;

        C0634a(String str, InputStream inputStream, ByteArrayOutputStream byteArrayOutputStream) {
            super(str);
            this.f1337Zk = inputStream;
            this.f1338Zl = byteArrayOutputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = this.f1337Zk.read(bArr);
                    if (read < 0) {
                        synchronized (abm.this.f1328Zb) {
                            this.f1338Zl.write(":RET=EOF".getBytes());
                            this.f1338Zl.flush();
                        }
                        synchronized (abm.this.f1327Za) {
                            abm.this.f1327Za.notifyAll();
                        }
                        return;
                    } else if (read > 0) {
                        synchronized (abm.this.f1328Zb) {
                            this.f1338Zl.write(bArr, 0, read);
                            this.f1338Zl.flush();
                        }
                        synchronized (abm.this.f1327Za) {
                            abm.this.f1327Za.notifyAll();
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
    }
}
