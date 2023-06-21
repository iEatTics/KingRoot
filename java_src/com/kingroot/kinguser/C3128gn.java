package com.kingroot.kinguser;

import android.content.Context;
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
/* renamed from: com.kingroot.kinguser.gn */
/* loaded from: classes.dex */
public final class C3128gn {

    /* renamed from: a */
    private Context f2713a;

    /* renamed from: b */
    private String f2714b;

    /* renamed from: e */
    private byte[] f2716e;

    /* renamed from: qv */
    private HttpURLConnection f2720qv;

    /* renamed from: c */
    private String f2715c = "GET";

    /* renamed from: f */
    private int f2717f = -1;

    /* renamed from: qw */
    private Hashtable<String, String> f2721qw = new Hashtable<>(0);

    /* renamed from: h */
    private boolean f2718h = false;

    /* renamed from: i */
    private boolean f2719i = true;

    /* renamed from: qx */
    private byte f2722qx = 0;

    /* renamed from: qy */
    private byte f2723qy = 0;

    private C3128gn(Context context, String str) {
        this.f2713a = context;
        this.f2714b = str;
    }

    /* renamed from: d */
    public static synchronized C3128gn m3678d(Context context, String str) {
        C3128gn c3128gn;
        synchronized (C3128gn.class) {
            byte m3666l = C3130gp.m3666l(context);
            if (-1 == m3666l) {
                throw new bzz(-1052, "no connecition!");
            }
            c3128gn = new C3128gn(context, str);
            try {
                c3128gn.m3687a(new URL(c3128gn.f2714b), m3666l);
            } catch (MalformedURLException e) {
                throw new bzz(-1053, "malformed url: " + str + " " + e.getMessage());
            }
        }
        return c3128gn;
    }

    /* renamed from: a */
    public static synchronized C3128gn m3690a(Context context, C3128gn c3128gn) {
        C3128gn c3128gn2;
        byte b = 2;
        synchronized (C3128gn.class) {
            byte m3666l = C3130gp.m3666l(context);
            c3128gn2 = new C3128gn(context, c3128gn.m3671k());
            if (-1 == m3666l) {
                throw new bzz(-1052, "no connection!");
            }
            try {
                if (!c3128gn.f2718h || m3666l == 2) {
                    b = (c3128gn.f2718h || m3666l != 2) ? m3666l : (byte) 1;
                }
                c3128gn2.m3687a(new URL(c3128gn2.f2714b), b);
                c3128gn2.m3689a(c3128gn.m3691a());
                c3128gn2.m3685a(c3128gn.m3682b());
                c3128gn2.m3686a(c3128gn.m3683aD());
            } catch (MalformedURLException e) {
                throw new bzz(-1053, "invalide url: " + c3128gn2.f2714b + " " + e.getMessage());
            }
        }
        return c3128gn2;
    }

