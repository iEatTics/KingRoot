package com.tencent.p020mm.opensdk.diffdev.p022a;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.util.Base64;
import com.tencent.p020mm.opensdk.diffdev.OAuthErrCode;
import com.tencent.p020mm.opensdk.diffdev.OAuthListener;
import com.tencent.p020mm.opensdk.utils.Log;
import org.json.JSONObject;
/* renamed from: com.tencent.mm.opensdk.diffdev.a.d */
/* loaded from: classes.dex */
public final class AsyncTaskC4167d extends AsyncTask<Void, Void, C4168a> {

    /* renamed from: h */
    private static final String f4846h = Environment.getExternalStorageDirectory().getAbsolutePath() + "/tencent/MicroMsg/oauth_qrcode.png";

    /* renamed from: i */
    private static String f4847i;
    private String appId;

    /* renamed from: j */
    private String f4848j;

    /* renamed from: k */
    private String f4849k;

    /* renamed from: l */
    private OAuthListener f4850l;

    /* renamed from: m */
    private AsyncTaskC4170f f4851m;
    private String scope;
    private String signature;

    /* renamed from: com.tencent.mm.opensdk.diffdev.a.d$a */
    /* loaded from: classes.dex */
    static class C4168a {

        /* renamed from: n */
        public OAuthErrCode f4852n;

        /* renamed from: o */
        public String f4853o;

        /* renamed from: p */
        public String f4854p;

        /* renamed from: q */
        public String f4855q;

        /* renamed from: r */
        public int f4856r;

        /* renamed from: s */
        public String f4857s;

        /* renamed from: t */
        public byte[] f4858t;

        private C4168a() {
        }

        /* renamed from: a */
        public static C4168a m504a(byte[] bArr) {
            C4168a c4168a = new C4168a();
            if (bArr == null || bArr.length == 0) {
                Log.m495e("MicroMsg.SDK.GetQRCodeResult", "parse fail, buf is null");
                c4168a.f4852n = OAuthErrCode.WechatAuth_Err_NetworkErr;
            } else {
                try {
                    try {
                        JSONObject jSONObject = new JSONObject(new String(bArr, "utf-8"));
                        int i = jSONObject.getInt("errcode");
                        if (i != 0) {
                            Log.m495e("MicroMsg.SDK.GetQRCodeResult", String.format("resp errcode = %d", Integer.valueOf(i)));
                            c4168a.f4852n = OAuthErrCode.WechatAuth_Err_NormalErr;
                            c4168a.f4856r = i;
                            c4168a.f4857s = jSONObject.optString("errmsg");
                        } else {
                            String string = jSONObject.getJSONObject("qrcode").getString("qrcodebase64");
                            if (string == null || string.length() == 0) {
                                Log.m495e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBase64 is null");
                                c4168a.f4852n = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                            } else {
                                byte[] decode = Base64.decode(string, 0);
                                if (decode == null || decode.length == 0) {
                                    Log.m495e("MicroMsg.SDK.GetQRCodeResult", "parse fail, qrcodeBuf is null");
                                    c4168a.f4852n = OAuthErrCode.WechatAuth_Err_JsonDecodeErr;
                                } else {
                                    c4168a.f4852n = OAuthErrCode.WechatAuth_Err_OK;
                                    c4168a.f4858t = decode;
                                    c4168a.f4853o = jSONObject.getString("uuid");
                                    c4168a.f4854p = jSONObject.getString("appname");
                                    Log.m496d("MicroMsg.SDK.GetQRCodeResult", String.format("parse succ, save in memory, uuid = %s, appname = %s, imgBufLength = %d", c4168a.f4853o, c4168a.f4854p, Integer.valueOf(c4168a.f4858t.length)));
                                }
                            }
                        }
                    } catch (Exception e) {
                        Log.m495e("MicroMsg.SDK.GetQRCodeResult", String.format("parse json fail, ex = %s", e.getMessage()));
                        c4168a.f4852n = OAuthErrCode.WechatAuth_Err_NormalErr;
                    }
                } catch (Exception e2) {
                    Log.m495e("MicroMsg.SDK.GetQRCodeResult", String.format("parse fail, build String fail, ex = %s", e2.getMessage()));
                    c4168a.f4852n = OAuthErrCode.WechatAuth_Err_NormalErr;
                }
            }
            return c4168a;
        }
    }

    static {
        f4847i = null;
        f4847i = "https://open.weixin.qq.com/connect/sdk/qrconnect?appid=%s&noncestr=%s&timestamp=%s&scope=%s&signature=%s";
    }

    public AsyncTaskC4167d(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        this.appId = str;
        this.scope = str2;
        this.f4848j = str3;
        this.f4849k = str4;
        this.signature = str5;
        this.f4850l = oAuthListener;
    }

    /* renamed from: a */
    public final boolean m505a() {
        Log.m494i("MicroMsg.SDK.GetQRCodeTask", "cancelTask");
        return this.f4851m == null ? cancel(true) : this.f4851m.cancel(true);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ C4168a doInBackground(Void[] voidArr) {
        Log.m494i("MicroMsg.SDK.GetQRCodeTask", "external storage available = false");
        String format = String.format(f4847i, this.appId, this.f4848j, this.f4849k, this.scope, this.signature);
        long currentTimeMillis = System.currentTimeMillis();
        byte[] m503a = C4169e.m503a(format);
        Log.m496d("MicroMsg.SDK.GetQRCodeTask", String.format("doInBackground, url = %s, time consumed = %d(ms)", format, Long.valueOf(System.currentTimeMillis() - currentTimeMillis)));
        return C4168a.m504a(m503a);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(C4168a c4168a) {
        C4168a c4168a2 = c4168a;
        if (c4168a2.f4852n != OAuthErrCode.WechatAuth_Err_OK) {
            Log.m495e("MicroMsg.SDK.GetQRCodeTask", String.format("onPostExecute, get qrcode fail, OAuthErrCode = %s", c4168a2.f4852n));
            this.f4850l.onAuthFinish(c4168a2.f4852n, null);
            return;
        }
        Log.m496d("MicroMsg.SDK.GetQRCodeTask", "onPostExecute, get qrcode success");
        this.f4850l.onAuthGotQrcode(c4168a2.f4855q, c4168a2.f4858t);
        this.f4851m = new AsyncTaskC4170f(c4168a2.f4853o, this.f4850l);
        AsyncTaskC4170f asyncTaskC4170f = this.f4851m;
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTaskC4170f.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            asyncTaskC4170f.execute(new Void[0]);
        }
    }
}
