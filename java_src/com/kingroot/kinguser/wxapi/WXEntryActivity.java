package com.kingroot.kinguser.wxapi;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3826wd;
import com.kingroot.kinguser.C3828we;
import com.kingroot.kinguser.C3833wh;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import com.tencent.p020mm.opensdk.modelmsg.SendAuth;
import com.tencent.p020mm.opensdk.openapi.IWXAPI;
import com.tencent.p020mm.opensdk.openapi.IWXAPIEventHandler;
import com.tencent.p020mm.opensdk.openapi.WXAPIFactory;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class WXEntryActivity extends Activity implements IWXAPIEventHandler {
    C3826wd aiK;
    private IWXAPI bud;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.aiK = new C3826wd(this);
        this.bud = WXAPIFactory.createWXAPI(this, this.aiK.m1574nm(), false);
        this.bud.registerApp(this.aiK.m1574nm());
        this.bud.handleIntent(getIntent(), this);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        this.bud.handleIntent(intent, this);
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPIEventHandler
    public void onResp(BaseResp baseResp) {
        if (baseResp.getType() == 1) {
            switch (baseResp.errCode) {
                case -4:
                    C3828we.m1572a(KApplication.m13453ge(), false, C3826wd.f3855Mu);
                    break;
                case -3:
                case -1:
                default:
                    C3828we.m1572a(KApplication.m13453ge(), false, C3826wd.f3855Mu);
                    break;
                case -2:
                    C3828we.m1572a(KApplication.m13453ge(), false, C3826wd.f3855Mu);
                    break;
                case 0:
                    if (baseResp instanceof SendAuth.Resp) {
                        m1487lQ(((SendAuth.Resp) baseResp).code);
                        break;
                    }
                    break;
            }
        }
        finish();
    }

    @Override // com.tencent.p020mm.opensdk.openapi.IWXAPIEventHandler
    public void onReq(BaseReq baseReq) {
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    /* renamed from: lQ */
    private synchronized void m1487lQ(final String str) {
        beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.wxapi.WXEntryActivity.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                try {
                    JSONObject m1563dn = C3833wh.m1563dn("https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + WXEntryActivity.this.aiK.m1574nm() + "&secret=" + WXEntryActivity.this.aiK.m1573nn() + "&code=" + str + "&grant_type=authorization_code");
                    if (m1563dn != null) {
                        String trim = m1563dn.getString("openid").trim();
                        m1563dn.getString("access_token").trim();
                        C3826wd.f3855Mu.f3862Mz = trim;
                        C3826wd.f3855Mu.f3861My = "";
                        C3828we.m1572a(KApplication.m13453ge(), true, C3826wd.f3855Mu);
                    } else {
                        C3828we.m1572a(KApplication.m13453ge(), false, C3826wd.f3855Mu);
                    }
                } catch (Exception e) {
                }
            }
        });
    }
}