    /* renamed from: a */
    private void m3687a(URL url, byte b) {
        if (-1 != b) {
            try {
                if (2 == b) {
                    this.f2720qv = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(C3130gp.m3667b(this.f2713a), C3130gp.m3665m(this.f2713a))));
                    this.f2718h = true;
                } else {
                    this.f2720qv = (HttpURLConnection) url.openConnection();
                    this.f2718h = false;
                }
                this.f2720qv.setReadTimeout(30000);
                this.f2720qv.setConnectTimeout(30000);
            } catch (IOException e) {
                throw new bzz(-1056, "IOException : " + e.getMessage());
            } catch (IllegalArgumentException e2) {
                throw new bzz(-1057, "arg error: " + e2.getMessage());
            } catch (SecurityException e3) {
                throw new bzz(-1058, "security error: " + e3.getMessage());
            } catch (UnsupportedOperationException e4) {
                throw new bzz(-1059, "unsupported operation error: " + e4.getMessage());
            }
        }
    }

    /* renamed from: a */
    public void m3688a(String str, String str2) {
        if (str != null && str2 != null && this.f2720qv != null) {
            this.f2720qv.setRequestProperty(str, str2);
            this.f2721qw.put(str, str2);
        }
    }

    /* renamed from: a */
    public void m3686a(Hashtable<String, String> hashtable) {
        if (this.f2720qv != null && hashtable != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                m3688a(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: b */
    public void m3680b(Hashtable<String, String> hashtable) {
        if (hashtable != null && hashtable.size() != 0 && this.f2720qv != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                this.f2720qv.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: a */
    public void m3689a(String str) {
        this.f2715c = str;
        if ("GET".equalsIgnoreCase(str)) {
            this.f2715c = "GET";
        } else if ("POST".equalsIgnoreCase(str)) {
            this.f2715c = "POST";
        }
    }

    /* renamed from: a */
    public String m3691a() {
        return this.f2715c;
    }

    /* renamed from: a */
    public void m3685a(byte[] bArr) {
        this.f2716e = bArr;
    }

    /* renamed from: b */
    public byte[] m3682b() {
        return this.f2716e;
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
    /* renamed from: c */
    public int m3679c() {
        int i;
        int i2;
        try {
            this.f2720qv.setRequestProperty("Cookie", "");
            this.f2720qv.setRequestProperty("Accept", "*/*");
            this.f2720qv.setRequestProperty("Accept-Charset", "utf-8");
            this.f2720qv.setRequestProperty("Content-Type", "application/octet-stream");
            this.f2720qv.setInstanceFollowRedirects(true);
            System.setProperty("http.keepAlive", "false");
            i = this.f2715c;
            try {
                if ("GET".equalsIgnoreCase(i)) {
                    i2 = -3000;
                    this.f2720qv.setRequestMethod("GET");
                } else {
                    i2 = -2000;
                    this.f2720qv.setRequestMethod("POST");
                    this.f2720qv.setDoOutput(true);
                    this.f2720qv.setDoInput(true);
                    this.f2720qv.setUseCaches(false);
                    if (this.f2716e != null) {
                        this.f2720qv.setRequestProperty("Content-length", "" + this.f2716e.length);
                        OutputStream outputStream = this.f2720qv.getOutputStream();
                        outputStream.write(this.f2716e);
                        outputStream.flush();
                        outputStream.close();
                    }
                }
                this.f2717f = this.f2720qv.getResponseCode();
                if (this.f2717f >= 301 && this.f2717f <= 305) {
                    byte b = this.f2722qx;
                    this.f2722qx = (byte) (b + 1);
                    if (b < 2) {
                        this.f2714b = m3672j();
                        this.f2720qv.disconnect();
                        m3687a(new URL(this.f2714b), C3130gp.m3666l(this.f2713a));
                        m3689a(this.f2715c);
                        if ("POST".equalsIgnoreCase(this.f2715c) && this.f2716e != null) {
                            m3685a(this.f2716e);
                        }
                        m3680b(this.f2721qw);
                        return m3679c();
                    }
                } else if (this.f2717f == 200) {
                    String m3673i = m3673i();
                    if (2 == C3130gp.m3666l(this.f2713a) && m3673i != null && m3673i.toLowerCase().indexOf("vnd.wap.wml") != -1) {
                        byte b2 = this.f2723qy;
                        this.f2723qy = (byte) (b2 + 1);
                        if (b2 < 1) {
                            this.f2720qv.disconnect();
                            m3687a(new URL(this.f2714b), C3130gp.m3666l(this.f2713a));
                            m3689a(this.f2715c);
                            if ("POST".equalsIgnoreCase(this.f2715c) && this.f2716e != null) {
                                m3685a(this.f2716e);
                            }
                            m3680b(this.f2721qw);
                            return m3679c();
                        }
                    }
                }
                if (this.f2717f != 206 && this.f2717f != 200) {
                    throw new bzz(this.f2717f + i2, "response code is unnormal: " + this.f2717f);
                }
                return this.f2717f;
            } catch (bzz e) {
                e = e;
                throw new bzz(i - 56, "sendRequest NetWorkException: " + e.getMessage());
            } catch (IllegalAccessError e2) {
                e = e2;
                throw new bzz(i - 60, "sendRequest IllegalAccessError: " + e.getMessage());
            } catch (IllegalStateException e3) {
                e = e3;
                throw new bzz(i - 61, "sendRequest IllegalStateException: " + e.getMessage());
            } catch (ProtocolException e4) {
                e = e4;
                throw new bzz(i - 51, "sendRequest ProtocolException: " + e.getMessage());
            } catch (SocketException e5) {
                e = e5;
                throw new bzz(i - 54, "sendRequest SocketException: " + e.getMessage());
            } catch (SocketTimeoutException e6) {
                e = e6;
                throw new bzz(i - 55, "sendRequest SocketTimeoutException: " + e.getMessage());
            } catch (UnknownHostException e7) {
                e = e7;
                if (this.f2719i) {
                    this.f2719i = false;
                    this.f2720qv.disconnect();
                    try {
                        if (2 == C3130gp.m3666l(this.f2713a) && this.f2718h) {
                            m3687a(new URL(this.f2714b), (byte) 1);
                        } else if (2 != C3130gp.m3666l(this.f2713a) && !this.f2718h) {
                            m3687a(new URL(this.f2714b), (byte) 2);
                        }
                        m3689a(this.f2715c);
                        if ("POST".equalsIgnoreCase(this.f2715c) && this.f2716e != null) {
                            m3685a(this.f2716e);
                        }
                        m3680b(this.f2721qw);
                        return m3679c();
                    } catch (MalformedURLException e8) {
                        throw new bzz(i - 53, "malformed url: " + this.f2714b + " " + e.getMessage());
                    }
                }
                throw new bzz(i - 62, "sendRequest UnknownHostException: " + e.getMessage());
            } catch (Exception e9) {
                e = e9;
                throw new bzz(i, "sendRequest Exception: " + e.getMessage());
            }
        } catch (bzz e10) {
            e = e10;
            i = 0;
        } catch (IllegalAccessError e11) {
            e = e11;
            i = 0;
        } catch (IllegalStateException e12) {
            e = e12;
            i = 0;
        } catch (ProtocolException e13) {
            e = e13;
            i = 0;
        } catch (SocketException e14) {
            e = e14;
            i = 0;
        } catch (SocketTimeoutException e15) {
            e = e15;
            i = 0;
        } catch (UnknownHostException e16) {
            e = e16;
            i = 0;
        } catch (Exception e17) {
            e = e17;
            i = 0;
        }
    }

    /* renamed from: aC */
    public InputStream m3684aC() {
        try {
            return this.f2720qv.getInputStream();
        } catch (Exception e) {
            throw new bzz(-56, "get inputStream: " + e.getMessage());
        }
    }

    /* renamed from: e */
    public int m3677e() {
        return this.f2717f;
    }

    /* renamed from: f */
    public void m3676f() {
        if (this.f2720qv != null) {
            this.f2720qv.disconnect();
            this.f2720qv = null;
        }
    }

    /* renamed from: b */
    public String m3681b(String str) {
        try {
            return this.f2720qv.getHeaderField(str);
        } catch (Exception e) {
            throw new bzz(-56, "get header field: " + e.getMessage());
        }
    }

    /* renamed from: g */
    public long m3675g() {
        String m3681b = m3681b("Content-Range");
        if (m3681b == null) {
            return -1L;
        }
        try {
            return Long.parseLong(m3681b.substring(m3681b.lastIndexOf(47) + 1).trim());
        } catch (Exception e) {
            throw new bzz(-56, "get breakpoint total size: " + e.getMessage());
        }
    }

    /* renamed from: h */
    public long m3674h() {
        String m3681b = m3681b("content-length");
        if (m3681b == null) {
            return -1L;
        }
        try {
            return Long.parseLong(m3681b.trim());
        } catch (Exception e) {
            throw new bzz(-56, "get content length: " + e.getMessage());
        }
    }

    /* renamed from: i */
    public String m3673i() {
        try {
            return this.f2720qv.getHeaderField("Content-Type");
        } catch (Exception e) {
            throw new bzz(-56, "get content type: " + e.getMessage());
        }
    }

    /* renamed from: j */
    public String m3672j() {
        try {
            return this.f2720qv.getHeaderField("Location");
        } catch (Exception e) {
            throw new bzz(-56, "get redirect url: " + e.getMessage());
        }
    }

    /* renamed from: k */
    public String m3671k() {
        return this.f2714b;
    }

    /* renamed from: aD */
    private Hashtable<String, String> m3683aD() {
        return this.f2721qw;
    }
}
