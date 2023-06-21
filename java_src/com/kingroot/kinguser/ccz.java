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
public class ccz {
    protected HttpParams bXq = null;

    /* renamed from: c */
    private boolean f2255c = false;

    /* renamed from: d */
    private String f2256d = null;

    /* renamed from: e */
    private int f2257e = 0;
    protected InterfaceC2703a bXr = null;

    /* renamed from: com.kingroot.kinguser.ccz$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2703a {
        /* renamed from: e */
        void mo405e(Bundle bundle);

        /* renamed from: i */
        void mo404i(Bundle bundle);
    }

    /* renamed from: a */
    public void m4882a(InterfaceC2703a interfaceC2703a) {
        this.bXr = interfaceC2703a;
    }

    /* renamed from: a */
    public void m4881a(String str, int i) {
        this.f2256d = str;
        this.f2257e = i;
    }

    /* renamed from: a */
    public void m4880a(boolean z) {
        this.f2255c = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public HttpClient akL() {
        if (this.bXq == null) {
            this.bXq = new BasicHttpParams();
        }
        HttpConnectionParams.setConnectionTimeout(this.bXq, XCallback.PRIORITY_HIGHEST);
        HttpConnectionParams.setSoTimeout(this.bXq, 20000);
        HttpConnectionParams.setSocketBufferSize(this.bXq, 4096);
        HttpClientParams.setRedirecting(this.bXq, true);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(this.bXq);
        if (this.f2255c) {
            defaultHttpClient.getParams().setParameter("http.route.default-proxy", new HttpHost(this.f2256d, this.f2257e));
        }
        return defaultHttpClient;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void m4879b(int i, Bundle bundle) {
        if (this.bXr != null) {
            if (i == 1) {
                this.bXr.mo404i(bundle);
            } else if (i == 2) {
                this.bXr.mo405e(bundle);
            }
        }
    }
}
