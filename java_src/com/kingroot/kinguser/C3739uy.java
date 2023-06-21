package com.kingroot.kinguser;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.InflaterInputStream;
import org.apache.http.client.ClientProtocolException;
/* renamed from: com.kingroot.kinguser.uy */
/* loaded from: classes.dex */
public final class C3739uy {

    /* renamed from: Jw */
    private HttpURLConnection f3678Jw;

    /* renamed from: Jx */
    private byte[] f3679Jx;
    private Context mContext;

    /* renamed from: ra */
    private String f3682ra;

    /* renamed from: Jv */
    private String f3677Jv = "GET";

    /* renamed from: Jy */
    private int f3680Jy = -1;

    /* renamed from: Jz */
    private Hashtable<String, String> f3681Jz = new Hashtable<>(0);

    /* renamed from: JA */
    private boolean f3673JA = false;

    /* renamed from: JB */
    private boolean f3674JB = true;

    /* renamed from: JC */
    private byte f3675JC = 0;

    /* renamed from: JD */
    private byte f3676JD = 0;

    private C3739uy(Context context, String str) {
        this.mContext = context;
        this.f3682ra = str;
    }

    /* renamed from: k */
    public static synchronized C3739uy m1934k(Context context, String str) {
        C3739uy c3739uy;
        synchronized (C3739uy.class) {
            byte m1921O = C3748vb.m1921O(context);
            if (-1 == m1921O) {
                throw new C3747va(-1052, "no connecition!");
            }
            c3739uy = new C3739uy(context, str);
            try {
                c3739uy.m1939b(new URL(c3739uy.f3682ra), m1921O);
            } catch (MalformedURLException e) {
                throw new C3747va(-1053, "malformed url: " + str + " " + e.getMessage());
            }
        }
        return c3739uy;
    }

    /* renamed from: a */
    public static synchronized C3739uy m1940a(Context context, C3739uy c3739uy) {
        C3739uy c3739uy2;
        byte b = 2;
        synchronized (C3739uy.class) {
            byte m1921O = C3748vb.m1921O(context);
            c3739uy2 = new C3739uy(context, c3739uy.m1929lc());
            if (-1 == m1921O) {
                throw new C3747va(-1052, "no connection!");
            }
            try {
                if (!c3739uy.f3673JA || m1921O == 2) {
                    b = (c3739uy.f3673JA || m1921O != 2) ? m1921O : (byte) 1;
                }
                c3739uy2.m1939b(new URL(c3739uy2.f3682ra), b);
                c3739uy2.setRequestMethod(c3739uy.getRequestMethod());
                c3739uy2.m1927z(c3739uy.m1933kY());
                c3739uy2.m1937c(c3739uy.m1928ld());
            } catch (MalformedURLException e) {
                throw new C3747va(-1053, "invalide url: " + c3739uy2.f3682ra + " " + e.getMessage());
            }
        }
        return c3739uy2;
    }

