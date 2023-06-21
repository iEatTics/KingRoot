package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.kingroot.kinguser.bnq;
import com.tencent.open.web.security.JniInterface;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bnp extends Dialog {

    /* renamed from: a */
    private String f1772a;
    private FrameLayout bEA;
    private LinearLayout bEB;
    private FrameLayout bEC;
    private ProgressBar bED;
    private bql bEE;
    private Context bEF;
    private bqy bEG;
    private long bEH;
    private long bEI;
    private HashMap<String, Runnable> bEJ;
    private bwd bEm;
    private C2531b bEy;
    private Handler bEz;

    /* renamed from: i */
    private String f1773i;

    /* renamed from: m */
    private boolean f1774m;

    /* renamed from: n */
    private int f1775n;

    /* renamed from: o */
    private String f1776o;

    /* renamed from: p */
    private String f1777p;

    /* renamed from: a */
    static /* synthetic */ String m6195a(bnp bnpVar, Object obj) {
        String str = bnpVar.f1772a + obj;
        bnpVar.f1772a = str;
        return str;
    }

    /* renamed from: m */
    static /* synthetic */ int m6173m(bnp bnpVar) {
        int i = bnpVar.f1775n;
        bnpVar.f1775n = i + 1;
        return i;
    }

    static {
        try {
            Context agA = bqo.agA();
            if (agA != null) {
                if (new File(agA.getFilesDir().toString() + "/" + bnn.bEl).exists()) {
                    System.load(agA.getFilesDir().toString() + "/" + bnn.bEl);
                    bpy.m5845aT("openSDK_LOG.AuthDialog", "-->load lib success:" + bnn.bEl);
                } else {
                    bpy.m5845aT("openSDK_LOG.AuthDialog", "-->fail, because so is not exists:" + bnn.bEl);
                }
            } else {
                bpy.m5845aT("openSDK_LOG.AuthDialog", "-->load lib fail, because context is null:" + bnn.bEl);
            }
        } catch (Exception e) {
            bpy.m5843b("openSDK_LOG.AuthDialog", "-->load lib error:" + bnn.bEl, e);
        }
    }

    public bnp(Context context, String str, String str2, bwd bwdVar, bno bnoVar) {
        super(context, 16973840);
        this.f1774m = false;
        this.bEH = 0L;
        this.bEI = 30000L;
        this.bEF = context;
        this.f1772a = str2;
        this.bEy = new C2531b(str, str2, bnoVar.agm(), bwdVar);
        this.bEz = new HandlerC2532c(this.bEy, context.getMainLooper());
        this.bEm = bwdVar;
        this.f1773i = str;
        this.bEG = new bqy();
        getWindow().setSoftInputMode(32);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        m6190b();
        m6184d();
        this.bEJ = new HashMap<>();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (!this.f1774m) {
            this.bEy.onCancel();
        }
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
    }

    /* renamed from: com.kingroot.kinguser.bnp$c */
    /* loaded from: classes.dex */
    class HandlerC2532c extends Handler {
        private C2531b bEy;

        public HandlerC2532c(C2531b c2531b, Looper looper) {
            super(looper);
            this.bEy = c2531b;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.bEy.m6168a((String) message.obj);
                    return;
                case 2:
                    this.bEy.onCancel();
                    return;
                case 3:
                    bnp.m6200I(bnp.this.bEF, (String) message.obj);
                    return;
                default:
                    return;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bnp$b */
    /* loaded from: classes.dex */
    class C2531b implements bwd {

        /* renamed from: a */
        String f1778a;

        /* renamed from: b */
        String f1779b;

        /* renamed from: d */
        private String f1780d;

        /* renamed from: e */
        private bwd f1781e;

        public C2531b(String str, String str2, String str3, bwd bwdVar) {
            this.f1780d = str;
            this.f1778a = str2;
            this.f1779b = str3;
            this.f1781e = bwdVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m6168a(String str) {
            try {
                onComplete(bqt.m5735mU(str));
            } catch (JSONException e) {
                e.printStackTrace();
                onError(new bwf(-4, "服务器返回数据格式有误!", str));
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onComplete(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            bqj.ahn().m5802a(this.f1780d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, jSONObject.optInt("ret", -6), this.f1778a, false);
            if (this.f1781e != null) {
                this.f1781e.onComplete(jSONObject);
                this.f1781e = null;
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onError(bwf bwfVar) {
            String str = bwfVar.bQW != null ? bwfVar.bQW + this.f1778a : this.f1778a;
            bqj.ahn().m5802a(this.f1780d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, bwfVar.errorCode, str, false);
            bnp.this.m6191al(str);
            if (this.f1781e != null) {
                this.f1781e.onError(bwfVar);
                this.f1781e = null;
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onCancel() {
            if (this.f1781e != null) {
                this.f1781e.onCancel();
                this.f1781e = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: al */
    public String m6191al(String str) {
        StringBuilder sb = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.f1777p) && this.f1777p.length() >= 4) {
            sb.append("_u_").append(this.f1777p.substring(this.f1777p.length() - 4));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bnp$a */
    /* loaded from: classes.dex */
    public class C2529a extends WebViewClient {
        private C2529a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            bpy.m5848a("openSDK_LOG.AuthDialog", "-->Redirect URL: " + str);
            if (str.startsWith("auth://browser")) {
                JSONObject m5736mT = bqt.m5736mT(str);
                bnp.this.f1774m = bnp.this.m6182e();
                if (!bnp.this.f1774m) {
                    if (m5736mT.optString("fail_cb", null) != null) {
                        bnp.this.m6192a(m5736mT.optString("fail_cb"), "");
                    } else if (m5736mT.optInt("fall_to_wv") == 1) {
                        bnp.m6195a(bnp.this, (Object) (bnp.this.f1772a.indexOf("?") > -1 ? "&" : "?"));
                        bnp.m6195a(bnp.this, (Object) "browser_error=1");
                        bnp.this.bEE.loadUrl(bnp.this.f1772a);
                    } else {
                        String optString = m5736mT.optString("redir", null);
                        if (optString != null) {
                            bnp.this.bEE.loadUrl(optString);
                        }
                    }
                }
                return true;
            } else if (str.startsWith("auth://tauth.qq.com/")) {
                bnp.this.bEy.onComplete(bqt.m5736mT(str));
                bnp.this.dismiss();
                return true;
            } else if (str.startsWith("auth://cancel")) {
                bnp.this.bEy.onCancel();
                bnp.this.dismiss();
                return true;
            } else if (str.startsWith("auth://close")) {
                bnp.this.dismiss();
                return true;
            } else if (str.startsWith("download://")) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(str.substring("download://".length()))));
                    intent.addFlags(268435456);
                    bnp.this.bEF.startActivity(intent);
                } catch (Exception e) {
                    bpy.m5843b("openSDK_LOG.AuthDialog", "-->start download activity exception, e: ", e);
                }
                return true;
            } else if (str.startsWith("auth://progress")) {
                try {
                    List<String> pathSegments = Uri.parse(str).getPathSegments();
                    if (pathSegments.isEmpty()) {
                        return true;
                    }
                    int intValue = Integer.valueOf(pathSegments.get(0)).intValue();
                    if (intValue == 0) {
                        bnp.this.bEC.setVisibility(8);
                        bnp.this.bEE.setVisibility(0);
                    } else if (intValue == 1) {
                        bnp.this.bEC.setVisibility(0);
                    }
                    return true;
                } catch (Exception e2) {
                    return true;
                }
            } else if (!str.startsWith("auth://onLoginSubmit")) {
                if (bnp.this.bEG.mo5729a(bnp.this.bEE, str)) {
                    return true;
                }
                bpy.m5845aT("openSDK_LOG.AuthDialog", "-->Redirect URL: return false");
                return false;
            } else {
                try {
                    List<String> pathSegments2 = Uri.parse(str).getPathSegments();
                    if (!pathSegments2.isEmpty()) {
                        bnp.this.f1777p = pathSegments2.get(0);
                    }
                } catch (Exception e3) {
                }
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            bpy.m5845aT("openSDK_LOG.AuthDialog", "-->onReceivedError, errorCode: " + i + " | description: " + str);
            if (!bqt.m5744b(bnp.this.bEF)) {
                bnp.this.bEy.onError(new bwf(9001, "当前网络不可用，请稍后重试！", str2));
                bnp.this.dismiss();
            } else if (!bnp.this.f1776o.startsWith("http://qzs.qq.com/open/mobile/login/qzsjump.html?")) {
                long elapsedRealtime = SystemClock.elapsedRealtime() - bnp.this.bEH;
                if (bnp.this.f1775n >= 1 || elapsedRealtime >= bnp.this.bEI) {
                    bnp.this.bEE.loadUrl(bnp.this.m6198a());
                    return;
                }
                bnp.m6173m(bnp.this);
                bnp.this.bEz.postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bnp.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bnp.this.bEE.loadUrl(bnp.this.f1776o);
                    }
                }, 500L);
            } else {
                bnp.this.bEy.onError(new bwf(i, str, str2));
                bnp.this.dismiss();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            bpy.m5848a("openSDK_LOG.AuthDialog", "-->onPageStarted, url: " + str);
            super.onPageStarted(webView, str, bitmap);
            bnp.this.bEC.setVisibility(0);
            bnp.this.bEH = SystemClock.elapsedRealtime();
            if (!TextUtils.isEmpty(bnp.this.f1776o)) {
                bnp.this.bEz.removeCallbacks((Runnable) bnp.this.bEJ.remove(bnp.this.f1776o));
            }
            bnp.this.f1776o = str;
            RunnableC2533d runnableC2533d = new RunnableC2533d(bnp.this.f1776o);
            bnp.this.bEJ.put(str, runnableC2533d);
            bnp.this.bEz.postDelayed(runnableC2533d, 120000L);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            bpy.m5848a("openSDK_LOG.AuthDialog", "-->onPageFinished, url: " + str);
            bnp.this.bEC.setVisibility(8);
            if (bnp.this.bEE != null) {
                bnp.this.bEE.setVisibility(0);
            }
            if (!TextUtils.isEmpty(str)) {
                bnp.this.bEz.removeCallbacks((Runnable) bnp.this.bEJ.remove(str));
            }
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(8)
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.cancel();
            bnp.this.bEy.onError(new bwf(sslError.getPrimaryError(), "请求不合法，请检查手机安全设置，如系统时间、代理等。", "ssl error"));
            bnp.this.dismiss();
        }
    }

    /* renamed from: com.kingroot.kinguser.bnp$d */
    /* loaded from: classes.dex */
    class RunnableC2533d implements Runnable {

        /* renamed from: a */
        String f1782a;

        public RunnableC2533d(String str) {
            this.f1782a = "";
            this.f1782a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            bpy.m5848a("openSDK_LOG.AuthDialog", "-->timeoutUrl: " + this.f1782a + " | mRetryUrl: " + bnp.this.f1776o);
            if (this.f1782a.equals(bnp.this.f1776o)) {
                bnp.this.bEy.onError(new bwf(9002, "请求页面超时，请稍后重试！", bnp.this.f1776o));
                bnp.this.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m6198a() {
        String str = "http://qzs.qq.com/open/mobile/login/qzsjump.html?" + this.f1772a.substring(this.f1772a.indexOf("?") + 1);
        bpy.m5845aT("openSDK_LOG.AuthDialog", "-->generateDownloadUrl, url: http://qzs.qq.com/open/mobile/login/qzsjump.html?");
        return str;
    }

    /* renamed from: b */
    private void m6190b() {
        m6187c();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.bEE = new bql(this.bEF);
        if (Build.VERSION.SDK_INT >= 11) {
            this.bEE.setLayerType(1, null);
        }
        this.bEE.setLayoutParams(layoutParams);
        this.bEA = new FrameLayout(this.bEF);
        layoutParams.gravity = 17;
        this.bEA.setLayoutParams(layoutParams);
        this.bEA.addView(this.bEE);
        this.bEA.addView(this.bEC);
        setContentView(this.bEA);
    }

    /* renamed from: c */
    private void m6187c() {
        this.bED = new ProgressBar(this.bEF);
        this.bED.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.bEB = new LinearLayout(this.bEF);
        TextView textView = null;
        if (this.f1773i.equals("action_login")) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 16;
            layoutParams.leftMargin = 5;
            textView = new TextView(this.bEF);
            if (Locale.getDefault().getLanguage().equals("zh")) {
                textView.setText("登录中...");
            } else {
                textView.setText("Logging in...");
            }
            textView.setTextColor(Color.rgb(255, 255, 255));
            textView.setTextSize(18.0f);
            textView.setLayoutParams(layoutParams);
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.bEB.setLayoutParams(layoutParams2);
        this.bEB.addView(this.bED);
        if (textView != null) {
            this.bEB.addView(textView);
        }
        this.bEC = new FrameLayout(this.bEF);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams3.leftMargin = 80;
        layoutParams3.rightMargin = 80;
        layoutParams3.topMargin = 40;
        layoutParams3.bottomMargin = 40;
        layoutParams3.gravity = 17;
        this.bEC.setLayoutParams(layoutParams3);
        this.bEC.setBackgroundResource(17301504);
        this.bEC.addView(this.bEB);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: d */
    private void m6184d() {
        this.bEE.setVerticalScrollBarEnabled(false);
        this.bEE.setHorizontalScrollBarEnabled(false);
        this.bEE.setWebViewClient(new C2529a());
        this.bEE.setWebChromeClient(new WebChromeClient());
        this.bEE.clearFormData();
        this.bEE.clearSslPreferences();
        this.bEE.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.kingroot.kinguser.bnp.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return true;
            }
        });
        this.bEE.setOnTouchListener(new View.OnTouchListener() { // from class: com.kingroot.kinguser.bnp.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                    case 1:
                        if (!view.hasFocus()) {
                            view.requestFocus();
                            return false;
                        }
                        return false;
                    default:
                        return false;
                }
            }
        });
        WebSettings settings = this.bEE.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setCacheMode(-1);
        settings.setNeedInitialFocus(false);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDatabasePath(this.bEF.getDir("databases", 0).getPath());
        settings.setDomStorageEnabled(true);
        bpy.m5848a("openSDK_LOG.AuthDialog", "-->mUrl : " + this.f1772a);
        this.f1776o = this.f1772a;
        this.bEE.loadUrl(this.f1772a);
        this.bEE.setVisibility(4);
        this.bEE.getSettings().setSavePassword(false);
        this.bEG.m5881a(new bqw(), "SecureJsInterface");
        bqw.bIT = false;
        super.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kingroot.kinguser.bnp.3
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                try {
                    JniInterface.clearAllPWD();
                } catch (Exception e) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public boolean m6182e() {
        bnq agp = bnq.agp();
        String m6165c = agp.m6165c();
        bnq.C2534a c2534a = new bnq.C2534a();
        c2534a.bEr = this.bEm;
        c2534a.bEN = this;
        c2534a.f1786c = m6165c;
        String m6167a = agp.m6167a(c2534a);
        String substring = this.f1772a.substring(0, this.f1772a.indexOf("?"));
        Bundle m5737mS = bqt.m5737mS(this.f1772a);
        m5737mS.putString("token_key", m6165c);
        m5737mS.putString("serial", m6167a);
        m5737mS.putString("browser", "1");
        this.f1772a = substring + "?" + bqm.m5787f(m5737mS);
        return bqt.m5753N(this.bEF, this.f1772a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public static void m6200I(Context context, String str) {
        try {
            JSONObject m5735mU = bqt.m5735mU(str);
            int i = m5735mU.getInt("type");
            Toast.makeText(context.getApplicationContext(), m5735mU.getString("msg"), i).show();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m6192a(String str, String str2) {
        this.bEE.loadUrl("javascript:" + str + "(" + str2 + ");void(" + System.currentTimeMillis() + ");");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.bEJ.clear();
        this.bEz.removeCallbacksAndMessages(null);
        if (isShowing()) {
            super.dismiss();
        }
        if (this.bEE != null) {
            this.bEE.destroy();
            this.bEE = null;
        }
    }
}
