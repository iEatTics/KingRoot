package oicq.wlogin_sdk.quicklogin;

import android.app.AlertDialog;
import android.content.Intent;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import oicq.wlogin_sdk.tools.C4393util;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: oicq.wlogin_sdk.quicklogin.d */
/* loaded from: classes.dex */
public class C4324d extends WebViewClient {

    /* renamed from: a */
    final /* synthetic */ WebView f5140a;

    /* renamed from: b */
    final /* synthetic */ QuickLoginWebViewActivity f5141b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C4324d(QuickLoginWebViewActivity quickLoginWebViewActivity, WebView webView) {
        this.f5141b = quickLoginWebViewActivity;
        this.f5140a = webView;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f5140a.loadUrl("javascript:function wtCB(uin, sig) { WTLogin.ptloginCallBack(uin, sig); }");
        }
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        C4393util.LOGI("ssl error " + sslError.getPrimaryError());
        if (true == QuickLoginWebViewActivity.f5135a) {
            sslErrorHandler.proceed();
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f5141b);
        builder.setMessage("页面证书错误(" + sslError.getPrimaryError() + ")，是否继续？");
        builder.setPositiveButton("继续", new DialogInterface$OnClickListenerC4325e(this, sslErrorHandler));
        builder.setNegativeButton("取消", new DialogInterface$OnClickListenerC4326f(this, sslErrorHandler));
        try {
            builder.create().show();
        } catch (Exception e) {
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (str != null) {
            try {
                webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            } catch (Exception e) {
                StringBuilder append = new StringBuilder().append("load url ");
                if (str == null) {
                    str = "";
                }
                C4393util.LOGI(append.append(str).append(" failed ").append(e.getMessage()).toString(), "");
                return true;
            }
        }
        return false;
    }
}
