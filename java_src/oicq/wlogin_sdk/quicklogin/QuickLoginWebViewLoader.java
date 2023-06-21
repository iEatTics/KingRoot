package oicq.wlogin_sdk.quicklogin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.view.accessibility.AccessibilityManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.lang.reflect.Method;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class QuickLoginWebViewLoader {
    static boolean sslErrorProcessed = false;

    public static void disableAccessibility(Context context) {
        if (Build.VERSION.SDK_INT == 17) {
            try {
                AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
                if (accessibilityManager.isEnabled()) {
                    Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod("setState", Integer.TYPE);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(accessibilityManager, 0);
                }
            } catch (Error e) {
            } catch (Exception e2) {
            }
        }
    }

    public static void load(Activity activity, Intent intent) {
        String str;
        QuikLoginJSInterface quikLoginJSInterface = new QuikLoginJSInterface(activity);
        sslErrorProcessed = false;
        long longExtra = intent.getLongExtra("appid", 0L);
        String stringExtra = intent.getStringExtra("account");
        int i = true == intent.getBooleanExtra("isUserAccountLocked", false) ? 1 : 0;
        int i2 = true == intent.getBooleanExtra("forceWebLogin", false) ? 1 : 0;
        if (0 == longExtra) {
            C4393util.LOGI("QuickLoginWebViewActivity get appid failed");
            return;
        }
        RelativeLayout relativeLayout = new RelativeLayout(activity);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        int height = activity.getWindowManager().getDefaultDisplay().getHeight();
        int i3 = (int) (0.07d * height);
        TextView textView = new TextView(activity);
        textView.setBackgroundColor(Color.parseColor("#3F51B5"));
        textView.setTextColor(Color.parseColor("#FFFFFF"));
        textView.setText("");
        textView.setLayoutParams(new RelativeLayout.LayoutParams(-1, i3));
        relativeLayout.addView(textView);
        Button button = new Button(activity);
        button.setBackgroundColor(Color.parseColor("#3F51B5"));
        button.setTextColor(Color.parseColor("#FFFFFF"));
        button.setText("关闭");
        button.setPadding(15, button.getPaddingTop(), 15, button.getPaddingBottom());
        button.setLayoutParams(new RelativeLayout.LayoutParams(-2, i3));
        relativeLayout.addView(button);
        button.setOnClickListener(new View$OnClickListenerC4328h(activity));
        try {
            WebView webView = new WebView(activity);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, height - i3);
            layoutParams.setMargins(0, i3, 0, 0);
            webView.setLayoutParams(layoutParams);
            relativeLayout.addView(webView);
            activity.setContentView(relativeLayout);
            WebSettings settings = webView.getSettings();
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            if (17 <= Build.VERSION.SDK_INT) {
                webView.addJavascriptInterface(new QuikLoginJSInterface(activity), "WTLogin");
                str = "javascript:function wtCB(uin, sig) { WTLogin.ptloginCallBack(uin, sig); }";
            } else {
                str = "javascript:function wtCB(uin, sig) { return prompt(JSON.stringify({ uin:''+uin, sig:''+sig})); }";
            }
            disableAccessibility(activity);
            settings.setJavaScriptEnabled(true);
            if (Build.VERSION.SDK_INT >= 11) {
                webView.removeJavascriptInterface("searchBoxJavaBridge_");
                webView.removeJavascriptInterface("accessibility");
                webView.removeJavascriptInterface("accessibilityTraversal");
            }
            if (17 > Build.VERSION.SDK_INT) {
                webView.setWebChromeClient(new C4329i(quikLoginJSInterface));
            }
            webView.setWebViewClient(new C4330j(activity, webView));
            activity.runOnUiThread(new RunnableC4333m(webView, "https://xui.ptlogin2.qq.com/cgi-bin/xlogin?appid=" + longExtra + "&style=42&s_url=http://wtlogin.qq.com/&pt_no_onekey=1&pt_no_auth=1&daid=499&wt_force_pwd=" + i2 + ((stringExtra == null || stringExtra.length() == 0) ? "" : "&default_uin=" + stringExtra + "&pt_lock_uin=" + i), str));
        } catch (Exception e) {
            C4393util.LOGI("create webview failed " + e.getMessage(), "");
        }
    }
}
