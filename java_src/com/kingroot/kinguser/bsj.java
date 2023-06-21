package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.os.Bundle;
import org.apache.http.HttpHost;
import org.apache.http.client.HttpClient;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
/* loaded from: classes.dex */
public class bsj {
    protected HttpParams bLG = null;
    private boolean bLH = false;
    private String bLI = null;
    private int bLJ = 0;
    protected InterfaceC2612a bLK = null;

    /* renamed from: com.kingroot.kinguser.bsj$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2612a {
        /* renamed from: g */
        void m5566g(Bundle bundle);

        /* renamed from: h */
        void m5565h(Bundle bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m5567a(int i, Bundle bundle) {
        if (this.bLK != null) {
            if (i == 1) {
                this.bLK.m5566g(bundle);
            } else if (i == 2) {
                this.bLK.m5565h(bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpClient ahT() {
        if (this.bLG == null) {
            this.bLG = new BasicHttpParams();
        }
        HttpConnectionParams.setConnectionTimeout(this.bLG, XCallback.PRIORITY_HIGHEST);
        HttpConnectionParams.setSoTimeout(this.bLG, 20000);
        HttpConnectionParams.setSocketBufferSize(this.bLG, 4096);
        HttpClientParams.setRedirecting(this.bLG, true);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(this.bLG);
        if (this.bLH) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(this.bLI, this.bLJ));
        }
        return defaultHttpClient;
    }
}
