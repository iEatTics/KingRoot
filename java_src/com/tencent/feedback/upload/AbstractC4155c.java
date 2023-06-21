package com.tencent.feedback.upload;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.net.Proxy;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4079h;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.protocol.HttpContext;
/* renamed from: com.tencent.feedback.upload.c */
/* loaded from: classes.dex */
public abstract class AbstractC4155c {

    /* renamed from: a */
    private static AbstractC4155c f4830a = null;

    /* renamed from: a */
    public abstract byte[] mo530a(String str, byte[] bArr, C4154b c4154b, Map<String, String> map);

    /* renamed from: a */
    public static synchronized AbstractC4155c m532a(Context context) {
        AbstractC4155c abstractC4155c;
        Context applicationContext;
        synchronized (AbstractC4155c.class) {
            if (f4830a == null) {
                if (context != null && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                f4830a = new C4156a(context);
            }
            abstractC4155c = f4830a;
        }
        return abstractC4155c;
    }

    /* renamed from: com.tencent.feedback.upload.c$a */
    /* loaded from: classes.dex */
    public static class C4156a extends AbstractC4155c {

        /* renamed from: a */
        private Context f4831a;

        public C4156a(Context context) {
            Context applicationContext;
            if (context != null && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            this.f4831a = context;
        }

        /* JADX WARN: Code restructure failed: missing block: B:65:0x0108, code lost:
            return null;
         */
        @Override // com.tencent.feedback.upload.AbstractC4155c
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final byte[] mo530a(String str, byte[] bArr, C4154b c4154b, Map<String, String> map) {
            boolean z;
            int i;
            int i2;
            if (str == null) {
                C4073e.m1012d("rqdp{  no destUrl!}", new Object[0]);
                return null;
            }
            int i3 = 0;
            int i4 = 0;
            long length = bArr == null ? 0L : bArr.length;
            C4073e.m1015b("rqdp{  start req} %s rqdp{  sz:}%d", str, Long.valueOf(length));
            boolean z2 = false;
            while (true) {
                int i5 = i3 + 1;
                if (i3 >= 3 || i4 >= 2) {
                    break;
                }
                if (z2) {
                    z2 = false;
                } else if (i5 > 1) {
                    C4073e.m1015b("rqdp{  try time} " + i5, new Object[0]);
                    try {
                        Thread.sleep(10000L);
                    } catch (InterruptedException e) {
                        if (!C4073e.m1016a(e)) {
                            e.printStackTrace();
                        }
                    }
                }
                String m975c = C4079h.m975c(this.f4831a);
                if (c4154b != null) {
                    c4154b.m534a(str, length, m975c);
                }
                HttpResponse m529a = m529a(str, bArr, m975c, map);
                if (m529a != null) {
                    HttpEntity entity = m529a.getEntity();
                    int statusCode = m529a.getStatusLine().getStatusCode();
                    if (statusCode == 200) {
                        byte[] m528a = m528a(m529a);
                        if (c4154b != null) {
                            c4154b.m535a(m528a == null ? 0L : m528a.length);
                        }
                        return m528a;
                    }
                    if (statusCode == 301 || statusCode == 302 || statusCode == 303 || statusCode == 307) {
                        z = true;
                        Header firstHeader = m529a.getFirstHeader("Location");
                        if (firstHeader == null) {
                            C4073e.m1012d("rqdp{  redirect code:}" + statusCode + "rqdp{   Location is null! return}", new Object[0]);
                            return null;
                        }
                        i2 = i4 + 1;
                        i = 0;
                        str = firstHeader.getValue();
                        C4073e.m1015b("rqdp{  redirect code:}%d rqdp{  , to:}%s", Integer.valueOf(statusCode), str);
                    } else {
                        z = z2;
                        i = i5;
                        i2 = i4;
                    }
                    long j = 0;
                    if (entity != null) {
                        j = entity.getContentLength();
                        if (j < 0) {
                            j = 0;
                        }
                    }
                    if (c4154b != null) {
                        c4154b.m535a(j);
                    }
                    z2 = z;
                    i4 = i2;
                    i3 = i;
                } else {
                    if (c4154b != null) {
                        c4154b.m535a(0L);
                    }
                    i3 = i5;
                }
            }
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
            	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
            	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        /* renamed from: a */
        private org.apache.http.HttpResponse m529a(java.lang.String r9, byte[] r10, java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12) {
            /*
                Method dump skipped, instructions count: 243
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tencent.feedback.upload.AbstractC4155c.C4156a.m529a(java.lang.String, byte[], java.lang.String, java.util.Map):org.apache.http.HttpResponse");
        }

        /* renamed from: a */
        private static byte[] m528a(HttpResponse httpResponse) {
            BufferedInputStream bufferedInputStream;
            byte[] bArr = null;
            if (httpResponse != null) {
                int statusCode = httpResponse.getStatusLine().getStatusCode();
                if (statusCode != 200) {
                    C4073e.m1013c("rqdp{  request failure code:}%d rqdp{  , line:}%s ", Integer.valueOf(statusCode), httpResponse.getStatusLine());
                } else {
                    HttpEntity entity = httpResponse.getEntity();
                    if (entity == null) {
                        C4073e.m1012d("rqdp{  no response datas!}", new Object[0]);
                    } else {
                        try {
                            bufferedInputStream = new BufferedInputStream(new DataInputStream(entity.getContent()));
                        } catch (Throwable th) {
                            th = th;
                            bufferedInputStream = null;
                        }
                        try {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            while (true) {
                                int read = bufferedInputStream.read();
                                if (read == -1) {
                                    break;
                                }
                                byteArrayOutputStream.write(read);
                            }
                            byteArrayOutputStream.flush();
                            bArr = byteArrayOutputStream.toByteArray();
                            try {
                                bufferedInputStream.close();
                            } catch (Throwable th2) {
                                if (!C4073e.m1016a(th2)) {
                                    th2.printStackTrace();
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                if (!C4073e.m1016a(th)) {
                                    th.printStackTrace();
                                }
                                C4073e.m1012d("rqdp{  read error} %s", th.toString());
                                return bArr;
                            } finally {
                                if (bufferedInputStream != null) {
                                    try {
                                        bufferedInputStream.close();
                                    } catch (Throwable th4) {
                                        if (!C4073e.m1016a(th4)) {
                                            th4.printStackTrace();
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return bArr;
        }

        /* renamed from: a */
        private HttpClient m531a(String str) {
            try {
                BasicHttpParams basicHttpParams = new BasicHttpParams();
                HttpConnectionParams.setConnectionTimeout(basicHttpParams, 30000);
                HttpConnectionParams.setSoTimeout(basicHttpParams, XCallback.PRIORITY_HIGHEST);
                HttpConnectionParams.setSocketBufferSize(basicHttpParams, 2000);
                basicHttpParams.setBooleanParameter("http.protocol.handle-redirects", false);
                DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
                defaultHttpClient.setHttpRequestRetryHandler(new HttpRequestRetryHandler(this) { // from class: com.tencent.feedback.upload.c.a.1
                    public final boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
                        return false;
                    }
                });
                if (str != null && str.toLowerCase(Locale.US).contains("wap")) {
                    C4073e.m1017a("rqdp{  use proxy} %s", str);
                    defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(Proxy.getDefaultHost(), Proxy.getDefaultPort()));
                } else {
                    defaultHttpClient.getParams().removeParameter("http.route.default-proxy");
                }
                return defaultHttpClient;
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  httpclient error!}", new Object[0]);
                return null;
            }
        }
    }
}
