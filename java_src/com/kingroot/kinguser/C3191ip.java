package com.kingroot.kinguser;

import android.content.Context;
import com.king.uranus.C0390ar;
import com.kingroot.kinguser.C3193ir;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
/* renamed from: com.kingroot.kinguser.ip */
/* loaded from: classes.dex */
public class C3191ip<T extends C3193ir> extends RunnableC3305mg {

    /* renamed from: sk */
    private static final short[] f2839sk = {8, 64, 128};
    private Context mContext;

    /* renamed from: se */
    private T f2840se;

    /* renamed from: sf */
    private String f2841sf;

    /* renamed from: sg */
    private int f2842sg = 307200;

    /* renamed from: sh */
    private volatile boolean f2843sh = false;

    /* renamed from: si */
    private C3236ka f2844si = null;

    /* renamed from: sj */
    private final Object f2845sj = new Object();

    /* renamed from: sl */
    private C3194is<T> f2846sl = null;

    /* renamed from: O */
    public void m3490O(int i) {
        if (this.f2843sh) {
            switch (i) {
                case 0:
                    if (this.f2846sl != null) {
                        this.f2840se.f2852sp = 0;
                        this.f2846sl.mo3479b(this.f2840se);
                        return;
                    }
                    return;
                case 1:
                    if (this.f2846sl != null) {
                        this.f2840se.f2852sp = 0;
                        this.f2846sl.mo3478c(this.f2840se);
                        return;
                    }
                    return;
                case 2:
                    if (this.f2846sl != null) {
                        this.f2840se.f2852sp = 2;
                        this.f2846sl.mo3293d(this.f2840se);
                        return;
                    }
                    return;
                case 3:
                    if (this.f2846sl != null) {
                        this.f2840se.f2852sp = 3;
                        this.f2846sl.mo3291e(this.f2840se);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public C3191ip(Context context, T t, String str) {
        this.mContext = context;
        this.f2840se = t;
        this.f2841sf = str;
    }

    /* renamed from: a */
    public void m3487a(C3194is<T> c3194is) {
        this.f2846sl = c3194is;
    }

    @Override // com.kingroot.kinguser.RunnableC3305mg, java.lang.Runnable
    public void run() {
        C3176ic.m3574a(new C3192iq(this), new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* renamed from: cc */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m3484cc() {
        Throwable th;
        FileOutputStream fileOutputStream;
        C0390ar e;
        boolean z;
        ?? r1 = 1;
        FileOutputStream fileOutputStream2 = null;
        this.f2843sh = true;
        m3490O(0);
        try {
        } catch (Throwable th2) {
            r1 = fileOutputStream2;
            th = th2;
        }
        try {
            try {
                if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                    this.f2840se.f2856st = 1.0f;
                    m3490O(3);
                    if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                        m3490O(3);
                    }
                    synchronized (this.f2845sj) {
                        if (this.f2844si != null) {
                            this.f2844si.close();
                            this.f2844si = null;
                        }
                    }
                    C3356nn.m2841a(null);
                    this.f2843sh = false;
                    return;
                }
                if (this.f2840se.f2854sr == -1) {
                    m3483cd();
                }
                fileOutputStream = new FileOutputStream(this.f2841sf, true);
                try {
                    fileOutputStream.getChannel().position(this.f2840se.f2855ss);
                    synchronized (this.f2845sj) {
                        z = this.f2840se.f2851so;
                    }
                    if (z) {
                        m3485b(fileOutputStream);
                    } else {
                        m3486a(fileOutputStream);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                        m3490O(3);
                    }
                    synchronized (this.f2845sj) {
                        if (this.f2844si != null) {
                            this.f2844si.close();
                            this.f2844si = null;
                        }
                    }
                    C3356nn.m2841a(fileOutputStream);
                    this.f2843sh = false;
                } catch (C0390ar e2) {
                    e = e2;
                    m3489P(e.m13679cS());
                    if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                        m3490O(3);
                    }
                    synchronized (this.f2845sj) {
                        if (this.f2844si != null) {
                            this.f2844si.close();
                            this.f2844si = null;
                        }
                    }
                    C3356nn.m2841a(fileOutputStream);
                    this.f2843sh = false;
                } catch (FileNotFoundException e3) {
                    fileOutputStream2 = fileOutputStream;
                    m3489P(-7001);
                    if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                        m3490O(3);
                    }
                    synchronized (this.f2845sj) {
                        if (this.f2844si != null) {
                            this.f2844si.close();
                            this.f2844si = null;
                        }
                    }
                    C3356nn.m2841a(fileOutputStream2);
                    this.f2843sh = false;
                } catch (IOException e4) {
                    fileOutputStream2 = fileOutputStream;
                    m3489P(-7056);
                    if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                        m3490O(3);
                    }
                    synchronized (this.f2845sj) {
                        if (this.f2844si != null) {
                            this.f2844si.close();
                            this.f2844si = null;
                        }
                    }
                    C3356nn.m2841a(fileOutputStream2);
                    this.f2843sh = false;
                } catch (Exception e5) {
                    fileOutputStream2 = fileOutputStream;
                    m3489P(-5006);
                    if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                        m3490O(3);
                    }
                    synchronized (this.f2845sj) {
                        if (this.f2844si != null) {
                            this.f2844si.close();
                            this.f2844si = null;
                        }
                    }
                    C3356nn.m2841a(fileOutputStream2);
                    this.f2843sh = false;
                }
            } catch (Throwable th3) {
                th = th3;
                if (this.f2840se.f2855ss == this.f2840se.f2854sr && this.f2840se.f2855ss > 0) {
                    m3490O(3);
                }
                synchronized (this.f2845sj) {
                    if (this.f2844si != null) {
                        this.f2844si.close();
                        this.f2844si = null;
                    }
                }
                C3356nn.m2841a(r1);
                this.f2843sh = false;
                throw th;
            }
        } catch (C0390ar e6) {
            fileOutputStream = null;
            e = e6;
        } catch (FileNotFoundException e7) {
        } catch (IOException e8) {
        } catch (Exception e9) {
        } catch (Throwable th4) {
            r1 = 0;
            th = th4;
            if (this.f2840se.f2855ss == this.f2840se.f2854sr) {
                m3490O(3);
            }
            synchronized (this.f2845sj) {
            }
        }
    }

