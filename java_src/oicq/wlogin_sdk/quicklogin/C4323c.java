package oicq.wlogin_sdk.quicklogin;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import oicq.wlogin_sdk.tools.C4393util;
import org.json.JSONObject;
/* renamed from: oicq.wlogin_sdk.quicklogin.c */
/* loaded from: classes.dex */
class C4323c extends WebChromeClient {

    /* renamed from: a */
    final /* synthetic */ QuikLoginJSInterface f5138a;

    /* renamed from: b */
    final /* synthetic */ QuickLoginWebViewActivity f5139b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C4323c(QuickLoginWebViewActivity quickLoginWebViewActivity, QuikLoginJSInterface quikLoginJSInterface) {
        this.f5139b = quickLoginWebViewActivity;
        this.f5138a = quikLoginJSInterface;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        try {
            JSONObject jSONObject = new JSONObject(str2);
            this.f5138a.ptloginCallBack(jSONObject.getString("uin"), jSONObject.getString("sig"));
            return true;
        } catch (Exception e) {
            C4393util.LOGI("onJsPrompt failed message " + str2, "");
            return true;
        }
    }
}