    /* renamed from: b */
    private void m1939b(URL url, byte b) {
        if (-1 != b) {
            try {
                if (2 == b) {
                    this.f3678Jw = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(C3748vb.m1920P(this.mContext), C3748vb.m1919Q(this.mContext))));
                    this.f3673JA = true;
                } else {
                    this.f3678Jw = (HttpURLConnection) url.openConnection();
                    this.f3673JA = false;
                }
                this.f3678Jw.setReadTimeout(30000);
                this.f3678Jw.setConnectTimeout(30000);
            } catch (IOException e) {
                throw new C3747va(-1056, "IOException : " + e.getMessage());
            } catch (IllegalArgumentException e2) {
                throw new C3747va(-1057, "arg error: " + e2.getMessage());
            } catch (SecurityException e3) {
                throw new C3747va(-1058, "security error: " + e3.getMessage());
            } catch (UnsupportedOperationException e4) {
                throw new C3747va(-1059, "unsupported operation error: " + e4.getMessage());
            }
        }
    }

    public void setRequestProperty(String str, String str2) {
        if (str != null && str2 != null && this.f3678Jw != null) {
            this.f3678Jw.setRequestProperty(str, str2);
            this.f3681Jz.put(str, str2);
        }
    }

    /* renamed from: c */
    public void m1937c(Hashtable<String, String> hashtable) {
        if (this.f3678Jw != null && hashtable != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: d */
    public void m1936d(Hashtable<String, String> hashtable) {
        if (hashtable != null && hashtable.size() != 0 && this.f3678Jw != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                this.f3678Jw.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    public void setRequestMethod(String str) {
        this.f3677Jv = str;
        if ("GET".equalsIgnoreCase(str)) {
            this.f3677Jv = "GET";
        } else if ("POST".equalsIgnoreCase(str)) {
            this.f3677Jv = "POST";
        }
    }

    public String getRequestMethod() {
        return this.f3677Jv;
    }

    /* renamed from: z */
    public void m1927z(byte[] bArr) {
        this.f3679Jx = bArr;
    }

    /* renamed from: kY */
    public byte[] m1933kY() {
        return this.f3679Jx;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* renamed from: kZ */
    public int m1932kZ() {
        int i;
        int i2;
        try {
            this.f3678Jw.setRequestProperty("Cookie", "");
            this.f3678Jw.setRequestProperty("Accept", "*/*");
            this.f3678Jw.setRequestProperty("Accept-Charset", "utf-8");
            this.f3678Jw.setRequestProperty("Content-Type", "application/octet-stream");
            this.f3678Jw.setInstanceFollowRedirects(true);
            System.setProperty("http.keepAlive", "false");
            i = this.f3677Jv;
            try {
                if ("GET".equalsIgnoreCase(i)) {
                    i2 = -3000;
                    this.f3678Jw.setRequestMethod("GET");
                } else {
                    i2 = -2000;
                    this.f3678Jw.setRequestMethod("POST");
                    this.f3678Jw.setDoOutput(true);
                    this.f3678Jw.setDoInput(true);
                    this.f3678Jw.setUseCaches(false);
                    if (this.f3679Jx != null) {
                        this.f3678Jw.setRequestProperty("Content-length", "" + this.f3679Jx.length);
                        OutputStream outputStream = this.f3678Jw.getOutputStream();
                        outputStream.write(this.f3679Jx);
                        outputStream.flush();
                        outputStream.close();
                    }
                }
                this.f3680Jy = this.f3678Jw.getResponseCode();
                if (this.f3680Jy >= 301 && this.f3680Jy <= 305) {
                    byte b = this.f3675JC;
                    this.f3675JC = (byte) (b + 1);
                    if (b < 2) {
                        this.f3682ra = m1930lb();
                        this.f3678Jw.disconnect();
                        m1939b(new URL(this.f3682ra), C3748vb.m1921O(this.mContext));
                        setRequestMethod(this.f3677Jv);
                        if ("POST".equalsIgnoreCase(this.f3677Jv) && this.f3679Jx != null) {
                            m1927z(this.f3679Jx);
                        }
                        m1936d(this.f3681Jz);
                        return m1932kZ();
                    }
                } else if (this.f3680Jy == 200) {
                    String contentType = getContentType();
                    if (2 == C3748vb.m1921O(this.mContext) && contentType != null && contentType.toLowerCase().indexOf("vnd.wap.wml") != -1) {
                        byte b2 = this.f3676JD;
                        this.f3676JD = (byte) (b2 + 1);
                        if (b2 < 1) {
                            this.f3678Jw.disconnect();
                            m1939b(new URL(this.f3682ra), C3748vb.m1921O(this.mContext));
                            setRequestMethod(this.f3677Jv);
                            if ("POST".equalsIgnoreCase(this.f3677Jv) && this.f3679Jx != null) {
                                m1927z(this.f3679Jx);
                            }
                            m1936d(this.f3681Jz);
                            return m1932kZ();
                        }
                    }
                }
                if (this.f3680Jy != 206 && this.f3680Jy != 200) {
                    throw new C3747va(this.f3680Jy + i2, "response code is unnormal: " + this.f3680Jy);
                }
                return this.f3680Jy;
            } catch (ProtocolException e) {
                e = e;
                throw new C3747va(i - 51, "sendRequest ProtocolException: " + e.getMessage());
            } catch (ClientProtocolException e2) {
                e = e2;
                throw new C3747va(i - 51, "sendRequest ClientProtocolException: " + e.getMessage());
            } catch (C3747va e3) {
                e = e3;
                throw new C3747va(i - 56, "sendRequest NetWorkException: " + e.getMessage());
            } catch (IllegalAccessError e4) {
                e = e4;
                throw new C3747va(i - 60, "sendRequest IllegalAccessError: " + e.getMessage());
            } catch (IllegalStateException e5) {
                e = e5;
                throw new C3747va(i - 61, "sendRequest IllegalStateException: " + e.getMessage());
            } catch (SocketException e6) {
                e = e6;
                throw new C3747va(i - 54, "sendRequest SocketException: " + e.getMessage());
            } catch (SocketTimeoutException e7) {
                e = e7;
                throw new C3747va(i - 55, "sendRequest SocketTimeoutException: " + e.getMessage());
            } catch (UnknownHostException e8) {
                e = e8;
                if (this.f3674JB) {
                    this.f3674JB = false;
                    this.f3678Jw.disconnect();
                    try {
                        if (2 == C3748vb.m1921O(this.mContext) && this.f3673JA) {
                            m1939b(new URL(this.f3682ra), (byte) 1);
                        } else if (2 != C3748vb.m1921O(this.mContext) && !this.f3673JA) {
                            m1939b(new URL(this.f3682ra), (byte) 2);
                        }
                        setRequestMethod(this.f3677Jv);
                        if ("POST".equalsIgnoreCase(this.f3677Jv) && this.f3679Jx != null) {
                            m1927z(this.f3679Jx);
                        }
                        m1936d(this.f3681Jz);
                        return m1932kZ();
                    } catch (MalformedURLException e9) {
                        throw new C3747va(i - 53, "malformed url: " + this.f3682ra + " " + e.getMessage());
                    }
                }
                throw new C3747va(i - 62, "sendRequest UnknownHostException: " + e.getMessage());
            } catch (Exception e10) {
                e = e10;
                throw new C3747va(i, "sendRequest Exception: " + e.getMessage());
            }
        } catch (C3747va e11) {
            e = e11;
            i = 0;
        } catch (IllegalAccessError e12) {
            e = e12;
            i = 0;
        } catch (IllegalStateException e13) {
            e = e13;
            i = 0;
        } catch (ProtocolException e14) {
            e = e14;
            i = 0;
        } catch (SocketException e15) {
            e = e15;
            i = 0;
        } catch (SocketTimeoutException e16) {
            e = e16;
            i = 0;
        } catch (UnknownHostException e17) {
            e = e17;
            i = 0;
        } catch (Exception e18) {
            e = e18;
            i = 0;
        } catch (ClientProtocolException e19) {
            e = e19;
            i = 0;
        }
    }

    /* renamed from: b */
    public int m1938b(boolean z, AtomicReference<byte[]> atomicReference) {
        if (this.f3678Jw == null || !isConnected()) {
            return -4000;
        }
        try {
            atomicReference.set(m1935g(z ? new InflaterInputStream(this.f3678Jw.getInputStream()) : this.f3678Jw.getInputStream()));
            return 0;
        } catch (Exception e) {
            throw new C3747va(-4002, "get response exception : " + e.getMessage());
        }
    }

    /* renamed from: g */
    private static byte[] m1935g(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        byte[] bArr = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                try {
                    int read = inputStream.read(bArr);
                    if (read != -1) {
                        byteArrayOutputStream.write(bArr, 0, read);
                    } else {
                        return byteArrayOutputStream.toByteArray();
                    }
                } catch (IOException e) {
                    throw new C3747va(-56, "get Bytes from inputStream when read buffer: " + e.getMessage());
                }
            } finally {
                C3945za.m1340c(bufferedInputStream);
                C3945za.m1340c(byteArrayOutputStream);
            }
        }
    }

    public InputStream getInputStream() {
        try {
            return this.f3678Jw.getInputStream();
        } catch (Exception e) {
            throw new C3747va(-56, "get inputStream: " + e.getMessage());
        }
    }

    private boolean isConnected() {
        return this.f3680Jy == 200 || this.f3680Jy == 206;
    }

    public int getResponseCode() {
        return this.f3680Jy;
    }

    public void close() {
        if (this.f3678Jw != null) {
            this.f3678Jw.disconnect();
            this.f3678Jw = null;
        }
    }

    public long getDate() {
        if (this.f3678Jw != null) {
            return this.f3678Jw.getDate();
        }
        return -1L;
    }

    public String getHeaderField(String str) {
        try {
            return this.f3678Jw.getHeaderField(str);
        } catch (Exception e) {
            throw new C3747va(-56, "get header field: " + e.getMessage());
        }
    }

    /* renamed from: la */
    public long m1931la() {
        String headerField = getHeaderField("Content-Range");
        if (headerField == null) {
            return -1L;
        }
        try {
            return Long.parseLong(headerField.substring(headerField.lastIndexOf(47) + 1).trim());
        } catch (Exception e) {
            throw new C3747va(-56, "get breakpoint total size: " + e.getMessage());
        }
    }

    public long getContentLength() {
        String headerField = getHeaderField("content-length");
        if (headerField == null) {
            return -1L;
        }
        try {
            return Long.parseLong(headerField.trim());
        } catch (Exception e) {
            throw new C3747va(-56, "get content length: " + e.getMessage());
        }
    }

    public String getContentType() {
        try {
            return this.f3678Jw.getHeaderField("Content-Type");
        } catch (Exception e) {
            throw new C3747va(-56, "get content type: " + e.getMessage());
        }
    }

    /* renamed from: lb */
    public String m1930lb() {
        try {
            return this.f3678Jw.getHeaderField("Location");
        } catch (Exception e) {
            throw new C3747va(-56, "get redirect url: " + e.getMessage());
        }
    }

    /* renamed from: lc */
    public String m1929lc() {
        return this.f3682ra;
    }

    /* renamed from: ld */
    private Hashtable<String, String> m1928ld() {
        return this.f3681Jz;
    }
}
