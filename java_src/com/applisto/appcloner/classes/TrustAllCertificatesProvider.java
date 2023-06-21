package com.applisto.appcloner.classes;

import com.applisto.appcloner.classes.util.Log;
import com.applisto.appcloner.classes.util.activity.AbstractContentProvider;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
/* loaded from: classes2.dex */
public class TrustAllCertificatesProvider extends AbstractContentProvider {
    private static final String TAG = TrustAllCertificatesProvider.class.getSimpleName();

    @Override // com.applisto.appcloner.classes.util.activity.AbstractContentProvider, android.content.ContentProvider
    public boolean onCreate() {
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.applisto.appcloner.classes.TrustAllCertificatesProvider.1
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }};
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            HttpsURLConnection.setDefaultSSLSocketFactory(sSLContext.getSocketFactory());
            Log.m13704i(TAG, "onCreate; now trusting all certificates...");
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
        return true;
    }
}
