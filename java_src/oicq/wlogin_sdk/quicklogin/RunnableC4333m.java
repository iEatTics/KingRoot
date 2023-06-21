package oicq.wlogin_sdk.quicklogin;

import android.os.Build;
import android.webkit.WebView;
/* renamed from: oicq.wlogin_sdk.quicklogin.m */
/* loaded from: classes.dex */
final class RunnableC4333m implements Runnable {

    /* renamed from: a */
    final /* synthetic */ WebView f5158a;

    /* renamed from: b */
    final /* synthetic */ String f5159b;

    /* renamed from: c */
    final /* synthetic */ String f5160c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC4333m(WebView webView, String str, String str2) {
        this.f5158a = webView;
        this.f5159b = str;
        this.f5160c = str2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.f5158a.loadUrl(this.f5159b);
            this.f5158a.evaluateJavascript(this.f5160c, null);
            return;
        }
        this.f5158a.loadUrl(this.f5160c);
        this.f5158a.loadUrl(this.f5159b);
    }
}
