package oicq.wlogin_sdk.quicklogin;

import android.os.Build;
import android.webkit.WebView;
/* renamed from: oicq.wlogin_sdk.quicklogin.g */
/* loaded from: classes.dex */
class RunnableC4327g implements Runnable {

    /* renamed from: a */
    final /* synthetic */ WebView f5146a;

    /* renamed from: b */
    final /* synthetic */ String f5147b;

    /* renamed from: c */
    final /* synthetic */ String f5148c;

    /* renamed from: d */
    final /* synthetic */ QuickLoginWebViewActivity f5149d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC4327g(QuickLoginWebViewActivity quickLoginWebViewActivity, WebView webView, String str, String str2) {
        this.f5149d = quickLoginWebViewActivity;
        this.f5146a = webView;
        this.f5147b = str;
        this.f5148c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f5146a.loadUrl(this.f5147b);
            this.f5146a.evaluateJavascript(this.f5148c, null);
            return;
        }
        this.f5146a.loadUrl(this.f5148c);
        this.f5146a.loadUrl(this.f5147b);
    }
}
