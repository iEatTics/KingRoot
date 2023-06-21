package com.kingroot.kinguser;

import android.content.Context;
import com.king.uranus.C0390ar;
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
/* renamed from: com.kingroot.kinguser.ka */
/* loaded from: classes.dex */
public final class C3236ka {
    private Context mContext;

    /* renamed from: ra */
    private String f2926ra;

    /* renamed from: tx */
    private HttpURLConnection f2931tx;

    /* renamed from: ty */
    private byte[] f2932ty;

    /* renamed from: do */
    private String f2924do = "GET";

    /* renamed from: dr */
    private int f2925dr = -1;

    /* renamed from: tz */
    private Hashtable<String, String> f2933tz = new Hashtable<>(0);

    /* renamed from: tA */
    private boolean f2927tA = false;

    /* renamed from: tB */
    private boolean f2928tB = true;

    /* renamed from: tC */
    private byte f2929tC = 0;

    /* renamed from: tD */
    private byte f2930tD = 0;

    private C3236ka(Context context, String str) {
        this.mContext = context;
        this.f2926ra = str;
    }

    /* renamed from: e */
    public static synchronized C3236ka m3315e(Context context, String str) {
        C3236ka c3236ka;
        synchronized (C3236ka.class) {
            c3236ka = new C3236ka(context, str);
            byte m3311l = C3237kb.m3311l(context);
            if (-1 == m3311l) {
                throw new C0390ar(-1052, "no connecition!");
            }
            try {
                c3236ka.m3324a(new URL(c3236ka.f2926ra), m3311l);
            } catch (MalformedURLException e) {
                throw new C0390ar(-1053, "malformed url: " + str + " " + e.getMessage());
            }
        }
        return c3236ka;
    }

    /* renamed from: a */
    public static synchronized C3236ka m3325a(Context context, C3236ka c3236ka) {
        C3236ka c3236ka2;
        byte b = 2;
        synchronized (C3236ka.class) {
            byte m3311l = C3237kb.m3311l(context);
            c3236ka2 = new C3236ka(context, c3236ka.m3318cQ());
            if (-1 == m3311l) {
                throw new C0390ar(-1052, "no connection!");
            }
            try {
                if (!c3236ka.f2927tA || m3311l == 2) {
                    b = (c3236ka.f2927tA || m3311l != 2) ? m3311l : (byte) 1;
                }
                c3236ka2.m3324a(new URL(c3236ka2.f2926ra), b);
                c3236ka2.setRequestMethod(c3236ka.getRequestMethod());
                c3236ka2.m3314o(c3236ka.m3320cO());
                c3236ka2.m3323a(c3236ka.m3317cR());
            } catch (MalformedURLException e) {
                throw new C0390ar(-1053, "invalide url: " + c3236ka2.f2926ra + " " + e.getMessage());
            }
        }
        return c3236ka2;
    }

