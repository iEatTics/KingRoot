package com.kingroot.kinguser;

import android.os.SystemClock;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import com.google.android.mms.ContentType;
import com.kingroot.loader.common.KlConst;
import java.io.IOException;
import java.io.InputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class boa implements boc {

    /* renamed from: a */
    protected String f1803a;
    public bog bFj;

    /* renamed from: f */
    private String f1807f;

    /* renamed from: e */
    private List f1806e = null;
    private C2539b bFe = new C2539b();

    /* renamed from: b */
    protected Map f1804b = null;

    /* renamed from: h */
    private int f1808h = 0;

    /* renamed from: i */
    private String f1809i = "";

    /* renamed from: j */
    private int f1810j = 4096;

    /* renamed from: c */
    public boolean f1805c = false;

    /* renamed from: k */
    private int f1811k = 8;

    /* renamed from: l */
    private String f1812l = "";
    private URL bFf = null;
    private HttpURLConnection bFg = null;
    private InputStream bFh = null;

    /* renamed from: p */
    private String f1813p = "";

    /* renamed from: q */
    private String f1814q = "";

    /* renamed from: r */
    private String f1815r = "";

    /* renamed from: s */
    private String f1816s = "";

    /* renamed from: t */
    private String f1817t = "";

    /* renamed from: u */
    private String f1818u = "";

    /* renamed from: v */
    private long f1819v = -1;
    private List bFi = null;

    /* renamed from: x */
    private long f1820x = -1;
    private volatile boolean bFk = false;

    /* renamed from: z */
    private boolean f1821z = false;

    /* renamed from: com.kingroot.kinguser.boa$a */
    /* loaded from: classes.dex */
    public static class C2538a {

        /* renamed from: a */
        public long f1822a;

        /* renamed from: b */
        public long f1823b;

        public C2538a(long j, long j2) {
            this.f1822a = 0L;
            this.f1823b = 0L;
            this.f1822a = j;
            this.f1823b = j2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C2538a) {
                C2538a c2538a = (C2538a) obj;
                if (this.f1822a == c2538a.f1822a && this.f1823b == c2538a.f1823b) {
                    return true;
                }
            }
            return false;
        }

        public final String toString() {
            return "[" + this.f1822a + "," + this.f1823b + "]";
        }
    }

    /* renamed from: com.kingroot.kinguser.boa$b */
    /* loaded from: classes.dex */
    public static class C2539b {
        private List bFl = new ArrayList();

        /* renamed from: a */
        public final int m6096a() {
            return this.bFl.size();
        }

        /* renamed from: a */
        public final void m6095a(C2538a c2538a) {
            boolean z;
            Iterator it = this.bFl.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                } else if (((C2538a) it.next()).equals(c2538a)) {
                    z = true;
                    break;
                }
            }
            if (z) {
                return;
            }
            this.bFl.add(c2538a);
        }

        public final C2538a agy() {
            if (this.bFl.size() == 0) {
                return null;
            }
            return (C2538a) this.bFl.get(0);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("bytes=");
            for (C2538a c2538a : this.bFl) {
                sb.append(c2538a.f1822a);
                sb.append(KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR);
                if (c2538a.f1823b != -1) {
                    sb.append(c2538a.f1823b);
                }
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            return sb.toString();
        }
    }

    /* renamed from: a */
    private void m6117a(String str) {
        int length;
        int indexOf;
        String headerField = this.bFg != null ? this.bFg.getHeaderField("X-Extra-Servers") : "";
        if (TextUtils.isEmpty(headerField)) {
            return;
        }
        try {
            if ("http".equals(new URL(str).getProtocol()) && str.startsWith("http://") && (indexOf = str.indexOf("/", (length = "http://".length()))) != -1) {
                str.substring(length, indexOf);
                String substring = str.substring(indexOf);
                String[] split = headerField.split(";");
                if (split == null || split.length <= 0) {
                    return;
                }
                this.bFi = new ArrayList();
                int length2 = split.length;
                for (int i = 0; i < length2; i++) {
                    this.bFi.add("http://" + split[i] + substring);
                }
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: as */
    private void m6115as() {
        boolean z;
        if (this.bFe.bFl.size() > 0) {
            this.bFg.addRequestProperty("Range", this.bFe.toString());
        }
        boolean z2 = false;
        if (this.f1804b != null) {
            Iterator it = this.f1804b.keySet().iterator();
            while (true) {
                z = z2;
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                this.bFg.addRequestProperty(str, (String) this.f1804b.get(str));
                z2 = "User-Agent".equalsIgnoreCase(str) ? true : z;
            }
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        this.bFg.addRequestProperty("User-Agent", "HalleyService/2.0");
    }

    /* renamed from: b */
    private static long m6113b(String str) {
        String[] split;
        if (!TextUtils.isEmpty(str) && (split = str.split("/")) != null && split.length == 2) {
            try {
                return Long.valueOf(split[1]).longValue();
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return -1L;
    }

    /* renamed from: i */
    private void m6104i(Throwable th) {
        th.printStackTrace();
        this.f1809i = th.getClass().getName() + "|" + th;
        if (this.bFk) {
            this.f1808h = -66;
        } else if (!boe.m6087g()) {
            this.f1808h = -15;
        } else if (boh.m6078h("info.3g.qq.com", 80, 5000)) {
            this.f1808h = m6102j(th);
        } else {
            this.f1808h = -16;
        }
    }

    /* renamed from: j */
    private static int m6102j(Throwable th) {
        try {
            if (th.getMessage().contains("Permission")) {
                return -71;
            }
        } catch (Throwable th2) {
        }
        if (th instanceof Exception) {
            if (th != null) {
                if (th instanceof SocketTimeoutException) {
                    return -25;
                }
                if (th instanceof UnknownHostException) {
                    return -29;
                }
                if (th instanceof ConnectException) {
                    return -24;
                }
                if (th instanceof SocketException) {
                    return -26;
                }
                return th instanceof IOException ? -27 : -48;
            }
            return -48;
        }
        return -70;
    }

    /* renamed from: mM */
    private static long m6098mM(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Long.valueOf(str).longValue();
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return -1L;
    }

    /* renamed from: a */
    public final int m6120a() {
        return this.f1808h;
    }

    /* renamed from: a */
    public final String m6116a(boolean z) {
        if (this.f1806e == null || this.f1806e.size() == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = this.f1806e.size() - 1;
        for (int i = 0; i < size; i++) {
            sb.append(bok.m6072J((String) this.f1806e.get(i), false)).append(KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public final void m6119a(C2538a c2538a) {
        this.bFe.m6095a(c2538a);
    }

    /* renamed from: a */
    public final void m6118a(bob bobVar) {
        long j;
        long j2 = 0;
        long j3 = 0;
        try {
            this.bFh = this.bFg.getInputStream();
            C2538a agy = this.bFe.agy();
            if (agy == null) {
                j = this.f1819v;
            } else {
                j = agy.f1823b == -1 ? this.f1819v : agy.f1823b - agy.f1822a;
            }
            byte[] bArr = new byte[this.f1810j];
            long j4 = 0;
            boolean z = true;
            boolean z2 = true;
            while (j4 < j) {
                if (this.bFj.mo5951a()) {
                    m6111cC();
                    this.f1820x = Math.max(this.f1820x, j3 - j2);
                    return;
                } else if (!z2) {
                    m6111cC();
                    this.f1820x = Math.max(this.f1820x, j3 - j2);
                    return;
                } else {
                    int min = (int) Math.min(this.f1810j, j - j4);
                    if (j4 == 0) {
                        j2 = SystemClock.elapsedRealtime();
                    }
                    int read = this.bFh.read(bArr, 0, min);
                    if (j4 == 0) {
                        j3 = SystemClock.elapsedRealtime();
                    }
                    if (read == -1) {
                        this.f1808h = -62;
                        this.f1809i = "readLen:" + j4 + ",dataLen:" + j;
                        m6111cC();
                        this.f1820x = Math.max(this.f1820x, j3 - j2);
                        return;
                    }
                    if (bobVar != null) {
                        if (!this.bFj.mo5951a()) {
                            z2 = bobVar.mo6005b(bArr, read, z);
                        }
                        if (z) {
                            z = false;
                        }
                    }
                    j4 += read;
                }
            }
            m6111cC();
            this.f1820x = Math.max(this.f1820x, j3 - j2);
        } catch (Throwable th) {
            long j5 = j3;
            try {
                m6104i(th);
                if (j2 != 0 && j5 == 0) {
                    j5 = SystemClock.elapsedRealtime();
                }
                m6111cC();
                this.f1820x = Math.max(this.f1820x, j5 - j2);
            } catch (Throwable th2) {
                m6111cC();
                this.f1820x = Math.max(this.f1820x, j5 - j2);
                throw th2;
            }
        }
    }

    public final List agv() {
        return this.bFi;
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00e7 A[Catch: Throwable -> 0x00f0, TRY_LEAVE, TryCatch #1 {Throwable -> 0x00f0, blocks: (B:17:0x0066, B:18:0x006f, B:19:0x0072, B:34:0x00b6, B:36:0x00c8, B:38:0x00d4, B:40:0x00dc, B:44:0x00e7, B:49:0x00f7, B:53:0x0116, B:55:0x011e, B:57:0x012c, B:66:0x0182, B:59:0x0147, B:60:0x014d, B:62:0x0155, B:64:0x0163, B:65:0x017c, B:67:0x01a2, B:69:0x01b0, B:70:0x01c7, B:72:0x01cd, B:73:0x01d4, B:74:0x01e4, B:76:0x01ea, B:78:0x01ee, B:82:0x01f9, B:84:0x0201), top: B:95:0x0066 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f7 A[Catch: Throwable -> 0x00f0, TRY_ENTER, TryCatch #1 {Throwable -> 0x00f0, blocks: (B:17:0x0066, B:18:0x006f, B:19:0x0072, B:34:0x00b6, B:36:0x00c8, B:38:0x00d4, B:40:0x00dc, B:44:0x00e7, B:49:0x00f7, B:53:0x0116, B:55:0x011e, B:57:0x012c, B:66:0x0182, B:59:0x0147, B:60:0x014d, B:62:0x0155, B:64:0x0163, B:65:0x017c, B:67:0x01a2, B:69:0x01b0, B:70:0x01c7, B:72:0x01cd, B:73:0x01d4, B:74:0x01e4, B:76:0x01ea, B:78:0x01ee, B:82:0x01f9, B:84:0x0201), top: B:95:0x0066 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void agw() {
        boolean z;
        if (TextUtils.isEmpty(this.f1807f)) {
            this.f1807f = this.f1803a;
        }
        m6111cC();
        for (int i = 0; i < this.f1811k; i++) {
            if (this.bFj.mo5951a()) {
                return;
            }
            this.f1808h = 0;
            this.f1809i = "";
            try {
                this.bFf = new URL(this.f1807f);
                Proxy agz = boe.agz();
                if (agz != null) {
                    try {
                        this.bFg = (HttpURLConnection) this.bFf.openConnection(agz);
                    } catch (IOException e) {
                        m6104i(e);
                        e.printStackTrace();
                    }
                } else {
                    this.bFg = (HttpURLConnection) this.bFf.openConnection();
                }
                this.bFg.setConnectTimeout(bnz.m6133a());
                this.bFg.setReadTimeout(bnz.m6132b());
                this.bFg.setUseCaches(false);
                this.bFg.setDoInput(true);
                this.bFg.setInstanceFollowRedirects(false);
                m6115as();
                try {
                    int responseCode = this.bFg.getResponseCode();
                    this.f1821z = true;
                    switch (responseCode) {
                        case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                        case 206:
                            this.f1813p = this.bFg.getHeaderField("Content-Type");
                            String str = this.f1813p;
                            if (!TextUtils.isEmpty(str)) {
                                String lowerCase = str.toLowerCase();
                                if (lowerCase.startsWith(ContentType.TEXT_HTML) || lowerCase.startsWith("text/vnd.wap.wml") || lowerCase.startsWith("text/webviewhtml")) {
                                    z = true;
                                    if (z) {
                                        this.f1814q = this.bFg.getHeaderField("Content-Range");
                                        this.f1815r = this.bFg.getHeaderField("Content-Length");
                                        if (this.bFe.m6096a() > 0) {
                                            if (TextUtils.isEmpty(this.f1814q)) {
                                                this.f1808h = -53;
                                                break;
                                            } else {
                                                this.f1819v = m6113b(this.f1814q);
                                                if (this.f1819v == -1) {
                                                    this.f1808h = -54;
                                                    this.f1809i = "content-range header:" + this.f1814q;
                                                    break;
                                                }
                                            }
                                        } else if (TextUtils.isEmpty(this.f1815r)) {
                                            this.f1808h = -55;
                                            break;
                                        } else {
                                            this.f1819v = m6098mM(this.f1815r);
                                            if (this.f1819v == -1) {
                                                this.f1808h = -56;
                                                this.f1809i = "content-range header:" + this.f1815r;
                                                break;
                                            }
                                        }
                                        this.f1817t = this.bFg.getHeaderField("etag");
                                        this.f1818u = this.bFg.getHeaderField("Last-Modified");
                                        this.f1816s = this.bFg.getHeaderField("Content-Disposition");
                                        break;
                                    } else {
                                        this.f1808h = -11;
                                        this.f1809i = this.f1807f;
                                        break;
                                    }
                                }
                            }
                            z = false;
                            if (z) {
                            }
                            break;
                        case 301:
                        case 302:
                        case 303:
                        case 307:
                            String headerField = this.bFg.getHeaderField("location");
                            if (TextUtils.isEmpty(headerField)) {
                                this.f1808h = -58;
                                this.f1809i = "location:" + headerField;
                                break;
                            } else {
                                this.f1807f = headerField;
                                if (this.f1806e == null) {
                                    this.f1806e = new ArrayList();
                                }
                                this.f1806e.add(headerField);
                                this.f1807f = headerField;
                                m6117a(headerField);
                                this.f1808h = -57;
                                break;
                            }
                        case 413:
                        case 500:
                            if (boe.m6089e() && !this.f1805c) {
                                if (this.bFe.m6096a() > 0) {
                                    this.f1808h = -59;
                                    break;
                                }
                            }
                            this.f1808h = responseCode;
                            break;
                        default:
                            this.f1808h = responseCode;
                            break;
                    }
                } catch (Throwable th) {
                    m6104i(th);
                }
                int i2 = this.f1808h;
            } catch (MalformedURLException e2) {
                this.f1808h = -51;
                this.f1809i = e2.getMessage();
                e2.printStackTrace();
            }
            if (i == 0 && this.f1821z) {
                try {
                    this.f1812l = InetAddress.getByName(this.bFf.getHost()).getHostAddress();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            if (this.f1808h != -57) {
                if (i >= this.f1811k || this.f1808h != -57) {
                }
                this.f1808h = -1;
                return;
            }
        }
        if (i >= this.f1811k) {
        }
    }

    @Override // com.kingroot.kinguser.boc
    public final void agx() {
        this.bFk = true;
        if (this.bFg != null) {
            try {
                this.bFg.disconnect();
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: b */
    public final String m6114b() {
        return this.f1809i;
    }

    /* renamed from: c */
    public final long m6112c() {
        return this.f1819v;
    }

    /* renamed from: cC */
    public final void m6111cC() {
        if (this.bFg != null) {
            try {
                this.bFg.disconnect();
                this.bFh.close();
            } catch (Throwable th) {
            }
            this.bFg = null;
        }
        this.bFh = null;
    }

    /* renamed from: d */
    public final String m6110d() {
        return bok.m6072J(this.f1807f, false);
    }

    /* renamed from: e */
    public final String m6109e() {
        if (this.f1806e == null || this.f1806e.size() <= 0) {
            return null;
        }
        return (String) this.f1806e.get(this.f1806e.size() - 1);
    }

    /* renamed from: f */
    public final String m6108f() {
        String str = "";
        if (this.f1806e != null && this.f1806e.size() > 0) {
            str = (String) this.f1806e.get(this.f1806e.size() - 1);
        }
        return bok.m6072J(str, false);
    }

    /* renamed from: g */
    public final String m6107g() {
        return this.f1812l;
    }

    /* renamed from: h */
    public final String m6106h() {
        return this.f1813p;
    }

    /* renamed from: i */
    public final String m6105i() {
        return this.f1814q;
    }

    /* renamed from: j */
    public final String m6103j() {
        return this.f1815r;
    }

    /* renamed from: k */
    public final String m6101k() {
        return this.f1817t;
    }

    /* renamed from: l */
    public final String m6100l() {
        return this.f1818u;
    }

    /* renamed from: m */
    public final String m6099m() {
        return this.f1816s;
    }

    /* renamed from: o */
    public final boolean m6097o() {
        return this.bFe.m6096a() > 0;
    }
}
