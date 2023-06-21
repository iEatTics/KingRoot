package com.kingroot.kinguser;

import android.content.Context;
import com.google.android.mms.ContentType;
import com.kingroot.kinguser.C3784vj;
import com.kingroot.kinguser.C3956zk;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vi */
/* loaded from: classes.dex */
public class C3761vi<T extends C3784vj> extends RunnableC3845wo {

    /* renamed from: KO */
    private static final short[] f3745KO = {8, 64, 128};

    /* renamed from: Gx */
    private String f3746Gx;

    /* renamed from: KC */
    private T f3747KC;

    /* renamed from: KK */
    private int f3748KK = 307200;

    /* renamed from: KL */
    private volatile boolean f3749KL = false;

    /* renamed from: KM */
    private C3739uy f3750KM = null;

    /* renamed from: KN */
    private final Object f3751KN = new Object();

    /* renamed from: KP */
    private C3785vk<T> f3752KP = null;

    /* renamed from: KQ */
    private Runnable f3753KQ = new Runnable() { // from class: com.kingroot.kinguser.vi.2
        @Override // java.lang.Runnable
        public void run() {
            synchronized (C3761vi.this.f3751KN) {
                if (C3761vi.this.f3750KM != null) {
                    try {
                        C3761vi.this.f3750KM.close();
                        C3761vi.this.f3750KM = null;
                    } catch (Exception e) {
                    }
                }
            }
        }
    };
    private Context mContext;

