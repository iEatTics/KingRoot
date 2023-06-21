package com.kingroot.kinguser;

import android.webkit.WebView;
import com.kingroot.kinguser.bps;
import com.kingroot.loader.common.KlConst;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bqz extends bps.C2559a {

    /* renamed from: d */
    private String f2061d;

    public bqz(WebView webView, long j, String str, String str2) {
        super(webView, j, str);
        this.f2061d = str2;
    }

    @Override // com.kingroot.kinguser.bps.C2559a
    /* renamed from: v */
    public void mo5724v(Object obj) {
        bpy.m5848a("openSDK_LOG.SecureJsListener", "-->onComplete, result: " + obj);
    }

    @Override // com.kingroot.kinguser.bps.C2559a
    /* renamed from: a */
    public void mo5727a() {
        bpy.m5846aP("openSDK_LOG.SecureJsListener", "-->onNoMatchMethod...");
    }

    @Override // com.kingroot.kinguser.bps.C2559a
    /* renamed from: a */
    public void mo5726a(String str) {
        bpy.m5848a("openSDK_LOG.SecureJsListener", "-->onCustomCallback, js: " + str);
        JSONObject jSONObject = new JSONObject();
        int i = 0;
        if (!bql.f2030a) {
            i = -4;
        }
        try {
            jSONObject.put("result", i);
            jSONObject.put("sn", this.f1972b);
            jSONObject.put(KlConst.PLUGIN_DATA_DIR_NAME, str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m5725b(jSONObject.toString());
    }

    /* renamed from: b */
    private void m5725b(String str) {
        WebView webView = this.byQ.get();
        if (webView != null) {
            StringBuffer stringBuffer = new StringBuffer("javascript:");
            stringBuffer.append("if(!!").append(this.f2061d).append("){");
            stringBuffer.append(this.f2061d);
            stringBuffer.append("(");
            stringBuffer.append(str);
            stringBuffer.append(")}");
            String stringBuffer2 = stringBuffer.toString();
            bpy.m5848a("openSDK_LOG.SecureJsListener", "-->callback, callback: " + stringBuffer2);
            webView.loadUrl(stringBuffer2);
        }
    }
}
