package com.kingroot.kinguser;

import android.content.Context;
import com.google.android.mms.ContentType;
import com.kingroot.kinguser.caf;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes.dex */
public class cad<T extends caf> extends bzr {
    private static final short[] bWi = {8, 64, 128};

    /* renamed from: a */
    private Context f2201a;
    private T bWg;

    /* renamed from: c */
    private String f2202c;

    /* renamed from: d */
    private int f2203d = 307200;

    /* renamed from: e */
    private volatile boolean f2204e = false;
    private C3128gn bWh = null;

    /* renamed from: g */
    private final Object f2205g = new Object();
    private cah<T> bWj = null;

    /* renamed from: a */
    public void m5083a(int i) {
        if (this.f2204e) {
            switch (i) {
                case 0:
                    if (this.bWj != null) {
                        this.bWg.f2209d = 0;
                        this.bWj.mo5069e(this.bWg);
                        return;
                    }
                    return;
                case 1:
                    if (this.bWj != null) {
                        this.bWg.f2209d = 0;
                        this.bWj.mo5068f(this.bWg);
                        return;
                    }
                    return;
                case 2:
                    if (this.bWj != null) {
                        this.bWg.f2209d = 2;
                        this.bWj.mo5072a(this.bWg);
                        return;
                    }
                    return;
                case 3:
                    if (this.bWj != null) {
                        this.bWg.f2209d = 3;
                        this.bWj.mo5071b(this.bWg);
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    public cad(Context context, T t, String str) {
        this.f2201a = context;
        this.bWg = t;
        this.f2202c = str;
    }

    /* renamed from: a */
    public void m5081a(cah<T> cahVar) {
        this.bWj = cahVar;
    }

    @Override // com.kingroot.kinguser.bzr, java.lang.Runnable
    public void run() {
        C3139gw.m3648a(new cae(this), new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m5079b() {
        Throwable th;
        FileOutputStream fileOutputStream;
        bzz e;
        ?? r1 = 1;
        FileOutputStream fileOutputStream2 = null;
        this.f2204e = true;
        m5083a(0);
        try {
        } catch (Throwable th2) {
            r1 = fileOutputStream2;
            th = th2;
        }
        try {
            try {
                if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                    this.bWg.bVY = 1.0f;
                    m5083a(3);
                    if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                        m5083a(3);
                    }
                    synchronized (this.f2205g) {
                        if (this.bWh != null) {
                            this.bWh.m3676f();
                            this.bWh = null;
                        }
                    }
                    C3141gx.m3645a(null);
                    this.f2204e = false;
                    return;
                }
                if (this.bWg.f2212g == -1) {
                    m5076c();
                }
                fileOutputStream = new FileOutputStream(this.f2202c, true);
                try {
                    fileOutputStream.getChannel().position(this.bWg.f2213h);
                    if (this.bWg.f2208c) {
                        m5077b(fileOutputStream);
                    } else {
                        m5080a(fileOutputStream);
                    }
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                        m5083a(3);
                    }
                    synchronized (this.f2205g) {
                        if (this.bWh != null) {
                            this.bWh.m3676f();
                            this.bWh = null;
                        }
                    }
                    C3141gx.m3645a(fileOutputStream);
                    this.f2204e = false;
                } catch (bzz e2) {
                    e = e2;
                    m5078b(e.m5093a());
                    if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                        m5083a(3);
                    }
                    synchronized (this.f2205g) {
                        if (this.bWh != null) {
                            this.bWh.m3676f();
                            this.bWh = null;
                        }
                    }
                    C3141gx.m3645a(fileOutputStream);
                    this.f2204e = false;
                } catch (FileNotFoundException e3) {
                    fileOutputStream2 = fileOutputStream;
                    m5078b(-7001);
                    if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                        m5083a(3);
                    }
                    synchronized (this.f2205g) {
                        if (this.bWh != null) {
                            this.bWh.m3676f();
                            this.bWh = null;
                        }
                    }
                    C3141gx.m3645a(fileOutputStream2);
                    this.f2204e = false;
                } catch (IOException e4) {
                    fileOutputStream2 = fileOutputStream;
                    m5078b(-7056);
                    if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                        m5083a(3);
                    }
                    synchronized (this.f2205g) {
                        if (this.bWh != null) {
                            this.bWh.m3676f();
                            this.bWh = null;
                        }
                    }
                    C3141gx.m3645a(fileOutputStream2);
                    this.f2204e = false;
                } catch (Exception e5) {
                    fileOutputStream2 = fileOutputStream;
                    m5078b(-5006);
                    if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                        m5083a(3);
                    }
                    synchronized (this.f2205g) {
                        if (this.bWh != null) {
                            this.bWh.m3676f();
                            this.bWh = null;
                        }
                    }
                    C3141gx.m3645a(fileOutputStream2);
                    this.f2204e = false;
                }
            } catch (Throwable th3) {
                th = th3;
                if (this.bWg.f2213h == this.bWg.f2212g && this.bWg.f2213h > 0) {
                    m5083a(3);
                }
                synchronized (this.f2205g) {
                    if (this.bWh != null) {
                        this.bWh.m3676f();
                        this.bWh = null;
                    }
                }
                C3141gx.m3645a(r1);
                this.f2204e = false;
                throw th;
            }
        } catch (bzz e6) {
            fileOutputStream = null;
            e = e6;
        } catch (FileNotFoundException e7) {
        } catch (IOException e8) {
        } catch (Exception e9) {
        } catch (Throwable th4) {
            r1 = 0;
            th = th4;
            if (this.bWg.f2213h == this.bWg.f2212g) {
                m5083a(3);
            }
            synchronized (this.f2205g) {
            }
        }
    }

    /* renamed from: b */
    private void m5078b(int i) {
        if (this.f2204e) {
            this.bWg.f2215l = i;
            m5083a(2);
        }
    }

    /* renamed from: c */
    private void m5076c() {
        synchronized (this.f2205g) {
            this.bWh = C3128gn.m3678d(this.f2201a, this.bWg.f2207b);
            this.bWh.m3688a("Range", "bytes=0-" + (this.f2203d - 1));
            if (this.bWh.m3679c() != 206) {
                this.bWh.m3676f();
                this.bWh = C3128gn.m3678d(this.f2201a, this.bWg.f2207b);
                this.bWh.m3679c();
            }
            int m3677e = this.bWh.m3677e();
            if (m3677e == 206) {
                this.bWg.f2208c = true;
                this.bWg.f2212g = this.bWh.m3675g();
            } else if (m3677e == 200) {
                String m3681b = this.bWh.m3681b("Content-Type");
                if (this.bWg.f2206a == 1 && m3681b.contentEquals(ContentType.TEXT_HTML)) {
                    m5078b(-7008);
                    return;
                }
                this.bWg.f2208c = false;
                this.bWg.f2212g = this.bWh.m3674h();
            }
            if (this.bWg.f2212g <= 0) {
                m5078b(-7001);
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
    private void m5080a(FileOutputStream fileOutputStream) {
        InputStream m3684aC;
        InputStream inputStream = null;
        try {
            try {
                try {
                    try {
                        try {
                            byte[] bArr = new byte[bWi[1] << 10];
                            synchronized (this.f2205g) {
                                if (this.bWh == null) {
                                    this.bWh = C3128gn.m3678d(this.f2201a, this.bWg.f2207b);
                                    this.bWh.m3679c();
                                }
                                if (this.bWh.m3677e() != 200) {
                                    throw new bzz(this.bWh.m3677e() - 3000, "error: response code is not 200.");
                                }
                                m3684aC = this.bWh.m3684aC();
                            }
                            long currentTimeMillis = System.currentTimeMillis();
                            long j = this.bWg.f2213h;
                            byte[] bArr2 = bArr;
                            int i = 0;
                            while (true) {
                                if (!this.f2204e || this.bWg.f2212g <= 0 || this.bWg.f2212g <= this.bWg.f2213h) {
                                    break;
                                }
                                int read = m3684aC.read(bArr2);
                                if (read == -1 || !this.f2204e) {
                                    break;
                                }
                                fileOutputStream.write(bArr2, 0, read);
                                fileOutputStream.flush();
                                this.bWg.f2213h += read;
                                int i2 = i + read;
                                if (this.bWg.f2212g == this.bWg.f2213h) {
                                    this.bWg.bVY = 1.0f;
                                    m5083a(1);
                                    break;
                                }
                                if (this.bWg.f2212g > 0) {
                                    this.bWg.bVY = ((float) this.bWg.f2213h) / ((float) this.bWg.f2212g);
                                    m5083a(1);
                                }
                                if (i2 > this.f2203d) {
                                    long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                                    if (currentTimeMillis2 <= 0) {
                                        currentTimeMillis2 = 1;
                                    }
                                    int i3 = (int) ((this.bWg.f2213h - j) / currentTimeMillis2);
                                    if (this.bWg.f2214j == 0) {
                                        this.bWg.f2214j = i3;
                                    } else {
                                        this.bWg.f2214j = (this.bWg.f2214j + this.bWg.f2214j) / 2;
                                    }
                                    if (i3 < 33) {
                                        if (bArr2.length != (bWi[0] << 10)) {
                                            bArr2 = new byte[bWi[0] << 10];
                                        }
                                    } else if (i3 < 65) {
                                        if (bArr2.length != (bWi[1] << 10)) {
                                            bArr2 = new byte[bWi[1] << 10];
                                        }
                                    } else if (bArr2.length != (bWi[2] << 10)) {
                                        bArr2 = new byte[bWi[2] << 10];
                                    }
                                    i = i2;
                                } else {
                                    i = i2;
                                }
                            }
                        } catch (bzz e) {
                            throw e;
                        }
                    } catch (Exception e2) {
                        throw new bzz(-2, "unbreakable download IOException: " + e2.getMessage());
                    }
                } catch (UnsupportedEncodingException e3) {
                    throw new bzz(-59, "unbreakable download unsupported encoding: " + e3.getMessage());
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            throw new bzz(-7056, "unbreakable download IOException: " + e5.getMessage());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:136:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fb, code lost:
        r6 = java.lang.System.currentTimeMillis();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0103, code lost:
        if (r17.f2204e == false) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0113, code lost:
        if (r17.bWg.f2212g <= r17.bWg.f2213h) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0115, code lost:
        r3 = r4.read(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x011a, code lost:
        if (r3 != (-1)) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x011c, code lost:
        r6 = java.lang.System.currentTimeMillis() - r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0126, code lost:
        if (r6 > 0) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0128, code lost:
        r6 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012a, code lost:
        r3 = (int) ((r17.bWg.f2213h - r8) / r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x013b, code lost:
        if (r17.bWg.f2214j != 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x013d, code lost:
        r17.bWg.f2214j = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0145, code lost:
        if (r3 >= 33) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0147, code lost:
        r3 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0150, code lost:
        if (r2.length == (com.kingroot.kinguser.cad.bWi[0] << 10)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0152, code lost:
        r2 = new byte[com.kingroot.kinguser.cad.bWi[0] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015b, code lost:
        r6 = false;
        r16 = r3;
        r3 = r4;
        r4 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0167, code lost:
        if (r17.f2204e == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0169, code lost:
        r18.write(r2, 0, r3);
        r18.flush();
        r17.bWg.f2213h += r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x018a, code lost:
        if (r17.bWg.f2212g != r17.bWg.f2213h) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x018c, code lost:
        r17.bWg.bVY = 1.0f;
        m5083a(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01a8, code lost:
        if (r17.bWg.f2212g <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01aa, code lost:
        r17.bWg.bVY = ((float) r17.bWg.f2213h) / ((float) r17.bWg.f2212g);
        m5083a(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01e7, code lost:
        r17.bWg.f2214j = (r17.bWg.f2214j + r17.bWg.f2214j) / 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0220, code lost:
        if (r3 >= 65) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0222, code lost:
        r3 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x022b, code lost:
        if (r2.length == (com.kingroot.kinguser.cad.bWi[1] << 10)) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x022d, code lost:
        r2 = new byte[com.kingroot.kinguser.cad.bWi[1] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0238, code lost:
        r3 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0241, code lost:
        if (r2.length == (com.kingroot.kinguser.cad.bWi[2] << 10)) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0243, code lost:
        r2 = new byte[com.kingroot.kinguser.cad.bWi[2] << 10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0250, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0253, code lost:
        return;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m5077b(FileOutputStream fileOutputStream) {
        InputStream inputStream = null;
        try {
            try {
                boolean z = true;
                byte[] bArr = new byte[bWi[1] << 10];
                InputStream inputStream2 = null;
                int i = 1;
                while (this.f2204e && this.bWg.f2212g > 0 && this.bWg.f2212g > this.bWg.f2213h) {
                    try {
                        long j = this.bWg.f2213h;
                        long j2 = ((i * (1 * this.f2203d)) + j) - 1;
                        if (j2 >= this.bWg.f2212g) {
                            j2 = this.bWg.f2212g - 1;
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("bytes=").append(j).append('-').append(j2);
                        synchronized (this.f2205g) {
                            try {
                                if (this.bWh == null) {
                                    this.bWh = C3128gn.m3678d(this.f2201a, this.bWg.f2207b);
                                    this.bWh.m3688a("Range", stringBuffer.toString());
                                    this.bWh.m3679c();
                                } else if (!z) {
                                    C3128gn m3690a = C3128gn.m3690a(this.f2201a, this.bWh);
                                    this.bWh.m3676f();
                                    this.bWh = m3690a;
                                    this.bWh.m3688a("Range", stringBuffer.toString());
                                    this.bWh.m3679c();
                                }
                                if (this.bWh.m3677e() != 206) {
                                    throw new IOException("response code is not 206 error.");
                                }
                                InputStream m3684aC = this.bWh.m3684aC();
                                try {
                                } catch (Throwable th) {
                                    th = th;
                                    inputStream2 = m3684aC;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        throw th;
                    } catch (bzz e) {
                        e = e;
                        throw e;
                    } catch (UnsupportedEncodingException e2) {
                        e = e2;
                        throw new bzz(-59, "unbreakable download unsupported encoding: " + e.getMessage());
                    } catch (IOException e3) {
                        e = e3;
                        throw new bzz(-7056, "unbreakable download IOException: " + e.getMessage());
                    } catch (Exception e4) {
                        e = e4;
                        throw new bzz(-2, "unbreakable download IOException: " + e.getMessage());
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
        } catch (bzz e6) {
            e = e6;
        } catch (UnsupportedEncodingException e7) {
            e = e7;
        } catch (IOException e8) {
            e = e8;
        } catch (Exception e9) {
            e = e9;
        }
    }

    /* renamed from: a */
    public void m5084a() {
        this.f2204e = false;
        m5108nA();
        synchronized (this.f2205g) {
            if (this.bWh != null) {
                try {
                    this.bWh.m3676f();
                    this.bWh = null;
                } catch (Exception e) {
                }
            }
        }
    }
}