    /* renamed from: be */
    public void m1872be(int i) {
        if (this.f3749KL) {
            switch (i) {
                case 0:
                    if (this.f3752KP != null) {
                        this.f3747KC.mState = 0;
                        this.f3752KP.mo1794d(this.f3747KC);
                        return;
                    }
                    return;
                case 1:
                    if (this.f3752KP != null) {
                        this.f3747KC.mState = 0;
                        this.f3752KP.mo1793e(this.f3747KC);
                        return;
                    }
                    return;
                case 2:
                    if (this.f3752KP != null) {
                        this.f3747KC.mState = 2;
                        this.f3752KP.mo1797a(this.f3747KC);
                        return;
                    }
                    return;
                case 3:
                    if (this.f3752KP != null) {
                        this.f3747KC.mState = 3;
                        this.f3752KP.mo1796b(this.f3747KC);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public C3761vi(Context context, T t, String str) {
        this.mContext = context;
        this.f3747KC = t;
        this.f3746Gx = str;
    }

    /* renamed from: a */
    public void m1874a(C3785vk<T> c3785vk) {
        this.f3752KP = c3785vk;
    }

    @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
    public void run() {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.vi.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                C3761vi.this.m1867lr();
                return null;
            }
        }, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* renamed from: lr */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m1867lr() {
        Throwable th;
        FileOutputStream fileOutputStream;
        C3747va e;
        ?? r1 = 1;
        FileOutputStream fileOutputStream2 = null;
        this.f3749KL = true;
        m1872be(0);
        try {
        } catch (Throwable th2) {
            r1 = fileOutputStream2;
            th = th2;
        }
        try {
            try {
                if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                    this.f3747KC.f3760BH = 1.0f;
                    m1872be(3);
                    if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                        m1872be(3);
                    }
                    synchronized (this.f3751KN) {
                        if (this.f3750KM != null) {
                            this.f3750KM.close();
                            this.f3750KM = null;
                        }
                    }
                    C3945za.m1340c((Closeable) null);
                    this.f3749KL = false;
                    return;
                }
                if (this.f3747KC.mSize == -1) {
                    m1866ls();
                }
                fileOutputStream = new FileOutputStream(this.f3746Gx, true);
                try {
                    fileOutputStream.getChannel().position(this.f3747KC.f3763KU);
                    if (this.f3747KC.f3761KS) {
                        m1868d(fileOutputStream);
                    } else {
                        m1869c(fileOutputStream);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                        m1872be(3);
                    }
                    synchronized (this.f3751KN) {
                        if (this.f3750KM != null) {
                            this.f3750KM.close();
                            this.f3750KM = null;
                        }
                    }
                    C3945za.m1340c(fileOutputStream);
                    this.f3749KL = false;
                } catch (C3747va e2) {
                    e = e2;
                    m1871bf(e.m1922lf());
                    if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                        m1872be(3);
                    }
                    synchronized (this.f3751KN) {
                        if (this.f3750KM != null) {
                            this.f3750KM.close();
                            this.f3750KM = null;
                        }
                    }
                    C3945za.m1340c(fileOutputStream);
                    this.f3749KL = false;
                } catch (FileNotFoundException e3) {
                    fileOutputStream2 = fileOutputStream;
                    m1871bf(-7001);
                    if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                        m1872be(3);
                    }
                    synchronized (this.f3751KN) {
                        if (this.f3750KM != null) {
                            this.f3750KM.close();
                            this.f3750KM = null;
                        }
                    }
                    C3945za.m1340c(fileOutputStream2);
                    this.f3749KL = false;
                } catch (IOException e4) {
                    fileOutputStream2 = fileOutputStream;
                    m1871bf(-7056);
                    if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                        m1872be(3);
                    }
                    synchronized (this.f3751KN) {
                        if (this.f3750KM != null) {
                            this.f3750KM.close();
                            this.f3750KM = null;
                        }
                    }
                    C3945za.m1340c(fileOutputStream2);
                    this.f3749KL = false;
                } catch (Exception e5) {
                    fileOutputStream2 = fileOutputStream;
                    m1871bf(-5006);
                    if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                        m1872be(3);
                    }
                    synchronized (this.f3751KN) {
                        if (this.f3750KM != null) {
                            this.f3750KM.close();
                            this.f3750KM = null;
                        }
                    }
                    C3945za.m1340c(fileOutputStream2);
                    this.f3749KL = false;
                }
            } catch (Throwable th3) {
                th = th3;
                if (this.f3747KC.f3763KU == this.f3747KC.mSize && this.f3747KC.f3763KU > 0) {
                    m1872be(3);
                }
                synchronized (this.f3751KN) {
                    if (this.f3750KM != null) {
                        this.f3750KM.close();
                        this.f3750KM = null;
                    }
                }
                C3945za.m1340c((Closeable) r1);
                this.f3749KL = false;
                throw th;
            }
        } catch (C3747va e6) {
            fileOutputStream = null;
            e = e6;
        } catch (FileNotFoundException e7) {
        } catch (IOException e8) {
        } catch (Exception e9) {
        } catch (Throwable th4) {
            r1 = 0;
            th = th4;
            if (this.f3747KC.f3763KU == this.f3747KC.mSize) {
                m1872be(3);
            }
            synchronized (this.f3751KN) {
            }
        }
    }

    /* renamed from: bf */
    private void m1871bf(int i) {
        if (this.f3749KL) {
            this.f3747KC.mErrorCode = i;
            m1872be(2);
        }
    }

    /* renamed from: ls */
    private void m1866ls() {
        synchronized (this.f3751KN) {
            this.f3750KM = C3739uy.m1934k(this.mContext, this.f3747KC.f3766ra);
            this.f3750KM.setRequestProperty("Range", "bytes=0-" + (this.f3748KK - 1));
            if (this.f3750KM.m1932kZ() != 206) {
                this.f3750KM.close();
                this.f3750KM = C3739uy.m1934k(this.mContext, this.f3747KC.f3766ra);
                this.f3750KM.m1932kZ();
            }
            int responseCode = this.f3750KM.getResponseCode();
            if (responseCode == 206) {
                this.f3747KC.f3761KS = true;
                this.f3747KC.mSize = this.f3750KM.m1931la();
            } else if (responseCode == 200) {
                String headerField = this.f3750KM.getHeaderField("Content-Type");
                if (this.f3747KC.mType == 1 && headerField.contentEquals(ContentType.TEXT_HTML)) {
                    m1871bf(-7007);
                    return;
                }
                this.f3747KC.f3761KS = false;
                this.f3747KC.mSize = this.f3750KM.getContentLength();
            }
            if (this.f3747KC.mSize <= 0) {
                m1871bf(-7001);
            }
        }
    }

    /* renamed from: c */
    private void m1869c(FileOutputStream fileOutputStream) {
        InputStream inputStream;
        try {
            try {
                try {
                    try {
                        try {
                            byte[] bArr = new byte[f3745KO[1] << 10];
                            synchronized (this.f3751KN) {
                                if (this.f3750KM == null) {
                                    this.f3750KM = C3739uy.m1934k(this.mContext, this.f3747KC.f3766ra);
                                    this.f3750KM.m1932kZ();
                                }
                                if (this.f3750KM.getResponseCode() != 200) {
                                    throw new C3747va(this.f3750KM.getResponseCode() - 3000, "error: response code is not 200.");
                                }
                                inputStream = this.f3750KM.getInputStream();
                            }
                            long currentTimeMillis = System.currentTimeMillis();
                            long j = this.f3747KC.f3763KU;
                            byte[] bArr2 = bArr;
                            int i = 0;
                            while (true) {
                                if (!this.f3749KL || this.f3747KC.mSize <= 0 || this.f3747KC.mSize <= this.f3747KC.f3763KU) {
                                    break;
                                }
                                int read = inputStream.read(bArr2);
                                if (read == -1 || !this.f3749KL) {
                                    break;
                                }
                                fileOutputStream.write(bArr2, 0, read);
                                fileOutputStream.flush();
                                this.f3747KC.f3763KU += read;
                                int i2 = i + read;
                                if (this.f3747KC.mSize == this.f3747KC.f3763KU) {
                                    this.f3747KC.f3760BH = 1.0f;
                                    m1872be(1);
                                    break;
                                }
                                if (this.f3747KC.mSize > 0) {
                                    this.f3747KC.f3760BH = ((float) this.f3747KC.f3763KU) / ((float) this.f3747KC.mSize);
                                    m1872be(1);
                                }
                                if (i2 > this.f3748KK) {
                                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                                    if (currentTimeMillis2 <= 0) {
                                        currentTimeMillis2 = 1;
                                    }
                                    int i3 = (int) ((this.f3747KC.f3763KU - j) / currentTimeMillis2);
                                    if (this.f3747KC.mSpeed == 0) {
                                        this.f3747KC.mSpeed = i3;
                                    } else {
                                        this.f3747KC.mSpeed = (this.f3747KC.mSpeed + this.f3747KC.mSpeed) / 2;
                                    }
                                    if (i3 < 33) {
                                        if (bArr2.length != (f3745KO[0] << 10)) {
                                            bArr2 = new byte[f3745KO[0] << 10];
                                        }
                                    } else if (i3 < 65) {
                                        if (bArr2.length != (f3745KO[1] << 10)) {
                                            bArr2 = new byte[f3745KO[1] << 10];
                                        }
                                    } else if (bArr2.length != (f3745KO[2] << 10)) {
                                        bArr2 = new byte[f3745KO[2] << 10];
                                    }
                                    i = i2;
                                } else {
                                    i = i2;
                                }
                            }
                            C3945za.m1340c(inputStream);
                        } catch (IOException e) {
                            throw new C3747va(-7056, "unbreakable download IOException: " + e.getMessage());
                        }
                    } catch (UnsupportedEncodingException e2) {
                        throw new C3747va(-59, "unbreakable download unsupported encoding: " + e2.getMessage());
                    }
                } catch (C3747va e3) {
                    throw e3;
                }
            } catch (Exception e4) {
                throw new C3747va(-2, "unbreakable download IOException: " + e4.getMessage());
            }
        } catch (Throwable th) {
            C3945za.m1340c((Closeable) null);
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00f9, code lost:
        r6 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0101, code lost:
        if (r17.f3749KL == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0111, code lost:
        if (r17.f3747KC.mSize <= r17.f3747KC.f3763KU) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0113, code lost:
        r3 = r4.read(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0118, code lost:
        if (r3 != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
        r6 = java.lang.System.currentTimeMillis() - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0124, code lost:
        if (r6 > 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0126, code lost:
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0128, code lost:
        r3 = (int) ((r17.f3747KC.f3763KU - r8) / r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0139, code lost:
        if (r17.f3747KC.mSpeed != 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013b, code lost:
        r17.f3747KC.mSpeed = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0143, code lost:
        if (r3 >= 33) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0145, code lost:
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014e, code lost:
        if (r2.length == (com.kingroot.kinguser.C3761vi.f3745KO[0] << 10)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0150, code lost:
        r2 = new byte[com.kingroot.kinguser.C3761vi.f3745KO[0] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0159, code lost:
        r6 = false;
        r16 = r3;
        r3 = r4;
        r4 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0165, code lost:
        if (r17.f3749KL == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0167, code lost:
        r18.write(r2, 0, r3);
        r18.flush();
        r17.f3747KC.f3763KU += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0188, code lost:
        if (r17.f3747KC.mSize != r17.f3747KC.f3763KU) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x018a, code lost:
        r17.f3747KC.f3760BH = 1.0f;
        m1872be(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01a6, code lost:
        if (r17.f3747KC.mSize <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a8, code lost:
        r17.f3747KC.f3760BH = ((float) r17.f3747KC.f3763KU) / ((float) r17.f3747KC.mSize);
        m1872be(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01e5, code lost:
        r17.f3747KC.mSpeed = (r17.f3747KC.mSpeed + r17.f3747KC.mSpeed) / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x021e, code lost:
        if (r3 >= 65) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0220, code lost:
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0229, code lost:
        if (r2.length == (com.kingroot.kinguser.C3761vi.f3745KO[1] << 10)) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x022b, code lost:
        r2 = new byte[com.kingroot.kinguser.C3761vi.f3745KO[1] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0236, code lost:
        r3 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x023f, code lost:
        if (r2.length == (com.kingroot.kinguser.C3761vi.f3745KO[2] << 10)) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0241, code lost:
        r2 = new byte[com.kingroot.kinguser.C3761vi.f3745KO[2] << 10];
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m1868d(FileOutputStream fileOutputStream) {
        InputStream inputStream = null;
        try {
            try {
                boolean z = true;
                byte[] bArr = new byte[f3745KO[1] << 10];
                InputStream inputStream2 = null;
                int i = 1;
                while (this.f3749KL && this.f3747KC.mSize > 0 && this.f3747KC.mSize > this.f3747KC.f3763KU) {
                    try {
                        long j = this.f3747KC.f3763KU;
                        long j2 = ((i * (1 * this.f3748KK)) + j) - 1;
                        if (j2 >= this.f3747KC.mSize) {
                            j2 = this.f3747KC.mSize - 1;
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("bytes=").append(j).append('-').append(j2);
                        synchronized (this.f3751KN) {
                            try {
                                if (this.f3750KM == null) {
                                    this.f3750KM = C3739uy.m1934k(this.mContext, this.f3747KC.f3766ra);
                                    this.f3750KM.setRequestProperty("Range", stringBuffer.toString());
                                    this.f3750KM.m1932kZ();
                                } else if (!z) {
                                    C3739uy m1940a = C3739uy.m1940a(this.mContext, this.f3750KM);
                                    this.f3750KM.close();
                                    this.f3750KM = m1940a;
                                    this.f3750KM.setRequestProperty("Range", stringBuffer.toString());
                                    this.f3750KM.m1932kZ();
                                }
                                if (this.f3750KM.getResponseCode() != 206) {
                                    throw new IOException("response code is not 206 error.");
                                }
                                InputStream inputStream3 = this.f3750KM.getInputStream();
                                try {
                                } catch (Throwable th) {
                                    th = th;
                                    inputStream2 = inputStream3;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        throw th;
                    } catch (C3747va e) {
                        e = e;
                        throw e;
                    } catch (UnsupportedEncodingException e2) {
                        e = e2;
                        throw new C3747va(-59, "unbreakable download unsupported encoding: " + e.getMessage());
                    } catch (IOException e3) {
                        e = e3;
                        throw new C3747va(-7056, "unbreakable download IOException: " + e.getMessage());
                    } catch (Exception e4) {
                        e = e4;
                        throw new C3747va(-2, "unbreakable download IOException: " + e.getMessage());
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStream2;
                        C3945za.m1340c(inputStream);
                        throw th;
                    }
                }
                C3945za.m1340c(inputStream2);
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (C3747va e5) {
            e = e5;
        } catch (UnsupportedEncodingException e6) {
            e = e6;
        } catch (IOException e7) {
            e = e7;
        } catch (Exception e8) {
            e = e8;
        }
    }

    /* renamed from: lt */
    public void m1865lt() {
        this.f3749KL = false;
        m1535nA();
        if (!C3697uj.m2032kA()) {
            this.f3753KQ.run();
        } else {
            C3849wp.execute(this.f3753KQ);
        }
    }
}
