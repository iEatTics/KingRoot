package com.kingroot.kinguser;

import android.content.Context;
import android.util.Log;
import com.kingx.cloudsdk.C4022bc;
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
import org.apache.http.client.ClientProtocolException;
/* loaded from: classes.dex */
public final class bmi {
    private String bAG;
    private HttpURLConnection bBL;
    private byte[] bBM;
    private Context mContext;
    private String bBK = "GET";
    private int bBN = -1;
    private Hashtable<String, String> bBO = new Hashtable<>(0);
    private boolean bBP = false;
    private boolean bBQ = true;
    private byte bBR = 0;
    private byte bBS = 0;

    private bmi(Context context, String str) {
        this.mContext = context;
        this.bAG = str;
    }

    /* renamed from: E */
    public static synchronized bmi m6398E(Context context, String str) {
        bmi bmiVar;
        synchronized (bmi.class) {
            bmiVar = new bmi(context, str);
            byte m6326bJ = bmu.m6326bJ(context);
            if (-1 == m6326bJ) {
                throw new C4022bc(-1052, "no connecition!");
            }
            try {
                bmiVar.m6396a(new URL(bmiVar.bAG), m6326bJ);
            } catch (MalformedURLException e) {
                throw new C4022bc(-1053, "malformed url: " + str + " " + e.getMessage());
            }
        }
        return bmiVar;
    }

    /* renamed from: a */
    private void m6396a(URL url, byte b) {
        String defaultHost;
        if (-1 != b) {
            try {
                if (2 == b) {
                    Proxy.Type type = Proxy.Type.HTTP;
                    String host = android.net.Proxy.getHost(this.mContext);
                    if (host == null || host.length() == 0) {
                        defaultHost = android.net.Proxy.getDefaultHost();
                    } else {
                        defaultHost = host != null ? host : "";
                    }
                    int port = android.net.Proxy.getPort(this.mContext);
                    if (port <= 0) {
                        port = android.net.Proxy.getDefaultPort();
                    }
                    this.bBL = (HttpURLConnection) url.openConnection(new Proxy(type, new InetSocketAddress(defaultHost, port)));
                    this.bBP = true;
                } else {
                    this.bBL = (HttpURLConnection) url.openConnection();
                    this.bBP = false;
                }
                this.bBL.setReadTimeout(30000);
                this.bBL.setConnectTimeout(30000);
            } catch (IOException e) {
                throw new C4022bc(-1056, "IOException : " + e.getMessage());
            } catch (IllegalArgumentException e2) {
                throw new C4022bc(-1057, "arg error: " + e2.getMessage());
            } catch (SecurityException e3) {
                throw new C4022bc(-1058, "security error: " + e3.getMessage());
            } catch (UnsupportedOperationException e4) {
                throw new C4022bc(-1059, "unsupported operation error: " + e4.getMessage());
            }
        }
    }

