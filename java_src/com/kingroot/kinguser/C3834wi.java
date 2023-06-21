package com.kingroot.kinguser;

import android.os.Build;
import java.lang.reflect.Field;
import java.net.InetAddress;
import java.net.Socket;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
/* renamed from: com.kingroot.kinguser.wi */
/* loaded from: classes.dex */
public class C3834wi extends SSLSocketFactory {

    /* renamed from: MH */
    private static C3834wi f3867MH;

    /* renamed from: MG */
    private javax.net.ssl.SSLSocketFactory f3868MG;

    private C3834wi() {
        super(null);
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, new TrustManager[]{new C3835a()}, null);
        this.f3868MG = sSLContext.getSocketFactory();
        setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
    }

    /* renamed from: nq */
    public static SocketFactory m1561nq() {
        if (f3867MH == null) {
            try {
                f3867MH = new C3834wi();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return f3867MH;
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return this.f3868MG.createSocket();
    }

    @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) {
        if (Build.VERSION.SDK_INT < 11) {
            m1562a(socket, str);
        }
        return this.f3868MG.createSocket(socket, str, i, z);
    }

    /* renamed from: a */
    private void m1562a(Socket socket, String str) {
        try {
            Field declaredField = InetAddress.class.getDeclaredField("hostName");
            declaredField.setAccessible(true);
            declaredField.set(socket.getInetAddress(), str);
        } catch (Exception e) {
        }
    }

    /* renamed from: com.kingroot.kinguser.wi$a */
    /* loaded from: classes.dex */
    public class C3835a implements X509TrustManager {
        public C3835a() {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                x509Certificate.checkValidity();
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            for (X509Certificate x509Certificate : x509CertificateArr) {
                x509Certificate.checkValidity();
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }
}
