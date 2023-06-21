package com.kingroot.kinguser;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.kingroot.kinguser.bqt;
import com.kingroot.loader.common.KlConst;
import java.io.ByteArrayOutputStream;
import java.io.CharConversionException;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.InvalidObjectException;
import java.io.NotActiveException;
import java.io.NotSerializableException;
import java.io.OptionalDataException;
import java.io.StreamCorruptedException;
import java.io.SyncFailedException;
import java.io.UTFDataFormatException;
import java.io.UnsupportedEncodingException;
import java.io.WriteAbortedException;
import java.net.BindException;
import java.net.ConnectException;
import java.net.HttpRetryException;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.PortUnreachableException;
import java.net.ProtocolException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.FileLockInterruptionException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.util.InvalidPropertiesFormatException;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLKeyException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bqm {

    /* renamed from: com.kingroot.kinguser.bqm$a */
    /* loaded from: classes.dex */
    public static class C2573a extends Exception {
        public C2573a(String str) {
            super(str);
        }
    }

    /* renamed from: com.kingroot.kinguser.bqm$b */
    /* loaded from: classes.dex */
    public static class C2574b extends Exception {
        public C2574b(String str) {
            super(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x01bd A[LOOP:0: B:9:0x00da->B:58:0x01bd, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x011e A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static JSONObject m5795a(bno bnoVar, Context context, String str, Bundle bundle, String str2) {
        String str3;
        String str4;
        int i;
        ConnectTimeoutException connectTimeoutException;
        JSONObject jSONObject;
        SocketTimeoutException socketTimeoutException;
        JSONObject jSONObject2;
        int i2;
        long j;
        JSONObject jSONObject3;
        long j2;
        JSONObject jSONObject4;
        long j3;
        bqt.C2584a m5796a;
        JSONObject m5735mU;
        bpy.m5848a("openSDK_LOG.HttpUtils", "OpenApi request");
        if (str.toLowerCase().startsWith("http")) {
            str3 = str;
            str4 = str;
        } else {
            str4 = bqq.ahr().m5766a(context, "https://openmobile.qq.com/") + str;
            str3 = bqq.ahr().m5766a(context, "https://openmobile.qq.com/") + str;
        }
        m5797a(context, bnoVar, str);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int m5774a = bqp.m5779L(context, bnoVar.agm()).m5774a("Common_HttpRetryCount");
        bpy.m5848a("OpenConfig_test", "config 1:Common_HttpRetryCount            config_value:" + m5774a + "   appid:" + bnoVar.agm() + "     url:" + str3);
        int i3 = m5774a == 0 ? 3 : m5774a;
        bpy.m5848a("OpenConfig_test", "config 1:Common_HttpRetryCount            result_value:" + i3 + "   appid:" + bnoVar.agm() + "     url:" + str3);
        long j4 = elapsedRealtime;
        int i4 = 0;
        JSONObject jSONObject5 = null;
        while (true) {
            int i5 = i4 + 1;
            try {
                try {
                    try {
                        m5796a = m5796a(context, str4, str2, bundle);
                        m5735mU = bqt.m5735mU(m5796a.f2053a);
                    } catch (JSONException e) {
                        e.printStackTrace();
                        bqj.ahn().m5803a(str3, j4, 0L, 0L, -4);
                        throw e;
                    }
                } catch (SocketTimeoutException e2) {
                    socketTimeoutException = e2;
                    jSONObject2 = jSONObject5;
                } catch (ConnectTimeoutException e3) {
                    connectTimeoutException = e3;
                    jSONObject = jSONObject5;
                }
                try {
                    try {
                        i2 = m5735mU.getInt("ret");
                    } catch (JSONException e4) {
                        i2 = -4;
                    }
                    j3 = m5796a.f2054b;
                    j = m5796a.f2055c;
                    jSONObject4 = m5735mU;
                    break;
                } catch (SocketTimeoutException e5) {
                    jSONObject2 = m5735mU;
                    socketTimeoutException = e5;
                    socketTimeoutException.printStackTrace();
                    i2 = -8;
                    j = 0;
                    if (i5 >= i3) {
                        bqj.ahn().m5803a(str3, j4, 0L, 0L, -8);
                        throw socketTimeoutException;
                    }
                    j4 = SystemClock.elapsedRealtime();
                    jSONObject3 = jSONObject2;
                    j2 = 0;
                    if (i5 < i3) {
                        jSONObject4 = jSONObject3;
                        j3 = j2;
                        bqj.ahn().m5803a(str3, j4, j3, j, i2);
                        return jSONObject4;
                    }
                    jSONObject5 = jSONObject3;
                    i4 = i5;
                } catch (ConnectTimeoutException e6) {
                    jSONObject = m5735mU;
                    connectTimeoutException = e6;
                    connectTimeoutException.printStackTrace();
                    i2 = -7;
                    j = 0;
                    if (i5 >= i3) {
                        bqj.ahn().m5803a(str3, j4, 0L, 0L, -7);
                        throw connectTimeoutException;
                    }
                    j4 = SystemClock.elapsedRealtime();
                    jSONObject3 = jSONObject;
                    j2 = 0;
                    if (i5 < i3) {
                    }
                }
                jSONObject5 = jSONObject3;
                i4 = i5;
            } catch (C2573a e7) {
                e7.printStackTrace();
                try {
                    i = Integer.parseInt(e7.getMessage().replace("http status code error:", ""));
                } catch (Exception e8) {
                    e8.printStackTrace();
                    i = -9;
                }
                bqj.ahn().m5803a(str3, j4, 0L, 0L, i);
                throw e7;
            } catch (C2574b e9) {
                e9.printStackTrace();
                throw e9;
            } catch (MalformedURLException e10) {
                e10.printStackTrace();
                bqj.ahn().m5803a(str3, j4, 0L, 0L, -3);
                throw e10;
            } catch (IOException e11) {
                e11.printStackTrace();
                bqj.ahn().m5803a(str3, j4, 0L, 0L, m5793a(e11));
                throw e11;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.kingroot.kinguser.bqm$1] */
    /* renamed from: a */
    public static void m5794a(final bno bnoVar, final Context context, final String str, final Bundle bundle, final String str2, final bwc bwcVar) {
        bpy.m5848a("openSDK_LOG.HttpUtils", "OpenApi requestAsync");
        new Thread() { // from class: com.kingroot.kinguser.bqm.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    JSONObject m5795a = bqm.m5795a(bno.this, context, str, bundle, str2);
                    if (bwcVar != null) {
                        bwcVar.m5343d(m5795a);
                        bpy.m5846aP("openSDK_LOG.HttpUtils", "OpenApi onComplete");
                    }
                } catch (C2573a e) {
                    if (bwcVar != null) {
                        bwcVar.m5350a(e);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onHttpStatusException", e);
                    }
                } catch (C2574b e2) {
                    if (bwcVar != null) {
                        bwcVar.m5349a(e2);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onNetworkUnavailableException", e2);
                    }
                } catch (MalformedURLException e3) {
                    if (bwcVar != null) {
                        bwcVar.m5348a(e3);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync MalformedURLException", e3);
                    }
                } catch (SocketTimeoutException e4) {
                    if (bwcVar != null) {
                        bwcVar.m5347a(e4);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onSocketTimeoutException", e4);
                    }
                } catch (ConnectTimeoutException e5) {
                    if (bwcVar != null) {
                        bwcVar.m5346a(e5);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onConnectTimeoutException", e5);
                    }
                } catch (IOException e6) {
                    if (bwcVar != null) {
                        bwcVar.m5344b(e6);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync IOException", e6);
                    }
                } catch (JSONException e7) {
                    if (bwcVar != null) {
                        bwcVar.m5345a(e7);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync JSONException", e7);
                    }
                } catch (Exception e8) {
                    if (bwcVar != null) {
                        bwcVar.m5342g(e8);
                        bpy.m5843b("openSDK_LOG.HttpUtils", "OpenApi requestAsync onUnknowException", e8);
                    }
                }
            }
        }.start();
    }

    /* renamed from: a */
    private static void m5797a(Context context, bno bnoVar, String str) {
        if (str.indexOf("add_share") > -1 || str.indexOf("upload_pic") > -1 || str.indexOf("add_topic") > -1 || str.indexOf("set_user_face") > -1 || str.indexOf("add_t") > -1 || str.indexOf("add_pic_t") > -1 || str.indexOf("add_pic_url") > -1 || str.indexOf("add_video") > -1) {
            bnm.m6222a(context, bnoVar, "requireApi", str);
        }
    }

    /* renamed from: a */
    public static int m5793a(IOException iOException) {
        if (iOException instanceof CharConversionException) {
            return -20;
        }
        if (iOException instanceof MalformedInputException) {
            return -21;
        }
        if (iOException instanceof UnmappableCharacterException) {
            return -22;
        }
        if (iOException instanceof HttpResponseException) {
            return -23;
        }
        if (iOException instanceof ClosedChannelException) {
            return -24;
        }
        if (iOException instanceof ConnectionClosedException) {
            return -25;
        }
        if (iOException instanceof EOFException) {
            return -26;
        }
        if (iOException instanceof FileLockInterruptionException) {
            return -27;
        }
        if (iOException instanceof FileNotFoundException) {
            return -28;
        }
        if (iOException instanceof HttpRetryException) {
            return -29;
        }
        if (iOException instanceof ConnectTimeoutException) {
            return -7;
        }
        if (iOException instanceof SocketTimeoutException) {
            return -8;
        }
        if (iOException instanceof InvalidPropertiesFormatException) {
            return -30;
        }
        if (iOException instanceof MalformedChunkCodingException) {
            return -31;
        }
        if (iOException instanceof MalformedURLException) {
            return -3;
        }
        if (iOException instanceof NoHttpResponseException) {
            return -32;
        }
        if (iOException instanceof InvalidClassException) {
            return -33;
        }
        if (iOException instanceof InvalidObjectException) {
            return -34;
        }
        if (iOException instanceof NotActiveException) {
            return -35;
        }
        if (iOException instanceof NotSerializableException) {
            return -36;
        }
        if (iOException instanceof OptionalDataException) {
            return -37;
        }
        if (iOException instanceof StreamCorruptedException) {
            return -38;
        }
        if (iOException instanceof WriteAbortedException) {
            return -39;
        }
        if (iOException instanceof ProtocolException) {
            return -40;
        }
        if (iOException instanceof SSLHandshakeException) {
            return -41;
        }
        if (iOException instanceof SSLKeyException) {
            return -42;
        }
        if (iOException instanceof SSLPeerUnverifiedException) {
            return -43;
        }
        if (iOException instanceof SSLProtocolException) {
            return -44;
        }
        if (iOException instanceof BindException) {
            return -45;
        }
        if (iOException instanceof ConnectException) {
            return -46;
        }
        if (iOException instanceof NoRouteToHostException) {
            return -47;
        }
        if (iOException instanceof PortUnreachableException) {
            return -48;
        }
        if (iOException instanceof SyncFailedException) {
            return -49;
        }
        if (iOException instanceof UTFDataFormatException) {
            return -50;
        }
        if (iOException instanceof UnknownHostException) {
            return -51;
        }
        if (iOException instanceof UnknownServiceException) {
            return -52;
        }
        if (iOException instanceof UnsupportedEncodingException) {
            return -53;
        }
        if (iOException instanceof ZipException) {
            return -54;
        }
        return -2;
    }

    /* renamed from: a */
    public static bqt.C2584a m5796a(Context context, String str, String str2, Bundle bundle) {
        Bundle bundle2;
        HttpUriRequest httpUriRequest;
        int i;
        String str3;
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && ((activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) == null || !activeNetworkInfo.isAvailable())) {
            throw new C2574b("network unavailable");
        }
        if (bundle != null) {
            bundle2 = new Bundle(bundle);
        } else {
            bundle2 = new Bundle();
        }
        String string = bundle2.getString("appid_for_getting_config");
        bundle2.remove("appid_for_getting_config");
        HttpClient m5786h = m5786h(context, string, str);
        if (str2.equals("GET")) {
            String m5787f = m5787f(bundle2);
            int length = 0 + m5787f.length();
            bpy.m5848a("openSDK_LOG.HttpUtils", "-->openUrl2 before url =" + str);
            if (str.indexOf("?") == -1) {
                str3 = str + "?";
            } else {
                str3 = str + "&";
            }
            bpy.m5848a("openSDK_LOG.HttpUtils", "-->openUrl2 encodedParam =" + m5787f + " -- url = " + str3);
            HttpUriRequest httpGet = new HttpGet(str3 + m5787f);
            httpGet.addHeader("Accept-Encoding", "gzip");
            httpUriRequest = httpGet;
            i = length;
        } else if (!str2.equals("POST")) {
            httpUriRequest = null;
            i = 0;
        } else {
            HttpUriRequest httpPost = new HttpPost(str);
            httpPost.addHeader("Accept-Encoding", "gzip");
            Bundle bundle3 = new Bundle();
            for (String str4 : bundle2.keySet()) {
                Object obj = bundle2.get(str4);
                if (obj instanceof byte[]) {
                    bundle3.putByteArray(str4, (byte[]) obj);
                }
            }
            if (!bundle2.containsKey("method")) {
                bundle2.putString("method", str2);
            }
            httpPost.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
            httpPost.setHeader("Connection", "Keep-Alive");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byteArrayOutputStream.write(bqt.m5734mV("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
            byteArrayOutputStream.write(bqt.m5734mV(m5788c(bundle2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f")));
            if (!bundle3.isEmpty()) {
                int size = bundle3.size();
                byteArrayOutputStream.write(bqt.m5734mV("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
                int i2 = -1;
                for (String str5 : bundle3.keySet()) {
                    i2++;
                    byteArrayOutputStream.write(bqt.m5734mV("Content-Disposition: form-data; name=\"" + str5 + "\"; filename=\"" + str5 + "\"\r\n"));
                    byteArrayOutputStream.write(bqt.m5734mV("Content-Type: content/unknown\r\n\r\n"));
                    byte[] byteArray = bundle3.getByteArray(str5);
                    if (byteArray != null) {
                        byteArrayOutputStream.write(byteArray);
                    }
                    if (i2 < size - 1) {
                        byteArrayOutputStream.write(bqt.m5734mV("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"));
                    }
                }
            }
            byteArrayOutputStream.write(bqt.m5734mV("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"));
            byte[] byteArray2 = byteArrayOutputStream.toByteArray();
            i = byteArray2.length + 0;
            byteArrayOutputStream.close();
            httpPost.setEntity(new ByteArrayEntity(byteArray2));
            httpUriRequest = httpPost;
        }
        HttpResponse execute = m5786h.execute(httpUriRequest);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode != 200) {
            throw new C2573a("http status code error:" + statusCode);
        }
        return new bqt.C2584a(m5791b(execute), i);
    }

    /* renamed from: b */
    private static String m5791b(HttpResponse httpResponse) {
        InputStream content = httpResponse.getEntity().getContent();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Header firstHeader = httpResponse.getFirstHeader("Content-Encoding");
        InputStream gZIPInputStream = (firstHeader == null || firstHeader.getValue().toLowerCase().indexOf("gzip") <= -1) ? content : new GZIPInputStream(content);
        byte[] bArr = new byte[512];
        while (true) {
            int read = gZIPInputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                String str = new String(byteArrayOutputStream.toByteArray(), "UTF-8");
                gZIPInputStream.close();
                return str;
            }
        }
    }

    /* renamed from: h */
    public static HttpClient m5786h(Context context, String str, String str2) {
        int i;
        int i2 = 0;
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        if (Build.VERSION.SDK_INT < 16) {
            try {
                KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
                keyStore.load(null, null);
                C2575c c2575c = new C2575c(keyStore);
                c2575c.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
                schemeRegistry.register(new Scheme("https", c2575c, 443));
            } catch (Exception e) {
                schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
            }
        } else {
            schemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
        }
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        bqp m5779L = context != null ? bqp.m5779L(context, str) : null;
        if (m5779L != null) {
            i = m5779L.m5774a("Common_HttpConnectionTimeout");
            i2 = m5779L.m5774a("Common_SocketConnectionTimeout");
        } else {
            i = 0;
        }
        if (i == 0) {
            i = 15000;
        }
        if (i2 == 0) {
            i2 = 30000;
        }
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, i);
        HttpConnectionParams.setSoTimeout(basicHttpParams, i2);
        HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
        HttpProtocolParams.setUserAgent(basicHttpParams, "AndroidSDK_" + Build.VERSION.SDK + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + Build.DEVICE + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + Build.VERSION.RELEASE);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams);
        C2577e m5790bL = m5790bL(context);
        if (m5790bL != null) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(m5790bL.f2034a, m5790bL.f2035b));
        }
        return defaultHttpClient;
    }

    /* renamed from: f */
    public static String m5787f(Bundle bundle) {
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if ((obj instanceof String) || (obj instanceof String[])) {
                if (obj instanceof String[]) {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str) + "=");
                    String[] stringArray = bundle.getStringArray(str);
                    if (stringArray != null) {
                        for (int i = 0; i < stringArray.length; i++) {
                            if (i == 0) {
                                sb.append(URLEncoder.encode(stringArray[i]));
                            } else {
                                sb.append(URLEncoder.encode("," + stringArray[i]));
                            }
                        }
                    }
                } else {
                    if (z) {
                        z = false;
                    } else {
                        sb.append("&");
                    }
                    sb.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(bundle.getString(str)));
                }
                z = z;
            }
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m5788c(Bundle bundle, String str) {
        Object obj;
        if (bundle == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = bundle.size();
        int i = -1;
        for (String str2 : bundle.keySet()) {
            int i2 = i + 1;
            if (bundle.get(str2) instanceof String) {
                sb.append("Content-Disposition: form-data; name=\"" + str2 + "\"\r\n\r\n" + ((String) obj));
                if (i2 < size - 1) {
                    sb.append("\r\n--" + str + "\r\n");
                }
                i = i2;
            } else {
                i = i2;
            }
        }
        return sb.toString();
    }

    /* renamed from: bL */
    public static C2577e m5790bL(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        if (context != null && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            if (activeNetworkInfo.getType() == 0) {
                String m5792b = m5792b(context);
                int m5789bM = m5789bM(context);
                if (!TextUtils.isEmpty(m5792b) && m5789bM >= 0) {
                    return new C2577e(m5792b, m5789bM);
                }
            }
            return null;
        }
        return null;
    }

    /* renamed from: com.kingroot.kinguser.bqm$e */
    /* loaded from: classes.dex */
    public static class C2577e {

        /* renamed from: a */
        public final String f2034a;

        /* renamed from: b */
        public final int f2035b;

        private C2577e(String str, int i) {
            this.f2034a = str;
            this.f2035b = i;
        }
    }

    /* renamed from: bM */
    private static int m5789bM(Context context) {
        if (Build.VERSION.SDK_INT < 11) {
            if (context != null) {
                int port = Proxy.getPort(context);
                if (port < 0) {
                    return Proxy.getDefaultPort();
                }
                return port;
            }
            return Proxy.getDefaultPort();
        }
        String property = System.getProperty("http.proxyPort");
        if (TextUtils.isEmpty(property)) {
            return -1;
        }
        try {
            return Integer.parseInt(property);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /* renamed from: b */
    private static String m5792b(Context context) {
        if (Build.VERSION.SDK_INT < 11) {
            if (context != null) {
                String host = Proxy.getHost(context);
                if (TextUtils.isEmpty(host)) {
                    return Proxy.getDefaultHost();
                }
                return host;
            }
            return Proxy.getDefaultHost();
        }
        return System.getProperty("http.proxyHost");
    }

    /* renamed from: com.kingroot.kinguser.bqm$c */
    /* loaded from: classes.dex */
    public static class C2575c extends SSLSocketFactory {
        private final SSLContext bIF;

        public C2575c(KeyStore keyStore) {
            super(keyStore);
            C2576d c2576d;
            this.bIF = SSLContext.getInstance("TLS");
            try {
                c2576d = new C2576d();
            } catch (Exception e) {
                c2576d = null;
            }
            this.bIF.init(null, new TrustManager[]{c2576d}, null);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.bIF.getSocketFactory().createSocket(socket, str, i, z);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
        public Socket createSocket() {
            return this.bIF.getSocketFactory().createSocket();
        }
    }

    /* renamed from: com.kingroot.kinguser.bqm$d */
    /* loaded from: classes.dex */
    public static class C2576d implements X509TrustManager {
        X509TrustManager bIG;

        C2576d() {
            KeyStore keyStore;
            FileInputStream fileInputStream;
            Throwable th;
            FileInputStream fileInputStream2;
            TrustManager[] trustManagers;
            try {
                keyStore = KeyStore.getInstance("JKS");
            } catch (Exception e) {
                keyStore = null;
            }
            TrustManager[] trustManagerArr = new TrustManager[0];
            if (keyStore != null) {
                try {
                    fileInputStream2 = new FileInputStream("trustedCerts");
                } catch (Throwable th2) {
                    fileInputStream = null;
                    th = th2;
                }
                try {
                    keyStore.load(fileInputStream2, "passphrase".toCharArray());
                    TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance("SunX509", "SunJSSE");
                    trustManagerFactory.init(keyStore);
                    trustManagers = trustManagerFactory.getTrustManagers();
                    if (fileInputStream2 != null) {
                        fileInputStream2.close();
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } else {
                TrustManagerFactory trustManagerFactory2 = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
                trustManagerFactory2.init((KeyStore) null);
                trustManagers = trustManagerFactory2.getTrustManagers();
            }
            for (int i = 0; i < trustManagers.length; i++) {
                if (trustManagers[i] instanceof X509TrustManager) {
                    this.bIG = (X509TrustManager) trustManagers[i];
                    return;
                }
            }
            throw new Exception("Couldn't initialize");
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            this.bIG.checkClientTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            this.bIG.checkServerTrusted(x509CertificateArr, str);
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.bIG.getAcceptedIssuers();
        }
    }
}
