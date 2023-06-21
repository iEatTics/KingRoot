package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsResult;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.android.internal.p009os.PowerProfile;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3826wd;
import com.kingroot.kinguser.C3828we;
import com.kingroot.kinguser.aae;
import com.kingroot.kinguser.activitys.ShareLoginActivity;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bin extends AbstractC3922ym {

    /* renamed from: JF */
    private WebView f1685JF;
    private String TAG;

    /* renamed from: VL */
    private ProgressBar f1686VL;
    public String btB;
    private String btC;
    private C2321a btD;
    private Handler btE;
    private ada btF;
    private volatile boolean btG;
    private byte[] btH;
    private byte[] btI;
    private String btJ;
    private HandlerThread mHandlerThread;
    private String mTitle;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bin$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2334b {
        void onCallback(int i);
    }

    public bin(Context context) {
        super(context);
        this.TAG = "ku_pageWebViewPage";
        this.btB = "";
        this.btC = null;
        this.btD = null;
        this.btE = null;
        this.mHandlerThread = null;
        this.btG = false;
        this.btH = null;
        this.btI = null;
        this.btJ = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        init();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.webview, (ViewGroup) null);
        this.f1685JF = (WebView) inflate.findViewById(R.id.webView);
        this.f1686VL = (ProgressBar) inflate.findViewById(R.id.progressBar);
        acX();
        return inflate;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.mTitle = getActivity().getIntent().getStringExtra("webview_title");
        this.btF = new ada(getContext(), this.mTitle);
        return this.btF;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    @TargetApi(11)
    public void onResume() {
        super.onResume();
        if (this.f1685JF != null && abd.m12839qb() >= 11) {
            this.f1685JF.onResume();
        }
        try {
            if (this.btD != null && this.btD.btM) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("eventName", "onResume");
                this.btD.m6860b(jSONObject);
            }
        } catch (JSONException e) {
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f1685JF != null && i == 4 && this.f1685JF.canGoBack()) {
            this.f1685JF.goBack();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void acX() {
        if (this.f1685JF != null) {
            init();
            String userAgentString = this.f1685JF.getSettings().getUserAgentString();
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(userAgentString)) {
                sb.append(userAgentString);
            }
            sb.append(";");
            sb.append("EP_KingUser/");
            sb.append(KApplication.m13435ij());
            sb.append("/");
            sb.append(KApplication.m13436ii());
            sb.append("/");
            sb.append(KApplication.m13442ib());
            this.f1685JF.getSettings().setUserAgentString(sb.toString());
            if (!TextUtils.isEmpty(this.btB)) {
                this.f1685JF.getSettings().setJavaScriptEnabled(true);
                this.f1685JF.getSettings().setDatabaseEnabled(true);
                this.f1685JF.getSettings().setDomStorageEnabled(true);
                this.f1685JF.getSettings().setCacheMode(-1);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f1685JF.getSettings().setMixedContentMode(0);
                }
                try {
                    this.mHandlerThread = new HandlerThread("webview-work", -2);
                    this.mHandlerThread.start();
                    this.btE = new Handler(this.mHandlerThread.getLooper());
                    if (Build.VERSION.SDK_INT >= 11) {
                        this.f1685JF.removeJavascriptInterface("searchBoxJavaBridge_");
                    }
                } catch (Throwable th) {
                }
                this.f1685JF.setWebViewClient(new C2338d());
                this.f1685JF.setWebChromeClient(new C2335c());
                this.btD = new C2321a();
                this.btD.init();
                return;
            }
            C3954zj.m1307c(m1417V(2131166129L), 0);
        }
    }

    private void init() {
        Intent intent = getActivity().getIntent();
        if (intent == null) {
            C3954zj.m1307c(m1417V(2131166129L), 0);
            return;
        }
        this.btB = intent.getStringExtra("url");
        if (this.btB != null && this.f1685JF != null) {
            this.f1685JF.loadUrl(this.btB);
        }
        beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bin.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                bin.this.acY();
            }
        });
        int intExtra = intent.getIntExtra("monitor_webview", -1);
        if (intExtra != -1) {
            bfl.m7266a(getContext().getApplicationContext(), getHandler(), intExtra, this.f1685JF);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acY() {
        if (this.f1685JF != null) {
            try {
                if (this.btH == null) {
                    this.btH = bio.m6849lP("jsapi.js");
                }
                if (this.btH != null && this.btH.length > 0) {
                    if (this.btI == null) {
                        this.btI = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(this.btH);
                    }
                    if (this.btI != null && this.btI.length > 0) {
                        if (this.btJ == null) {
                            this.btJ = new String(this.btI, "utf-8");
                        }
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bin.2
                            @Override // java.lang.Runnable
                            public void run() {
                                if (bin.this.f1685JF != null) {
                                    bin.this.f1685JF.loadUrl("javascript:" + bin.this.btJ);
                                    JSONObject jSONObject = new JSONObject();
                                    try {
                                        jSONObject.put("logType", cgp.isEnable() ? "alert" : "console");
                                        jSONObject.put("sessionId", "WebSession_" + System.currentTimeMillis());
                                    } catch (JSONException e) {
                                    }
                                    bin.this.f1685JF.loadUrl(String.format("javascript:handleMessageFromTcs('sys:init', '%s')", jSONObject.toString()));
                                }
                            }
                        });
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bin$d */
    /* loaded from: classes.dex */
    public class C2338d extends WebViewClient {
        public C2338d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            bin.this.btB = str;
            if (TextUtils.isEmpty(bin.this.btC)) {
                bin.this.btC = bin.this.btB;
            }
            bin.this.btG = false;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            bin.this.btG = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            try {
                super.onPageFinished(webView, str);
            } catch (Exception e) {
            }
            if (!TextUtils.isEmpty(bin.this.btC) && bin.this.btC.equals(str) && !TextUtils.isEmpty(bin.this.mTitle)) {
                bin.this.btF.m12559ey(bin.this.mTitle);
            } else if (webView != null && !bin.this.btG) {
                if (webView.getTitle() == null) {
                }
                bin.this.btF.m12559ey(bin.this.mTitle);
            }
            beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bin.d.1
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    bin.this.acY();
                }
            });
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return !URLUtil.isNetworkUrl(str);
        }
    }

    /* renamed from: com.kingroot.kinguser.bin$c */
    /* loaded from: classes.dex */
    public class C2335c extends WebChromeClient {
        public C2335c() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                bin.this.f1686VL.setVisibility(8);
            } else {
                bin.this.f1686VL.setProgress(i);
            }
            super.onProgressChanged(webView, i);
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
            if (!bin.this.btG || TextUtils.isEmpty(bin.this.mTitle)) {
                bin binVar = bin.this;
                if (str == null) {
                    str = "";
                }
                binVar.mTitle = str;
                bin.this.btF.m12559ey(bin.this.mTitle);
            }
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
            if (str2 == null) {
                return super.onJsConfirm(webView, str, str2, jsResult);
            }
            if (str2.startsWith("#js_invoke#")) {
                final String substring = str2.substring("#js_invoke#".length());
                if (bin.this.btE != null) {
                    bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.c.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String str3;
                            String str4;
                            String str5 = null;
                            int i = 0;
                            try {
                                JSONObject jSONObject = new JSONObject(substring);
                                str4 = jSONObject.getString("sessionId");
                                try {
                                    i = jSONObject.getInt("callbackId");
                                    str3 = jSONObject.getString("funcName");
                                    try {
                                        str5 = jSONObject.getString("paramStr");
                                    } catch (JSONException e) {
                                    }
                                } catch (JSONException e2) {
                                    str3 = null;
                                }
                            } catch (JSONException e3) {
                                str3 = null;
                                str4 = null;
                            }
                            if (bin.this.btD != null) {
                                bin.this.btD.m6859d(str4, i, str3, str5);
                            }
                        }
                    });
                }
                if (jsResult != null) {
                    jsResult.confirm();
                    return true;
                }
                return true;
            } else if (str2.startsWith("#js_on#")) {
                final String substring2 = str2.substring("#js_on#".length());
                if (bin.this.btE != null) {
                    bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.c.2
                        @Override // java.lang.Runnable
                        public void run() {
                            String str3;
                            String str4 = null;
                            try {
                                JSONObject jSONObject = new JSONObject(substring2);
                                str3 = jSONObject.getString("sessionId");
                                try {
                                    str4 = jSONObject.getString("eventName");
                                } catch (JSONException e) {
                                }
                            } catch (JSONException e2) {
                                str3 = null;
                            }
                            if (bin.this.btD != null) {
                                bin.this.btD.m6862aM(str3, str4);
                            }
                        }
                    });
                }
                if (jsResult != null) {
                    jsResult.confirm();
                    return true;
                }
                return true;
            } else {
                return super.onJsConfirm(webView, str, str2, jsResult);
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        this.f1685JF.reload();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        try {
            if (this.f1685JF != null) {
                this.f1685JF.setVisibility(8);
                this.f1685JF.stopLoading();
                this.f1685JF.clearCache(true);
                this.f1685JF.removeAllViews();
                this.f1685JF = null;
            }
            if (this.btD != null) {
                this.btD.destroy();
                this.btD = null;
            }
            if (this.mHandlerThread != null) {
                this.mHandlerThread.quit();
            }
        } catch (Exception e) {
        }
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bin$a */
    /* loaded from: classes.dex */
    public class C2321a {
        private C3828we.C3829a aiS;
        private Map<String, Integer> btL;
        private boolean btM;

        private C2321a() {
            this.aiS = new C3828we.C3829a() { // from class: com.kingroot.kinguser.bin.a.1
                @Override // com.kingroot.kinguser.C3828we.C3829a
                /* renamed from: b */
                public void mo1568b(boolean z, C3826wd.C3827a c3827a) {
                    if (z) {
                        C2321a.this.m6855g(c3827a.f3859MA, c3827a.f3860MB, null, null);
                        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bin.a.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (bin.this.f1685JF != null) {
                                    bin.this.f1685JF.reload();
                                }
                            }
                        });
                        return;
                    }
                    C2321a.this.m6864a(c3827a.f3859MA, c3827a.f3860MB, -1);
                }
            };
            this.btL = null;
            this.btM = false;
        }

        /* renamed from: a */
        static /* synthetic */ void m6867a(C2321a c2321a, String str, int i, Object obj) {
            c2321a.m6864a(str, i, obj);
        }

        /* renamed from: a */
        static /* synthetic */ void m6866a(C2321a c2321a, String str, int i, String str2) {
            c2321a.m6856g(str, i, str2);
        }

        /* renamed from: b */
        static /* synthetic */ Map m6861b(C2321a c2321a) {
            return c2321a.btL;
        }

        public void init() {
            C3828we.m1571a(this.aiS);
            if (this.btL == null) {
                this.btL = acZ();
            }
        }

        public void destroy() {
            C3828we.m1569b(this.aiS);
            this.btM = false;
        }

        /* renamed from: d */
        public void m6859d(final String str, final int i, String str2, String str3) {
            if (str2 == null) {
                m6856g(str, i, "check_arg:funcName is null");
            } else if ("isTcsWebview".equals(str2)) {
                m6864a(str, i, true);
            } else if ("checkPermission".equals(str2)) {
                m6864a(str, i, 1);
            } else if ("getQQSecureVersionCode".equals(str2)) {
                bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        C2321a.this.m6864a(str, i, KApplication.m13435ij());
                    }
                });
            } else if ("getQQSecureVersionName".equals(str2)) {
                bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.a.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C2321a.this.m6864a(str, i, KApplication.m13454dG());
                    }
                });
            } else if ("getQQSecureBuildNo".equals(str2)) {
                bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.a.5
                    @Override // java.lang.Runnable
                    public void run() {
                        C2321a.this.m6864a(str, i, 640);
                    }
                });
            } else if ("getQQLoginState".equals(str2)) {
                m6858e(str, i, str2, str3);
            } else if ("getWXLoginState".equals(str2)) {
                m6857f(str, i, str2, str3);
            } else if ("getInfo".equals(str2)) {
                m6851k(str, i, str2, str3);
            } else if ("loginQQ".equals(str2)) {
                m6854h(str, i, str2, str3);
            } else if ("loginWX".equals(str2)) {
                m6853i(str, i, str2, str3);
            }
        }

        /* renamed from: aM */
        public void m6862aM(String str, String str2) {
            if (str2 != null) {
                if (this.btL == null) {
                    this.btL = acZ();
                }
                this.btM = true;
            }
        }

        private Map<String, Integer> acZ() {
            HashMap hashMap = new HashMap();
            hashMap.put("isTcsWebview", 6);
            hashMap.put("getQQSecureVersionCode", 102);
            hashMap.put("getQQSecureVersionName", 103);
            hashMap.put("getQQSecureBuildNo", 104);
            hashMap.put("getQQLoginState", 700);
            hashMap.put("getQQLoginKey", 701);
            hashMap.put("loginQQ", 702);
            hashMap.put("logoutQQ", 703);
            hashMap.put("loginWX", 704);
            hashMap.put("getWXLoginState", 705);
            hashMap.put("getInfo", 1200);
            return hashMap;
        }

        /* renamed from: e */
        private void m6858e(String str, int i, String str2, String str3) {
            m6855g(str, i, str2, str3);
        }

        /* renamed from: f */
        private void m6857f(String str, int i, String str2, String str3) {
            m6855g(str, i, str2, str3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public void m6855g(final String str, final int i, String str2, String str3) {
            bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.a.6
                @Override // java.lang.Runnable
                public void run() {
                    String str4;
                    String str5;
                    String str6 = null;
                    final JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("sessionId", str);
                        jSONObject.put("callbackId", i);
                        jSONObject.put("err_msg", "ok");
                        jSONObject.put("ret", 0);
                        if (TextUtils.isEmpty(C3826wd.f3855Mu.f3861My) && TextUtils.isEmpty(C3826wd.f3855Mu.f3862Mz)) {
                            str4 = PowerProfile.POWER_NONE;
                            str5 = null;
                        } else {
                            str4 = "online";
                            str6 = C3826wd.f3855Mu.f3861My;
                            str5 = C3826wd.f3855Mu.f3862Mz;
                        }
                        jSONObject.put("state", str4);
                        if (str5 != null) {
                            jSONObject.put("openid", str5);
                        }
                        if (str6 != null) {
                            jSONObject.put("uin", str6);
                        }
                    } catch (JSONException e) {
                        e.printStackTrace();
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bin.a.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (bin.this.f1685JF != null) {
                                bin.this.f1685JF.loadUrl(String.format("javascript:handleMessageFromTcs('onCallback', '%s')", jSONObject.toString()));
                            }
                        }
                    });
                }
            });
        }

        /* renamed from: h */
        private void m6854h(String str, int i, String str2, String str3) {
            m6852j(str, i, str2, str3);
        }

        /* renamed from: i */
        private void m6853i(String str, int i, String str2, String str3) {
            m6852j(str, i, str2, str3);
        }

        /* renamed from: j */
        private void m6852j(final String str, final int i, final String str2, String str3) {
            bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.a.7
                @Override // java.lang.Runnable
                public void run() {
                    C3826wd.f3855Mu.f3859MA = str;
                    C3826wd.f3855Mu.f3860MB = i;
                    if ("loginQQ".equals(str2)) {
                        ShareLoginActivity.m12603a(bin.this.getActivity(), 1, 0);
                    } else if ("loginWX".equals(str2)) {
                        ShareLoginActivity.m12603a(bin.this.getActivity(), 1, 1);
                    }
                }
            });
        }

        /* renamed from: k */
        private void m6851k(final String str, final int i, final String str2, final String str3) {
            bin.this.btE.post(new Runnable() { // from class: com.kingroot.kinguser.bin.a.8
                /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
                    jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:33:0x00dd
                    	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
                    	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
                    	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
                    */
                @Override // java.lang.Runnable
                public void run() {
                    /*
                        Method dump skipped, instructions count: 392
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bin.C2321a.RunnableC23328.run():void");
                }
            });
        }

        /* renamed from: b */
        public void m6860b(final JSONObject jSONObject) {
            if (bin.this.f1685JF != null) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bin.a.9
                    @Override // java.lang.Runnable
                    public void run() {
                        if (bin.this.f1685JF != null) {
                            bin.this.f1685JF.loadUrl(String.format("javascript:handleMessageFromTcs('event:broadcast', '%s')", jSONObject.toString()));
                        }
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m6864a(String str, int i, Object obj) {
            m6863a(str, i, obj, (InterfaceC2334b) null);
        }

        /* renamed from: a */
        private void m6863a(final String str, final int i, final Object obj, final InterfaceC2334b interfaceC2334b) {
            if (bin.this.f1685JF != null) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bin.a.10
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("sessionId", "" + str);
                            jSONObject.put("callbackId", "" + i);
                            jSONObject.put("err_msg", "ok");
                            jSONObject.put("ret", "" + obj);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        if (bin.this.f1685JF != null) {
                            bin.this.f1685JF.loadUrl(String.format("javascript:handleMessageFromTcs('onCallback', '%s')", jSONObject.toString()));
                        }
                        if (interfaceC2334b != null) {
                            interfaceC2334b.onCallback(0);
                        }
                    }
                });
            } else if (interfaceC2334b != null) {
                interfaceC2334b.onCallback(-1);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public void m6856g(final String str, final int i, final String str2) {
            if (bin.this.f1685JF != null) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bin.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("sessionId", "" + str);
                            jSONObject.put("callbackId", "" + i);
                            jSONObject.put("err_msg", "" + str2);
                        } catch (JSONException e) {
                            e.printStackTrace();
                        }
                        if (bin.this.f1685JF != null) {
                            bin.this.f1685JF.loadUrl(String.format("javascript:handleMessageFromTcs('onCallback', '%s')", jSONObject.toString()));
                        }
                    }
                });
            }
        }
    }
}
