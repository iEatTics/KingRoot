package com.kingroot.kinguser;

import android.content.Context;
import com.tencent.p020mm.opensdk.modelmsg.SendAuth;
import com.tencent.p020mm.opensdk.openapi.IWXAPI;
import com.tencent.p020mm.opensdk.openapi.WXAPIFactory;
/* renamed from: com.kingroot.kinguser.wf */
/* loaded from: classes.dex */
public class C3830wf {

    /* renamed from: MD */
    private IWXAPI f3864MD;

    public C3830wf(Context context, String str) {
        this.f3864MD = WXAPIFactory.createWXAPI(context, str, false);
        registerApp(str);
    }

    public boolean isWXAppInstalled() {
        return this.f3864MD.isWXAppInstalled();
    }

    public boolean registerApp(String str) {
        return this.f3864MD.registerApp(str);
    }

    /* renamed from: no */
    public void m1565no() {
        SendAuth.Req req = new SendAuth.Req();
        req.scope = "snsapi_userinfo";
        req.state = "kingroot_login_state";
        this.f3864MD.sendReq(req);
    }
}
