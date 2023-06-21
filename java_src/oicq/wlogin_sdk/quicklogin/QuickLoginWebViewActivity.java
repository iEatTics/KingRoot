package oicq.wlogin_sdk.quicklogin;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class QuickLoginWebViewActivity extends Activity {

    /* renamed from: a */
    static boolean f5135a = false;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        QuikLoginJSInterface quikLoginJSInterface = new QuikLoginJSInterface(this);
        f5135a = false;
        Intent intent = getIntent();
        long longExtra = intent.getLongExtra("appid", 0L);
        String stringExtra = intent.getStringExtra("account");
        int i = true == intent.getBooleanExtra("isUserAccountLocked", false) ? 1 : 0;
        int i2 = true == intent.getBooleanExtra("forceWebLogin", false) ? 1 : 0;
        if (0 == longExtra) {
            C4393util.LOGI("QuickLoginWebViewActivity get appid failed");
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        int height = getWindowManager().getDefaultDisplay().getHeight();
        int i3 = (int) (0.07d * height);
        TextView textView = new TextView(this);
        textView.setBackgroundColor(Color.parseColor("#3F51B5"));
        textView.setTextColor(Color.parseColor("#FFFFFF"));
        textView.setText("");
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3));
        relativeLayout.addView(textView);
        Button button = new Button(this);
        button.setBackgroundColor(Color.parseColor("#3F51B5"));
        button.setTextColor(Color.parseColor("#FFFFFF"));
        button.setText("关闭");
        button.setPadding(15, button.getPaddingTop(), 15, button.getPaddingBottom());
        button.setLayoutParams(new RelativeLayout.LayoutParams(-2, i3));
        relativeLayout.addView(button);
        button.setOnClickListener(new View$OnClickListenerC4322b(this));
        try {
            WebView webView = new WebView(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, height - i3);
            layoutParams.setMargins(0, i3, 0, 0);
            webView.setLayoutParams(layoutParams);
            relativeLayout.addView(webView);
            setContentView(relativeLayout);
            WebSettings settings = webView.getSettings();
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            if (17 <= Build.VERSION.SDK_INT) {
                webView.addJavascriptInterface(new QuikLoginJSInterface(this), "WTLogin");
                str = "javascript:function wtCB(uin, sig) { WTLogin.ptloginCallBack(uin, sig); }";
            } else {
                str = "javascript:function wtCB(uin, sig) { return prompt(JSON.stringify({ uin:''+uin, sig:''+sig})); }";
            }
            QuickLoginWebViewLoader.disableAccessibility(this);
            settings.setJavaScriptEnabled(true);
            if (Build.VERSION.SDK_INT >= 11) {
                webView.removeJavascriptInterface("searchBoxJavaBridge_");
                webView.removeJavascriptInterface("accessibility");
                webView.removeJavascriptInterface("accessibilityTraversal");
            }
            if (17 > Build.VERSION.SDK_INT) {
                webView.setWebChromeClient(new C4323c(this, quikLoginJSInterface));
            }
            webView.setWebViewClient(new C4324d(this, webView));
            runOnUiThread(new RunnableC4327g(this, webView, "https://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid=" + longExtra + "&style=42&s_url=http://wtlogin.qq.com/&pt_no_onekey=1&pt_no_auth=1&daid=499&wt_force_pwd=" + i2 + ((stringExtra == null || stringExtra.length() == 0) ? "" : "&default_uin=" + stringExtra + "&pt_lock_uin=" + i), str));
        } catch (Exception e) {
            C4393util.LOGI("create webview failed " + e.getMessage(), "");
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            finish();
            return false;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case 16908332:
                finish();
                return super.onOptionsItemSelected(menuItem);
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }
}
