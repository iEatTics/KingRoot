package com.tencent.open;

import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.kingroot.kinguser.bps;
import com.kingroot.kinguser.bpy;
import com.kingroot.kinguser.bqc;
import com.kingroot.kinguser.bqj;
import com.kingroot.kinguser.bqk;
import com.kingroot.kinguser.bqq;
import com.kingroot.kinguser.bqt;
import com.kingroot.kinguser.bwd;
import com.kingroot.kinguser.bwf;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class TDialog extends bqc {
    private static WeakReference<ProgressDialog> bHL;
    private WeakReference<Context> bEn;
    private OnTimeListener bHM;
    private FrameLayout bHN;
    private bqk bHO;
    private Handler bHP;

    /* renamed from: g */
    private String f4874g;
    static final FrameLayout.LayoutParams bHK = new FrameLayout.LayoutParams(-1, -1);
    static Toast bHQ = null;

    /* loaded from: classes.dex */
    class THandler extends Handler {

        /* renamed from: b */
        private OnTimeListener f4883b;

        public THandler(OnTimeListener onTimeListener, Looper looper) {
            super(looper);
            this.f4883b = onTimeListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            bpy.m5846aP("openSDK_LOG.TDialog", "--handleMessage--msg.WHAT = " + message.what);
            switch (message.what) {
                case 1:
                    this.f4883b.m473a((String) message.obj);
                    return;
                case 2:
                    this.f4883b.onCancel();
                    return;
                case 3:
                    if (TDialog.this.bEn != null && TDialog.this.bEn.get() != null) {
                        TDialog.m484F((Context) TDialog.this.bEn.get(), (String) message.obj);
                        return;
                    }
                    return;
                case 4:
                default:
                    return;
                case 5:
                    if (TDialog.this.bEn != null && TDialog.this.bEn.get() != null) {
                        TDialog.m481K((Context) TDialog.this.bEn.get(), (String) message.obj);
                        return;
                    }
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    static class OnTimeListener implements bwd {

        /* renamed from: a */
        String f4877a;

        /* renamed from: b */
        String f4878b;

        /* renamed from: c */
        private WeakReference<Context> f4879c;

        /* renamed from: d */
        private String f4880d;

        /* renamed from: e */
        private bwd f4881e;

        public OnTimeListener(Context context, String str, String str2, String str3, bwd bwdVar) {
            this.f4879c = new WeakReference<>(context);
            this.f4880d = str;
            this.f4877a = str2;
            this.f4878b = str3;
            this.f4881e = bwdVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public void m473a(String str) {
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
            bqj.ahn().m5802a(this.f4880d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, jSONObject.optInt("ret", -6), this.f4877a, false);
            if (this.f4881e != null) {
                this.f4881e.onComplete(jSONObject);
                this.f4881e = null;
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onError(bwf bwfVar) {
            bqj.ahn().m5802a(this.f4880d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, bwfVar.errorCode, bwfVar.bQW != null ? bwfVar.bQW + this.f4877a : this.f4877a, false);
            if (this.f4881e != null) {
                this.f4881e.onError(bwfVar);
                this.f4881e = null;
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onCancel() {
            if (this.f4881e != null) {
                this.f4881e.onCancel();
                this.f4881e = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bqc, android.app.Dialog
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        m480a();
        m478b();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.bHM != null) {
            this.bHM.onCancel();
        }
        super.onBackPressed();
    }

    /* renamed from: a */
    private void m480a() {
        new TextView(this.bEn.get()).setText("test");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.bHO = new bqk(this.bEn.get());
        this.bHO.setLayoutParams(layoutParams);
        this.bHN = new FrameLayout(this.bEn.get());
        layoutParams.gravity = 17;
        this.bHN.setLayoutParams(layoutParams);
        this.bHN.addView(this.bHO);
        setContentView(this.bHN);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: b */
    private void m478b() {
        this.bHO.setVerticalScrollBarEnabled(false);
        this.bHO.setHorizontalScrollBarEnabled(false);
        this.bHO.setWebViewClient(new FbWebViewClient());
        this.bHO.setWebChromeClient(this.bIl);
        this.bHO.clearFormData();
        WebSettings settings = this.bHO.getSettings();
        if (settings != null) {
            settings.setSavePassword(false);
            settings.setSaveFormData(false);
            settings.setCacheMode(-1);
            settings.setNeedInitialFocus(false);
            settings.setBuiltInZoomControls(true);
            settings.setSupportZoom(true);
            settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
            settings.setJavaScriptEnabled(true);
            if (this.bEn != null && this.bEn.get() != null) {
                settings.setDatabaseEnabled(true);
                settings.setDatabasePath(this.bEn.get().getApplicationContext().getDir("databases", 0).getPath());
            }
            settings.setDomStorageEnabled(true);
            this.bIk.m5881a(new JsListener(), "sdk_js_if");
            this.bHO.loadUrl(this.f4874g);
            this.bHO.setLayoutParams(bHK);
            this.bHO.setVisibility(4);
            this.bHO.getSettings().setSavePassword(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class JsListener extends bps.C2560b {
        private JsListener() {
        }

        public void onAddShare(String str) {
            bpy.m5846aP("openSDK_LOG.TDialog", "JsListener onAddShare");
            onComplete(str);
        }

        public void onInvite(String str) {
            onComplete(str);
        }

        public void onCancelAddShare(String str) {
            bpy.m5840e("openSDK_LOG.TDialog", "JsListener onCancelAddShare" + str);
            onCancel("cancel");
        }

        public void onCancelLogin() {
            onCancel("");
        }

        public void onCancelInvite() {
            bpy.m5840e("openSDK_LOG.TDialog", "JsListener onCancelInvite");
            onCancel("");
        }

        public void onComplete(String str) {
            TDialog.this.bHP.obtainMessage(1, str).sendToTarget();
            bpy.m5840e("openSDK_LOG.TDialog", "JsListener onComplete" + str);
            TDialog.this.dismiss();
        }

        public void onCancel(String str) {
            bpy.m5840e("openSDK_LOG.TDialog", "JsListener onCancel --msg = " + str);
            TDialog.this.bHP.obtainMessage(2, str).sendToTarget();
            TDialog.this.dismiss();
        }

        public void showMsg(String str) {
            TDialog.this.bHP.obtainMessage(3, str).sendToTarget();
        }

        public void onLoad(String str) {
            TDialog.this.bHP.obtainMessage(4, str).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class FbWebViewClient extends WebViewClient {
        private FbWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            bpy.m5848a("openSDK_LOG.TDialog", "Redirect URL: " + str);
            if (str.startsWith(bqq.ahr().m5766a((Context) TDialog.this.bEn.get(), "auth://tauth.qq.com/"))) {
                TDialog.this.bHM.onComplete(bqt.m5736mT(str));
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            } else if (str.startsWith("auth://cancel")) {
                TDialog.this.bHM.onCancel();
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            } else if (str.startsWith("auth://close")) {
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            } else if (!str.startsWith("download://")) {
                return str.startsWith("auth://progress");
            } else {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(str.substring("download://".length()))));
                    intent.addFlags(268435456);
                    if (TDialog.this.bEn != null && TDialog.this.bEn.get() != null) {
                        ((Context) TDialog.this.bEn.get()).startActivity(intent);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                return true;
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            TDialog.this.bHM.onError(new bwf(i, str, str2));
            if (TDialog.this.bEn != null && TDialog.this.bEn.get() != null) {
                Toast.makeText((Context) TDialog.this.bEn.get(), "网络连接异常或系统错误", 0).show();
            }
            TDialog.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            bpy.m5848a("openSDK_LOG.TDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            TDialog.this.bHO.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F */
    public static void m484F(Context context, String str) {
        try {
            JSONObject m5735mU = bqt.m5735mU(str);
            int i = m5735mU.getInt("type");
            String string = m5735mU.getString("msg");
            if (i == 0) {
                if (bHQ == null) {
                    bHQ = Toast.makeText(context, string, 0);
                } else {
                    bHQ.setView(bHQ.getView());
                    bHQ.setText(string);
                    bHQ.setDuration(0);
                }
                bHQ.show();
            } else if (i == 1) {
                if (bHQ == null) {
                    bHQ = Toast.makeText(context, string, 1);
                } else {
                    bHQ.setView(bHQ.getView());
                    bHQ.setText(string);
                    bHQ.setDuration(1);
                }
                bHQ.show();
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public static void m481K(Context context, String str) {
        if (context != null && str != null) {
            try {
                JSONObject m5735mU = bqt.m5735mU(str);
                int i = m5735mU.getInt("action");
                String string = m5735mU.getString("msg");
                if (i == 1) {
                    if (bHL == null || bHL.get() == null) {
                        ProgressDialog progressDialog = new ProgressDialog(context);
                        progressDialog.setMessage(string);
                        bHL = new WeakReference<>(progressDialog);
                        progressDialog.show();
                    } else {
                        bHL.get().setMessage(string);
                        if (!bHL.get().isShowing()) {
                            bHL.get().show();
                        }
                    }
                } else if (i == 0 && bHL != null && bHL.get() != null && bHL.get().isShowing()) {
                    bHL.get().dismiss();
                    bHL = null;
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }
}
