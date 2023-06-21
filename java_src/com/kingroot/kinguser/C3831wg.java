package com.kingroot.kinguser;

import android.text.TextUtils;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
/* renamed from: com.kingroot.kinguser.wg */
/* loaded from: classes.dex */
public class C3831wg implements X509TrustManager {

    /* renamed from: ME */
    private static TrustManager[] f3865ME;

    /* renamed from: MF */
    private static final X509Certificate[] f3866MF = new X509Certificate[0];

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
        return f3866MF;
    }

    /* renamed from: np */
    public static void m1564np() {
        HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier() { // from class: com.kingroot.kinguser.wg.1
            @Override // javax.net.ssl.HostnameVerifier
            public boolean verify(String str, SSLSession sSLSession) {
                return !TextUtils.isEmpty(str);
            }
        });
        if (f3865ME == null) {
            f3865ME = new TrustManager[]{new C3831wg()};
        }
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, f3865ME, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (KeyManagementException e) {
        } catch (NoSuchAlgorithmException e2) {
        }
    }
}