    /* renamed from: P */
    private void m3489P(int i) {
        if (this.f2843sh) {
            this.f2840se.f2848ei = i;
            m3490O(2);
        }
    }

    /* renamed from: cd */
    private void m3483cd() {
        synchronized (this.f2845sj) {
            this.f2844si = C3236ka.m3315e(this.mContext, this.f2840se.f2849ra);
            this.f2844si.setRequestProperty("Range", "bytes=0-" + (this.f2842sg - 1));
            if (this.f2844si.m3327I() != 206) {
                this.f2844si.close();
                this.f2844si = C3236ka.m3315e(this.mContext, this.f2840se.f2849ra);
                this.f2844si.m3327I();
            }
            int responseCode = this.f2844si.getResponseCode();
            if (responseCode == 206) {
                this.f2840se.f2851so = true;
                this.f2840se.f2854sr = this.f2844si.m3326J();
            } else if (responseCode == 200) {
                this.f2840se.f2851so = false;
                this.f2840se.f2854sr = this.f2844si.getContentLength();
            }
            if (this.f2840se.f2854sr <= 0) {
                m3489P(-7001);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009c, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009f, code lost:
        return;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3486a(FileOutputStream fileOutputStream) {
        InputStream inputStream;
        InputStream inputStream2 = null;
        try {
            try {
                try {
                    try {
                        try {
                            byte[] bArr = new byte[f2839sk[1] << 10];
                            synchronized (this.f2845sj) {
                                if (this.f2844si == null) {
                                    this.f2844si = C3236ka.m3315e(this.mContext, this.f2840se.f2849ra);
                                    this.f2844si.m3327I();
                                }
                                if (this.f2844si.getResponseCode() != 200) {
                                    throw new C0390ar(this.f2844si.getResponseCode() - 3000, "error: response code is not 200.");
                                }
                                inputStream = this.f2844si.getInputStream();
                            }
                            long currentTimeMillis = System.currentTimeMillis();
                            long j = this.f2840se.f2855ss;
                            byte[] bArr2 = bArr;
                            int i = 0;
                            while (true) {
                                if (!this.f2843sh || this.f2840se.f2854sr <= 0 || this.f2840se.f2854sr <= this.f2840se.f2855ss) {
                                    break;
                                }
                                int read = inputStream.read(bArr2);
                                if (read == -1 || !this.f2843sh) {
                                    break;
                                }
                                fileOutputStream.write(bArr2, 0, read);
                                fileOutputStream.flush();
                                this.f2840se.f2855ss += read;
                                int i2 = i + read;
                                if (this.f2840se.f2854sr == this.f2840se.f2855ss) {
                                    this.f2840se.f2856st = 1.0f;
                                    m3490O(1);
                                    break;
                                }
                                if (this.f2840se.f2854sr > 0) {
                                    this.f2840se.f2856st = ((float) this.f2840se.f2855ss) / ((float) this.f2840se.f2854sr);
                                    m3490O(1);
                                }
                                if (i2 > this.f2842sg) {
                                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                                    if (currentTimeMillis2 <= 0) {
                                        currentTimeMillis2 = 1;
                                    }
                                    int i3 = (int) ((this.f2840se.f2855ss - j) / currentTimeMillis2);
                                    if (this.f2840se.f2857su == 0) {
                                        this.f2840se.f2857su = i3;
                                    } else {
                                        this.f2840se.f2857su = (this.f2840se.f2857su + this.f2840se.f2857su) / 2;
                                    }
                                    if (i3 < 33) {
                                        if (bArr2.length != (f2839sk[0] << 10)) {
                                            bArr2 = new byte[f2839sk[0] << 10];
                                        }
                                    } else if (i3 < 65) {
                                        if (bArr2.length != (f2839sk[1] << 10)) {
                                            bArr2 = new byte[f2839sk[1] << 10];
                                        }
                                    } else if (bArr2.length != (f2839sk[2] << 10)) {
                                        bArr2 = new byte[f2839sk[2] << 10];
                                    }
                                    i = i2;
                                } else {
                                    i = i2;
                                }
                            }
                        } catch (C0390ar e) {
                            throw e;
                        }
                    } catch (Exception e2) {
                        throw new C0390ar(-2, "unbreakable download IOException: " + e2.getMessage());
                    }
                } catch (UnsupportedEncodingException e3) {
                    throw new C0390ar(-59, "unbreakable download unsupported encoding: " + e3.getMessage());
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream2.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            throw new C0390ar(-7056, "unbreakable download IOException: " + e5.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f7, code lost:
        r6 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ff, code lost:
        if (r17.f2843sh == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x010f, code lost:
        if (r17.f2840se.f2854sr <= r17.f2840se.f2855ss) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0111, code lost:
        r3 = r4.read(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0116, code lost:
        if (r3 != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0118, code lost:
        r6 = java.lang.System.currentTimeMillis() - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0122, code lost:
        if (r6 > 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0124, code lost:
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0126, code lost:
        r3 = (int) ((r17.f2840se.f2855ss - r8) / r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0137, code lost:
        if (r17.f2840se.f2857su != 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0139, code lost:
        r17.f2840se.f2857su = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0141, code lost:
        if (r3 >= 33) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0143, code lost:
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x014c, code lost:
        if (r2.length == (com.kingroot.kinguser.C3191ip.f2839sk[0] << 10)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x014e, code lost:
        r2 = new byte[com.kingroot.kinguser.C3191ip.f2839sk[0] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0157, code lost:
        r6 = false;
        r16 = r3;
        r3 = r4;
        r4 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0163, code lost:
        if (r17.f2843sh == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0165, code lost:
        r18.write(r2, 0, r3);
        r18.flush();
        r17.f2840se.f2855ss += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0186, code lost:
        if (r17.f2840se.f2854sr != r17.f2840se.f2855ss) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0188, code lost:
        r17.f2840se.f2856st = 1.0f;
        m3490O(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a4, code lost:
        if (r17.f2840se.f2854sr <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01a6, code lost:
        r17.f2840se.f2856st = ((float) r17.f2840se.f2855ss) / ((float) r17.f2840se.f2854sr);
        m3490O(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01e3, code lost:
        r17.f2840se.f2857su = (r17.f2840se.f2857su + r17.f2840se.f2857su) / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x021c, code lost:
        if (r3 >= 65) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x021e, code lost:
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0227, code lost:
        if (r2.length == (com.kingroot.kinguser.C3191ip.f2839sk[1] << 10)) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0229, code lost:
        r2 = new byte[com.kingroot.kinguser.C3191ip.f2839sk[1] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0234, code lost:
        r3 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x023d, code lost:
        if (r2.length == (com.kingroot.kinguser.C3191ip.f2839sk[2] << 10)) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x023f, code lost:
        r2 = new byte[com.kingroot.kinguser.C3191ip.f2839sk[2] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x024c, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x024f, code lost:
        return;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3485b(FileOutputStream fileOutputStream) {
        InputStream inputStream = null;
        try {
            try {
                boolean z = true;
                byte[] bArr = new byte[f2839sk[1] << 10];
                InputStream inputStream2 = null;
                int i = 1;
                while (this.f2843sh && this.f2840se.f2854sr > 0 && this.f2840se.f2854sr > this.f2840se.f2855ss) {
                    try {
                        long j = this.f2840se.f2855ss;
                        long j2 = ((i * this.f2842sg) + j) - 1;
                        if (j2 >= this.f2840se.f2854sr) {
                            j2 = this.f2840se.f2854sr - 1;
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("bytes=").append(j).append('-').append(j2);
                        synchronized (this.f2845sj) {
                            try {
                                if (this.f2844si == null) {
                                    this.f2844si = C3236ka.m3315e(this.mContext, this.f2840se.f2849ra);
                                    this.f2844si.setRequestProperty("Range", stringBuffer.toString());
                                    this.f2844si.m3327I();
                                } else if (!z) {
                                    C3236ka m3325a = C3236ka.m3325a(this.mContext, this.f2844si);
                                    this.f2844si.close();
                                    this.f2844si = m3325a;
                                    this.f2844si.setRequestProperty("Range", stringBuffer.toString());
                                    this.f2844si.m3327I();
                                }
                                if (this.f2844si.getResponseCode() != 206) {
                                    throw new IOException("response code is not 206 error.");
                                }
                                InputStream inputStream3 = this.f2844si.getInputStream();
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
                    } catch (C0390ar e) {
                        e = e;
                        throw e;
                    } catch (UnsupportedEncodingException e2) {
                        e = e2;
                        throw new C0390ar(-59, "unbreakable download unsupported encoding: " + e.getMessage());
                    } catch (IOException e3) {
                        e = e3;
                        throw new C0390ar(-7056, "unbreakable download IOException: " + e.getMessage());
                    } catch (Exception e4) {
                        e = e4;
                        throw new C0390ar(-2, "unbreakable download IOException: " + e.getMessage());
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            try {
                                inputStream.close();
                            } catch (Exception e5) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (C0390ar e6) {
            e = e6;
        } catch (UnsupportedEncodingException e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
        }
    }

    /* renamed from: ce */
    public void m3482ce() {
        this.f2843sh = false;
        m3083eA();
        synchronized (this.f2845sj) {
            if (this.f2844si != null) {
                try {
                    this.f2844si.close();
                    this.f2844si = null;
                } catch (Exception e) {
                }
            }
        }
    }
}
