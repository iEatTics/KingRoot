package com.tencent.p020mm.opensdk.diffdev.p022a;

import android.os.AsyncTask;
import com.tencent.p020mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.p020mm.opensdk.diffdev.OAuthListener;
import com.tencent.p020mm.opensdk.utils.Log;
import org.json.JSONObject;
/* renamed from: com.tencent.mm.opensdk.diffdev.a.f */
/* loaded from: classes.dex */
final class AsyncTaskC4170f extends AsyncTask<Void, Void, C4171a> {

    /* renamed from: l */
    private OAuthListener f4859l;

    /* renamed from: o */
    private String f4860o;

    /* renamed from: u */
    private int f4861u;
    private String url;

    /* renamed from: com.tencent.mm.opensdk.diffdev.a.f$a */
    /* loaded from: classes.dex */
    static class C4171a {

        /* renamed from: n */
        public OAuthErrCode f4862n;

        /* renamed from: v */
        public String f4863v;

        /* renamed from: w */
        public int f4864w;

        C4171a() {
        }

        /* renamed from: b */
        public static C4171a m502b(byte[] bArr) {
            C4171a c4171a = new C4171a();
            if (bArr == null || bArr.length == 0) {
                Log.m495e("MicroMsg.SDK.NoopingResult", "parse fail, buf is null");
                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        c4171a.f4864w = jSONObject.getInt("wx_errcode");
                        Log.m496d("MicroMsg.SDK.NoopingResult", String.format("nooping uuidStatusCode = %d", Integer.valueOf(c4171a.f4864w)));
                        switch (c4171a.f4864w) {
                            case 402:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_Timeout;
                                break;
                            case 403:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_Cancel;
                                break;
                            case 404:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_OK;
                                break;
                            case 405:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_OK;
                                c4171a.f4863v = jSONObject.getString("wx_code");
                                break;
                            case 408:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_OK;
                                break;
                            case 500:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_NormalErr;
                                break;
                            default:
                                c4171a.f4862n = OAuthErrCode.WechatAuth_Err_NormalErr;
                                break;
                        }
                    } catch (Exception e) {
                        Log.m495e("MicroMsg.SDK.NoopingResult", String.format("parse json fail, ex = %s", e.getMessage()));
                        c4171a.f4862n = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                } catch (Exception e2) {
                    Log.m495e("MicroMsg.SDK.NoopingResult", String.format("parse fail, build String fail, ex = %s", e2.getMessage()));
                    c4171a.f4862n = OAuthErrCode.WechatAuth_Err_NormalErr;
                }
            }
            return c4171a;
        }
    }

    public AsyncTaskC4170f(String str, OAuthListener oAuthListener) {
        this.f4860o = str;
        this.f4859l = oAuthListener;
        this.url = String.format("https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s", str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ C4171a doInBackground(Void[] voidArr) {
        if (this.f4860o == null || this.f4860o.length() == 0) {
            Log.m495e("MicroMsg.SDK.NoopingTask", "run fail, uuid is null");
            C4171a c4171a = new C4171a();
            c4171a.f4862n = OAuthErrCode.WechatAuth_Err_NormalErr;
            return c4171a;
        }
        while (!isCancelled()) {
            String str = this.url + (this.f4861u == 0 ? "" : "&last=" + this.f4861u);
            long currentTimeMillis = System.currentTimeMillis();
            byte[] m503a = C4169e.m503a(str);
            long currentTimeMillis2 = System.currentTimeMillis();
            C4171a m502b = C4171a.m502b(m503a);
            Log.m496d("MicroMsg.SDK.NoopingTask", String.format("nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)", str, m502b.f4862n.toString(), Integer.valueOf(m502b.f4864w), Long.valueOf(currentTimeMillis2 - currentTimeMillis)));
            if (m502b.f4862n != OAuthErrCode.WechatAuth_Err_OK) {
                Log.m495e("MicroMsg.SDK.NoopingTask", String.format("nooping fail, errCode = %s, uuidStatusCode = %d", m502b.f4862n.toString(), Integer.valueOf(m502b.f4864w)));
                return m502b;
            }
            this.f4861u = m502b.f4864w;
            if (m502b.f4864w == EnumC4172g.UUID_SCANED.getCode()) {
                this.f4859l.onQrcodeScanned();
            } else if (m502b.f4864w != EnumC4172g.UUID_KEEP_CONNECT.getCode() && m502b.f4864w == EnumC4172g.UUID_CONFIRM.getCode()) {
                if (m502b.f4863v == null || m502b.f4863v.length() == 0) {
                    Log.m495e("MicroMsg.SDK.NoopingTask", "nooping fail, confirm with an empty code!!!");
                    m502b.f4862n = OAuthErrCode.WechatAuth_Err_NormalErr;
                    return m502b;
                }
                return m502b;
            }
        }
        Log.m494i("MicroMsg.SDK.NoopingTask", "IDiffDevOAuth.stopAuth / detach invoked");
        C4171a c4171a2 = new C4171a();
        c4171a2.f4862n = OAuthErrCode.WechatAuth_Err_Auth_Stopped;
        return c4171a2;
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(C4171a c4171a) {
        C4171a c4171a2 = c4171a;
        this.f4859l.onAuthFinish(c4171a2.f4862n, c4171a2.f4863v);
    }
}
