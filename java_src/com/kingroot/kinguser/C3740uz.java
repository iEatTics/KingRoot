package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* renamed from: com.kingroot.kinguser.uz */
/* loaded from: classes.dex */
public class C3740uz {

    /* renamed from: com.kingroot.kinguser.uz$c */
    /* loaded from: classes.dex */
    public interface InterfaceC3745c {
        /* renamed from: db */
        void mo1923db(@NonNull String str);
    }

    /* renamed from: a */
    public static void m1926a(@NonNull Context context, @NonNull String str, @NonNull InterfaceC3745c interfaceC3745c) {
        if (!TextUtils.isEmpty(str)) {
            WebView webView = new WebView(context);
            webView.getSettings().setSupportZoom(false);
            webView.getSettings().setJavaScriptEnabled(true);
            try {
                if (Build.VERSION.SDK_INT >= 11) {
                    webView.removeJavascriptInterface("searchBoxJavaBridge_");
                }
            } catch (Throwable th) {
            }
            webView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
            webView.setWebViewClient(new C3742a());
            webView.setDownloadListener(new C3743b(interfaceC3745c, webView));
            webView.loadUrl(str);
        }
    }

    /* renamed from: com.kingroot.kinguser.uz$b */
    /* loaded from: classes.dex */
    static class C3743b implements DownloadListener {

        /* renamed from: JE */
        InterfaceC3745c f3683JE;

        /* renamed from: JF */
        WebView f3684JF;

        public C3743b(InterfaceC3745c interfaceC3745c, WebView webView) {
            this.f3683JE = interfaceC3745c;
            this.f3684JF = webView;
            C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.uz.b.1
                @Override // java.lang.Runnable
                public void run() {
                    C3743b.this.m1924le();
                }
            }, 30000L);
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            if (this.f3683JE != null) {
                this.f3683JE.mo1923db(aab.m13016dH(str));
                m1924le();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: le */
        public void m1924le() {
            try {
                if (this.f3684JF != null) {
                    this.f3684JF.stopLoading();
                    if (abd.m12839qb() >= 16) {
                        this.f3684JF.destroy();
                    }
                    this.f3684JF = null;
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.uz$a */
    /* loaded from: classes.dex */
    static class C3742a extends WebViewClient {
        private C3742a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            try {
                webView.loadUrl(str);
                return true;
            } catch (Throwable th) {
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }
    }
}
