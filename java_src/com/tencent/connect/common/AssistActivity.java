package com.tencent.connect.common;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.kingroot.kinguser.bnt;
import com.kingroot.kinguser.bpy;
import com.kingroot.kinguser.bqg;
import com.kingroot.kinguser.bqt;
import com.kingroot.kinguser.bwd;
import com.kingroot.kinguser.bwf;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AssistActivity extends Activity {

    /* renamed from: d */
    private String f4384d;

    /* renamed from: c */
    private boolean f4383c = false;

    /* renamed from: a */
    protected boolean f4382a = false;
    protected Handler bER = new Handler() { // from class: com.tencent.connect.common.AssistActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    if (!AssistActivity.this.isFinishing()) {
                        bpy.m5841d("openSDK_LOG.AssistActivity", "-->finish by timeout");
                        AssistActivity.this.finish();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        setRequestedOrientation(3);
        bpy.m5846aP("openSDK_LOG.AssistActivity", "--onCreate--");
        if (getIntent() == null) {
            bpy.m5840e("openSDK_LOG.AssistActivity", "-->onCreate--getIntent() returns null");
            finish();
        }
        Intent intent = (Intent) getIntent().getParcelableExtra("openSDK_LOG.AssistActivity.ExtraIntent");
        int intExtra = intent == null ? 0 : intent.getIntExtra("key_request_code", 0);
        this.f4384d = intent == null ? "" : intent.getStringExtra("appid");
        Bundle bundleExtra = getIntent().getBundleExtra("h5_share_data");
        if (bundle != null) {
            this.f4383c = bundle.getBoolean("RESTART_FLAG");
            this.f4382a = bundle.getBoolean("RESUME_FLAG", false);
        }
        if (!this.f4383c) {
            if (bundleExtra == null) {
                if (intent != null) {
                    bpy.m5845aT("openSDK_LOG.AssistActivity", "--onCreate--activityIntent not null, will start activity, reqcode = " + intExtra);
                    startActivityForResult(intent, intExtra);
                    return;
                }
                bpy.m5840e("openSDK_LOG.AssistActivity", "--onCreate--activityIntent is null");
                finish();
                return;
            }
            bpy.m5841d("openSDK_LOG.AssistActivity", "--onCreate--h5 bundle not null, will open browser");
            m1146e(bundleExtra);
            return;
        }
        bpy.m5846aP("openSDK_LOG.AssistActivity", "is restart");
    }

    @Override // android.app.Activity
    protected void onStart() {
        bpy.m5846aP("openSDK_LOG.AssistActivity", "-->onStart");
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        bpy.m5846aP("openSDK_LOG.AssistActivity", "-->onResume");
        super.onResume();
        Intent intent = getIntent();
        if (!intent.getBooleanExtra("is_login", false)) {
            if (!intent.getBooleanExtra("is_qq_mobile_share", false) && this.f4383c && !isFinishing()) {
                finish();
            }
            if (this.f4382a) {
                this.bER.sendMessage(this.bER.obtainMessage(0));
                return;
            }
            this.f4382a = true;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        bpy.m5846aP("openSDK_LOG.AssistActivity", "-->onPause");
        this.bER.removeMessages(0);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        bpy.m5846aP("openSDK_LOG.AssistActivity", "-->onStop");
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        bpy.m5846aP("openSDK_LOG.AssistActivity", "-->onDestroy");
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        bpy.m5845aT("openSDK_LOG.AssistActivity", "--onNewIntent");
        super.onNewIntent(intent);
        intent.putExtra("key_action", "action_share");
        setResult(-1, intent);
        if (!isFinishing()) {
            bpy.m5845aT("openSDK_LOG.AssistActivity", "--onNewIntent--activity not finished, finish now");
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        bpy.m5846aP("openSDK_LOG.AssistActivity", "--onSaveInstanceState--");
        bundle.putBoolean("RESTART_FLAG", true);
        bundle.putBoolean("RESUME_FLAG", this.f4382a);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        bpy.m5845aT("openSDK_LOG.AssistActivity", "--onActivityResult--requestCode: " + i + " | resultCode: " + i2 + "data = null ? " + (intent == null));
        super.onActivityResult(i, i2, intent);
        if (i != 0) {
            if (intent != null) {
                intent.putExtra("key_action", "action_login");
            }
            m1147a(i, intent);
            finish();
        }
    }

    /* renamed from: a */
    public void m1147a(int i, Intent intent) {
        if (intent == null) {
            bpy.m5841d("openSDK_LOG.AssistActivity", "--setResultData--intent is null, setResult ACTIVITY_CANCEL");
            setResult(0);
            if (i == 11101) {
                bqg.ahl().m5814a("", this.f4384d, "2", "1", "7", "2");
                return;
            }
            return;
        }
        try {
            String stringExtra = intent.getStringExtra("key_response");
            bpy.m5846aP("openSDK_LOG.AssistActivity", "--setResultDataForLogin-- " + stringExtra);
            if (!TextUtils.isEmpty(stringExtra)) {
                JSONObject jSONObject = new JSONObject(stringExtra);
                String optString = jSONObject.optString("openid");
                String optString2 = jSONObject.optString("access_token");
                if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                    bpy.m5845aT("openSDK_LOG.AssistActivity", "--setResultData--openid and token not empty, setResult ACTIVITY_OK");
                    setResult(-1, intent);
                    bqg.ahl().m5814a(optString, this.f4384d, "2", "1", "7", "0");
                } else {
                    bpy.m5841d("openSDK_LOG.AssistActivity", "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL");
                    setResult(0, intent);
                    bqg.ahl().m5814a("", this.f4384d, "2", "1", "7", "1");
                }
            } else {
                bpy.m5841d("openSDK_LOG.AssistActivity", "--setResultData--response is empty, setResult ACTIVITY_OK");
                setResult(-1, intent);
            }
        } catch (Exception e) {
            bpy.m5840e("openSDK_LOG.AssistActivity", "--setResultData--parse response failed");
            e.printStackTrace();
        }
    }

    /* renamed from: e */
    private void m1146e(Bundle bundle) {
        String string = bundle.getString("viaShareType");
        String string2 = bundle.getString("callbackAction");
        String string3 = bundle.getString("url");
        String string4 = bundle.getString("openId");
        String string5 = bundle.getString("appId");
        String str = "";
        String str2 = "";
        if ("shareToQQ".equals(string2)) {
            str = "ANDROIDQQ.SHARETOQQ.XX";
            str2 = "10";
        } else if ("shareToQzone".equals(string2)) {
            str = "ANDROIDQQ.SHARETOQZ.XX";
            str2 = "11";
        }
        if (!bqt.m5753N(this, string3)) {
            bwd m6148mJ = bnt.agt().m6148mJ(string2);
            if (m6148mJ != null) {
                m6148mJ.onError(new bwf(-6, "打开浏览器失败!", null));
            }
            bqg.ahl().m5812a(string4, string5, str, str2, "3", "1", string, "0", "2", "0");
            finish();
        } else {
            bqg.ahl().m5812a(string4, string5, str, str2, "3", "0", string, "0", "2", "0");
        }
        getIntent().removeExtra("shareH5");
    }
}
