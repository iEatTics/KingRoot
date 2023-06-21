package oicq.wlogin_sdk.quicklogin;

import android.app.Activity;
import android.content.Intent;
import android.webkit.JavascriptInterface;
/* loaded from: classes.dex */
public class QuikLoginJSInterface {

    /* renamed from: a */
    Activity f5136a;

    public QuikLoginJSInterface(Activity activity) {
        this.f5136a = activity;
    }

    @JavascriptInterface
    public void ptloginCallBack(String str, String str2) {
        Intent intent = new Intent();
        intent.putExtra("uin", str);
        intent.putExtra("sig", str2);
        intent.putExtra("isRetFromWeb", true);
        this.f5136a.setResult(-1, intent);
        this.f5136a.finish();
    }
}