    /* renamed from: a */
    private void m3324a(URL url, byte b) {
        if (-1 != b) {
            try {
                if (2 == b) {
                    this.f2931tx = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(C3237kb.m3313b(this.mContext), C3237kb.m3310m(this.mContext))));
                    this.f2927tA = true;
                } else {
                    this.f2931tx = (HttpURLConnection) url.openConnection();
                    this.f2927tA = false;
                }
                this.f2931tx.setReadTimeout(30000);
                this.f2931tx.setConnectTimeout(30000);
            } catch (IOException e) {
                throw new C0390ar(-1056, "io : " + e.getMessage());
            } catch (IllegalArgumentException e2) {
                throw new C0390ar(-1057, "ae: " + e2.getMessage());
            } catch (SecurityException e3) {
                throw new C0390ar(-1058, "se: " + e3.getMessage());
            } catch (UnsupportedOperationException e4) {
                throw new C0390ar(-1059, "upe: " + e4.getMessage());
            }
        }
    }

    public void setRequestProperty(String str, String str2) {
        if (str != null && str2 != null && this.f2931tx != null) {
            this.f2931tx.setRequestProperty(str, str2);
            this.f2933tz.put(str, str2);
        }
    }

    /* renamed from: a */
    public void m3323a(Hashtable<String, String> hashtable) {
        if (this.f2931tx != null && hashtable != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: b */
    public void m3321b(Hashtable<String, String> hashtable) {
        if (hashtable != null && hashtable.size() != 0 && this.f2931tx != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                this.f2931tx.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    public void setRequestMethod(String str) {
        this.f2924do = str;
        if ("GET".equalsIgnoreCase(str)) {
            this.f2924do = "GET";
        } else if ("POST".equalsIgnoreCase(str)) {
            this.f2924do = "POST";
        }
    }

    public String getRequestMethod() {
        return this.f2924do;
    }

    /* renamed from: o */
    public void m3314o(byte[] bArr) {
        this.f2932ty = bArr;
    }

    /* renamed from: cO */
    public byte[] m3320cO() {
        return this.f2932ty;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v31, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* renamed from: I */
    public int m3327I() {
        int i;
        int i2;
        try {
            this.f2931tx.setRequestProperty("Cookie", "");
            this.f2931tx.setRequestProperty("Accept", "*/*");
            this.f2931tx.setRequestProperty("Accept-Charset", "utf-8");
            this.f2931tx.setRequestProperty("Content-Type", "application/octet-stream");
            this.f2931tx.setInstanceFollowRedirects(true);
            System.setProperty("http.keepAlive", "false");
            i = this.f2924do;
        } catch (C0390ar e) {
            e = e;
            i = 0;
        } catch (IllegalAccessError e2) {
            e = e2;
            i = 0;
        } catch (IllegalStateException e3) {
            e = e3;
            i = 0;
        } catch (ProtocolException e4) {
            e = e4;
            i = 0;
        } catch (SocketException e5) {
            e = e5;
            i = 0;
        } catch (SocketTimeoutException e6) {
            e = e6;
            i = 0;
        } catch (UnknownHostException e7) {
            e = e7;
            i = 0;
        } catch (Exception e8) {
            e = e8;
            i = 0;
        }
        try {
            if ("GET".equalsIgnoreCase(i)) {
                i2 = -3000;
                this.f2931tx.setRequestMethod("GET");
            } else {
                i2 = -2000;
                this.f2931tx.setRequestMethod("POST");
                this.f2931tx.setDoOutput(true);
                this.f2931tx.setDoInput(true);
                this.f2931tx.setUseCaches(false);
                if (this.f2932ty != null) {
                    this.f2931tx.setRequestProperty("Content-length", "" + this.f2932ty.length);
                    OutputStream outputStream = this.f2931tx.getOutputStream();
                    outputStream.write(this.f2932ty);
                    outputStream.flush();
                    outputStream.close();
                }
            }
            this.f2925dr = this.f2931tx.getResponseCode();
            if (this.f2925dr >= 301 && this.f2925dr <= 305) {
                byte b = this.f2929tC;
                this.f2929tC = (byte) (b + 1);
                if (b < 2) {
                    this.f2926ra = m3319cP();
                    this.f2931tx.disconnect();
                    m3324a(new URL(this.f2926ra), C3237kb.m3311l(this.mContext));
                    setRequestMethod(this.f2924do);
                    if ("POST".equalsIgnoreCase(this.f2924do) && this.f2932ty != null) {
                        m3314o(this.f2932ty);
                    }
                    m3321b(this.f2933tz);
                    return m3327I();
                }
            } else if (this.f2925dr == 200) {
                String contentType = getContentType();
                if (2 == C3237kb.m3311l(this.mContext) && contentType != null && contentType.toLowerCase().contains("vnd.wap.wml")) {
                    byte b2 = this.f2930tD;
                    this.f2930tD = (byte) (b2 + 1);
                    if (b2 < 1) {
                        this.f2931tx.disconnect();
                        m3324a(new URL(this.f2926ra), C3237kb.m3311l(this.mContext));
                        setRequestMethod(this.f2924do);
                        if ("POST".equalsIgnoreCase(this.f2924do) && this.f2932ty != null) {
                            m3314o(this.f2932ty);
                        }
                        m3321b(this.f2933tz);
                        return m3327I();
                    }
                }
            }
            if (this.f2925dr != 206 && this.f2925dr != 200) {
                throw new C0390ar(this.f2925dr + i2, "response code is unnormal: " + this.f2925dr);
            }
            return this.f2925dr;
        } catch (C0390ar e9) {
            e = e9;
            throw new C0390ar(i - 56, "sendRequest NetWorkException: " + e.getMessage());
        } catch (IllegalAccessError e10) {
            e = e10;
            throw new C0390ar(i - 60, "sendRequest IllegalAccessError: " + e.getMessage());
        } catch (IllegalStateException e11) {
            e = e11;
            throw new C0390ar(i - 61, "sendRequest IllegalStateException: " + e.getMessage());
        } catch (ProtocolException e12) {
            e = e12;
            throw new C0390ar(i - 51, "sendRequest ProtocolException: " + e.getMessage());
        } catch (SocketException e13) {
            e = e13;
            throw new C0390ar(i - 54, "sendRequest SocketException: " + e.getMessage());
        } catch (SocketTimeoutException e14) {
            e = e14;
            throw new C0390ar(i - 55, "sendRequest SocketTimeoutException: " + e.getMessage());
        } catch (UnknownHostException e15) {
            e = e15;
            if (this.f2928tB) {
                this.f2928tB = false;
                this.f2931tx.disconnect();
                try {
                    if (2 == C3237kb.m3311l(this.mContext) && this.f2927tA) {
                        m3324a(new URL(this.f2926ra), (byte) 1);
                    } else if (2 != C3237kb.m3311l(this.mContext) && !this.f2927tA) {
                        m3324a(new URL(this.f2926ra), (byte) 2);
                    }
                    setRequestMethod(this.f2924do);
                    if ("POST".equalsIgnoreCase(this.f2924do) && this.f2932ty != null) {
                        m3314o(this.f2932ty);
                    }
                    m3321b(this.f2933tz);
                    return m3327I();
                } catch (MalformedURLException e16) {
                    throw new C0390ar(i - 53, "malformed url: " + this.f2926ra + " " + e.getMessage());
                }
            }
            throw new C0390ar(i - 62, "sendRequest UnknownHostException: " + e.getMessage());
        } catch (Exception e17) {
            e = e17;
            throw new C0390ar(i, "sendRequest Exception: " + e.getMessage());
        }
    }

    /* renamed from: a */
    public int m3322a(boolean z, AtomicReference<byte[]> atomicReference) {
        if (this.f2931tx == null || !isConnected()) {
            return -4000;
        }
        try {
            atomicReference.set(m3316d(z ? new InflaterInputStream(this.f2931tx.getInputStream()) : this.f2931tx.getInputStream()));
            return 0;
        } catch (Exception e) {
            throw new C0390ar(-4002, "get response exception : " + e.getMessage());
        }
    }

    /* renamed from: d */
    private static byte[] m3316d(InputStream inputStream) {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        byte[] bArr = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        bufferedInputStream.close();
                        byteArrayOutputStream.close();
                        return byteArray;
                    } catch (Exception e) {
                        throw new C0390ar(-56, "get Bytes from inputStream: " + e.getMessage());
                    }
                }
            } catch (IOException e2) {
                throw new C0390ar(-56, "get Bytes from inputStream when read buffer: " + e2.getMessage());
            }
        }
    }

    public InputStream getInputStream() {
        try {
            return this.f2931tx.getInputStream();
        } catch (Exception e) {
            throw new C0390ar(-56, "get inputStream: " + e.getMessage());
        }
    }

    private boolean isConnected() {
        return this.f2925dr == 200 || this.f2925dr == 206;
    }

    public int getResponseCode() {
        return this.f2925dr;
    }

    public void close() {
        if (this.f2931tx != null) {
            this.f2931tx.disconnect();
            this.f2931tx = null;
        }
    }

    public String getHeaderField(String str) {
        try {
            return this.f2931tx.getHeaderField(str);
        } catch (Exception e) {
            throw new C0390ar(-56, "get header field: " + e.getMessage());
        }
    }

    /* renamed from: J */
    public long m3326J() {
        String headerField = getHeaderField("Content-Range");
        if (headerField == null) {
            return -1L;
        }
        try {
            return Long.parseLong(headerField.substring(headerField.lastIndexOf(47) + 1).trim());
        } catch (Exception e) {
            throw new C0390ar(-56, "get breakpoint total size: " + e.getMessage());
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
            throw new C0390ar(-56, "get content length: " + e.getMessage());
        }
    }

    public String getContentType() {
        try {
            return this.f2931tx.getHeaderField("Content-Type");
        } catch (Exception e) {
            throw new C0390ar(-56, "get content type: " + e.getMessage());
        }
    }

    /* renamed from: cP */
    public String m3319cP() {
        try {
            return this.f2931tx.getHeaderField("Location");
        } catch (Exception e) {
            throw new C0390ar(-56, "get redirect url: " + e.getMessage());
        }
    }

    /* renamed from: cQ */
    public String m3318cQ() {
        return this.f2926ra;
    }

    /* renamed from: cR */
    private Hashtable<String, String> m3317cR() {
        return this.f2933tz;
    }
}