    /* renamed from: a */
    private void m6395a(Hashtable<String, String> hashtable) {
        if (hashtable != null && hashtable.size() != 0 && this.bBL != null) {
            for (Map.Entry<String, String> entry : hashtable.entrySet()) {
                this.bBL.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
    }

    public final void setRequestMethod(String str) {
        this.bBK = str;
        if ("GET".equalsIgnoreCase(str)) {
            this.bBK = "GET";
        } else if ("POST".equalsIgnoreCase(str)) {
            this.bBK = "POST";
        }
    }

    /* renamed from: P */
    public final void m6397P(byte[] bArr) {
        this.bBM = bArr;
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
    /* renamed from: cS */
    public final int m6393cS() {
        int i;
        int i2;
        while (true) {
            try {
                this.bBL.setRequestProperty("Cookie", "");
                this.bBL.setRequestProperty("Accept", "*/*");
                this.bBL.setRequestProperty("Accept-Charset", "utf-8");
                this.bBL.setRequestProperty("Content-Type", "application/octet-stream");
                this.bBL.setInstanceFollowRedirects(true);
                System.setProperty("http.keepAlive", "false");
                i = this.bBK;
                try {
                    if ("GET".equalsIgnoreCase(i)) {
                        i2 = -3000;
                        this.bBL.setRequestMethod("GET");
                    } else {
                        i2 = -2000;
                        this.bBL.setRequestMethod("POST");
                        this.bBL.setDoOutput(true);
                        this.bBL.setDoInput(true);
                        this.bBL.setUseCaches(false);
                        if (this.bBM != null) {
                            this.bBL.setRequestProperty("Content-length", new StringBuilder().append(this.bBM.length).toString());
                            OutputStream outputStream = this.bBL.getOutputStream();
                            outputStream.write(this.bBM);
                            outputStream.flush();
                            outputStream.close();
                        }
                    }
                    this.bBN = this.bBL.getResponseCode();
                    Log.d("HttpConnection", "mResponseCode = " + this.bBN);
                    if (this.bBN >= 301 && this.bBN <= 305) {
                        byte b = this.bBR;
                        this.bBR = (byte) (b + 1);
                        if (b < 2) {
                            this.bAG = m6392cT();
                            this.bBL.disconnect();
                            m6396a(new URL(this.bAG), bmu.m6326bJ(this.mContext));
                            setRequestMethod(this.bBK);
                            if ("POST".equalsIgnoreCase(this.bBK) && this.bBM != null) {
                                this.bBM = this.bBM;
                            }
                            m6395a(this.bBO);
                            return m6393cS();
                        }
                    } else if (this.bBN == 200) {
                        String contentType = getContentType();
                        if (2 == bmu.m6326bJ(this.mContext) && contentType != null && contentType.toLowerCase().indexOf("vnd.wap.wml") != -1) {
                            byte b2 = this.bBS;
                            this.bBS = (byte) (b2 + 1);
                            if (b2 <= 0) {
                                this.bBL.disconnect();
                                m6396a(new URL(this.bAG), bmu.m6326bJ(this.mContext));
                                setRequestMethod(this.bBK);
                                if ("POST".equalsIgnoreCase(this.bBK) && this.bBM != null) {
                                    this.bBM = this.bBM;
                                }
                                m6395a(this.bBO);
                                return m6393cS();
                            }
                        }
                    }
                    if (this.bBN != 206 && this.bBN != 200) {
                        throw new C4022bc(this.bBN + i2, "response code is unnormal: " + this.bBN);
                    }
                    return this.bBN;
                } catch (ProtocolException e) {
                    e = e;
                    throw new C4022bc(i - 51, "sendRequest ProtocolException: " + e.getMessage());
                } catch (ClientProtocolException e2) {
                    e = e2;
                    throw new C4022bc(i - 51, "sendRequest ClientProtocolException: " + e.getMessage());
                } catch (C4022bc e3) {
                    e = e3;
                    throw new C4022bc(i - 56, "sendRequest NetWorkException: " + e.getMessage());
                } catch (IllegalAccessError e4) {
                    e = e4;
                    throw new C4022bc(i - 60, "sendRequest IllegalAccessError: " + e.getMessage());
                } catch (IllegalStateException e5) {
                    e = e5;
                    throw new C4022bc(i - 61, "sendRequest IllegalStateException: " + e.getMessage());
                } catch (SocketException e6) {
                    e = e6;
                    throw new C4022bc(i - 54, "sendRequest SocketException: " + e.getMessage());
                } catch (SocketTimeoutException e7) {
                    e = e7;
                    throw new C4022bc(i - 55, "sendRequest SocketTimeoutException: " + e.getMessage());
                } catch (UnknownHostException e8) {
                    e = e8;
                    if (this.bBQ) {
                        this.bBQ = false;
                        this.bBL.disconnect();
                        try {
                            if (2 == bmu.m6326bJ(this.mContext) && this.bBP) {
                                m6396a(new URL(this.bAG), (byte) 1);
                            } else if (2 != bmu.m6326bJ(this.mContext) && !this.bBP) {
                                m6396a(new URL(this.bAG), (byte) 2);
                            }
                            setRequestMethod(this.bBK);
                            if ("POST".equalsIgnoreCase(this.bBK) && this.bBM != null) {
                                this.bBM = this.bBM;
                            }
                            m6395a(this.bBO);
                        } catch (MalformedURLException e9) {
                            throw new C4022bc(i - 53, "malformed url: " + this.bAG + " " + e.getMessage());
                        }
                    } else {
                        throw new C4022bc(i - 62, "sendRequest UnknownHostException: " + e.getMessage());
                    }
                } catch (Exception e10) {
                    e = e10;
                    e.printStackTrace();
                    throw new C4022bc(i, "sendRequest Exception: " + e.getMessage());
                }
            } catch (SocketTimeoutException e11) {
                e = e11;
                i = 0;
            } catch (ClientProtocolException e12) {
                e = e12;
                i = 0;
            } catch (C4022bc e13) {
                e = e13;
                i = 0;
            } catch (IllegalStateException e14) {
                e = e14;
                i = 0;
            } catch (ProtocolException e15) {
                e = e15;
                i = 0;
            } catch (UnknownHostException e16) {
                e = e16;
                i = 0;
            } catch (Exception e17) {
                e = e17;
                i = 0;
            } catch (IllegalAccessError e18) {
                e = e18;
                i = 0;
            } catch (SocketException e19) {
                e = e19;
                i = 0;
            }
            m6395a(this.bBO);
        }
    }

    /* renamed from: a */
    public final int m6394a(boolean z, AtomicReference<byte[]> atomicReference) {
        if (this.bBL != null) {
            if (this.bBN == 200 || this.bBN == 206) {
                try {
                    atomicReference.set(m6391k(this.bBL.getInputStream()));
                    return 0;
                } catch (Exception e) {
                    throw new C4022bc(-4002, "get response exception : " + e.getMessage());
                }
            }
        }
        return -4000;
    }

    /* renamed from: k */
    private static byte[] m6391k(InputStream inputStream) {
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
                        throw new C4022bc(-56, "get Bytes from inputStream: " + e.getMessage());
                    }
                }
            } catch (IOException e2) {
                throw new C4022bc(-56, "get Bytes from inputStream when read buffer: " + e2.getMessage());
            }
        }
    }

    public final InputStream getInputStream() {
        try {
            return this.bBL.getInputStream();
        } catch (Exception e) {
            throw new C4022bc(-56, "get inputStream: " + e.getMessage());
        }
    }

    public final void close() {
        if (this.bBL != null) {
            try {
                this.bBL.disconnect();
            } catch (Throwable th) {
                Log.e("HttpConnection", "HttpConnection.close() throw e", th);
            }
            this.bBL = null;
        }
    }

    private String getContentType() {
        try {
            return this.bBL.getHeaderField("Content-Type");
        } catch (Exception e) {
            throw new C4022bc(-56, "get content type: " + e.getMessage());
        }
    }

    /* renamed from: cT */
    private String m6392cT() {
        try {
            return this.bBL.getHeaderField("Location");
        } catch (Exception e) {
            throw new C4022bc(-56, "get redirect url: " + e.getMessage());
        }
    }

    public final long getDate() {
        if (this.bBL != null) {
            return this.bBL.getDate();
        }
        return -1L;
    }
}
