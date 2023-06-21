package com.tencent.qqpimsdk.qqloginaar.p023qq;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import com.kingroot.kinguser.bti;
import com.kingroot.kinguser.btj;
import com.kingroot.kinguser.btk;
import com.kingroot.kinguser.btl;
import com.kingroot.kinguser.btm;
import com.kingroot.kinguser.btn;
import com.kingroot.kinguser.cci;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
import com.p019qq.taf.jce.JceStruct;
import com.tencent.qqpimsdk.qqloginaar.QQLogin;
import java.util.concurrent.LinkedBlockingQueue;
import oicq.wlogin_sdk.request.WUserSigInfo;
import oicq.wlogin_sdk.request.WtloginHelper;
import oicq.wlogin_sdk.request.WtloginListener;
import oicq.wlogin_sdk.sharemem.WloginSimpleInfo;
import oicq.wlogin_sdk.tools.ErrMsg;
import qqpimaccount.AccountInfo;
import qqpimaccount.GenderTypeEnum;
/* renamed from: com.tencent.qqpimsdk.qqloginaar.qq.QQQuickLoginActivity */
/* loaded from: classes.dex */
public class QQQuickLoginActivity extends Activity {
    private btm bMZ;
    private WtloginListener bNa;
    private AccountInfo bNb;

    /* renamed from: e */
    private String f4885e;

    /* renamed from: f */
    private String f4886f;

    /* renamed from: g */
    private String f4887g;

    /* renamed from: d */
    private final int f4884d = 5004;

    /* renamed from: h */
    private String f4888h = "";

    /* renamed from: i */
    private final String f4889i = "36BBDE2CED94994C";

    /* renamed from: a */
    private String m468a() {
        return this.f4885e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m467a(int i) {
        IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
        if (iKlApplicationManager.getRunningPluginApplication(5004) == null) {
            iKlApplicationManager.launchPlugin(5004);
        }
        btk btkVar = new btk();
        btkVar.f2114a = i;
        btkVar.bMY = this.bNb;
        ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(5004, btkVar.transferToBundle());
        finish();
    }

    /* renamed from: b */
    private String m463b() {
        return this.f4886f;
    }

    /* renamed from: c */
    private bti m460c(String str, byte[] bArr, byte[] bArr2, String str2) {
        String m5538a = btl.m5538a(QQLogin.CONTEXT);
        bti btiVar = new bti();
        btiVar.f2083a = 5;
        if (str == null) {
            str = "";
        }
        btiVar.f2084b = str;
        btiVar.f2086d = "36BBDE2CED94994C";
        if (m5538a == null) {
            m5538a = "";
        }
        btiVar.f2087e = m5538a;
        btiVar.bMW = (short) 2052;
        btiVar.f2091i = bArr;
        btiVar.f2090h = "";
        btiVar.f2089g = "";
        btiVar.f2088f = "";
        btiVar.f2092j = bArr2;
        btiVar.f2085c = str2;
        return btiVar;
    }

    /* renamed from: a */
    public int m464a(String str, byte[] bArr, byte[] bArr2, String str2) {
        int m461b = m461b(str, bArr, bArr2, str2);
        if (m461b == 0 || m461b == 1003) {
            AccountInfo accountInfo = this.bNb;
            accountInfo.setAccountType(1);
            accountInfo.setAccount(str);
            String m468a = m468a();
            if (m468a != null) {
                accountInfo.setLoginKey(m468a);
            }
            String m463b = m463b();
            if (m463b != null) {
                accountInfo.setLoginRefreshKey(m463b);
            }
        }
        return m461b;
    }

    /* renamed from: b */
    protected int m461b(String str, byte[] bArr, byte[] bArr2, String str2) {
        btj btjVar;
        bti m460c = m460c(str, bArr, bArr2, str2);
        btj btjVar2 = new btj();
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(1);
        btn.ahZ().sendShark(7019, m460c, btjVar2, new cci() { // from class: com.tencent.qqpimsdk.qqloginaar.qq.QQQuickLoginActivity.2
            /* renamed from: a */
            private void m458a() {
                btj btjVar3 = new btj();
                btjVar3.f2101a = -1;
                linkedBlockingQueue.add(btjVar3);
            }

            @Override // com.kingroot.kinguser.cci
            /* renamed from: a */
            public void mo457a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
                if (i2 != 17019 || jceStruct == null) {
                    m458a();
                } else if (jceStruct instanceof btj) {
                    linkedBlockingQueue.add((btj) jceStruct);
                } else {
                    m458a();
                }
            }
        });
        try {
            btjVar = (btj) linkedBlockingQueue.take();
        } catch (Exception e) {
            e.printStackTrace();
            btjVar = null;
        }
        if (btjVar == null) {
            this.f4885e = null;
            return -100;
        } else if (btjVar.f2101a == -1) {
            return 201;
        } else {
            this.f4885e = btjVar.f2102b;
            this.f4886f = btjVar.f2113m;
            this.f4887g = btjVar.f2104d;
            return m459e(btjVar.f2101a, btjVar.f2106f);
        }
    }

    /* renamed from: e */
    protected int m459e(int i, String str) {
        switch (i) {
            case 0:
                return 0;
            case 5:
                return 254;
            case 6:
                return 209;
            case 101:
                return 101;
            case 102:
            case 1003:
                return 1003;
            case 107:
            case 1004:
                return 1004;
            case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
            case 255:
                return 255;
            case 203:
                return 203;
            case 400:
                return 207;
            default:
                if (str == null || str.length() <= 0) {
                    return -101;
                }
                this.f4888h = str;
                return -102;
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 == 0) {
            btm btmVar = this.bMZ;
            btm.bNh.SetListener(null);
            m467a(3);
            return;
        }
        btm btmVar2 = this.bMZ;
        if (-1001 != btm.bNh.onQuickLoginActivityResultData(btm.ahY(), intent)) {
            m467a(2);
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bNb = new AccountInfo();
        this.bMZ = btm.m5535bO(this);
        this.bNa = new WtloginListener() { // from class: com.tencent.qqpimsdk.qqloginaar.qq.QQQuickLoginActivity.1
            @Override // oicq.wlogin_sdk.request.WtloginListener
            public void OnException(ErrMsg errMsg, int i, WUserSigInfo wUserSigInfo) {
            }

            @Override // oicq.wlogin_sdk.request.WtloginListener
            public void onQuickLogin(final String str, final WtloginHelper.QuickLoginParam quickLoginParam, int i, ErrMsg errMsg) {
                if (i != 0) {
                    QQQuickLoginActivity.this.m467a(2);
                } else {
                    new Thread(new Runnable() { // from class: com.tencent.qqpimsdk.qqloginaar.qq.QQQuickLoginActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            int m464a = QQQuickLoginActivity.this.m464a(str, WtloginHelper.GetTicketSig(quickLoginParam.userSigInfo, 64), new byte[0], btn.ahZ().getGuid());
                            if (m464a != 0 && m464a != 1003) {
                                QQQuickLoginActivity.this.m467a(2);
                                return;
                            }
                            WloginSimpleInfo wloginSimpleInfo = new WloginSimpleInfo();
                            QQQuickLoginActivity.this.bMZ.m5536a(str, wloginSimpleInfo);
                            if (wloginSimpleInfo._gender != null && wloginSimpleInfo._gender.length > 0) {
                                switch (wloginSimpleInfo._gender[0]) {
                                    case 0:
                                        QQQuickLoginActivity.this.bNb.setGender(GenderTypeEnum.UNKNOWN);
                                        break;
                                    case 1:
                                        QQQuickLoginActivity.this.bNb.setGender(GenderTypeEnum.MALE);
                                        break;
                                    case 2:
                                        QQQuickLoginActivity.this.bNb.setGender(GenderTypeEnum.FEMALE);
                                        break;
                                    default:
                                        QQQuickLoginActivity.this.bNb.setGender(GenderTypeEnum.UNKNOWN);
                                        break;
                                }
                            }
                            QQQuickLoginActivity.this.bNb.setNickName(new String(wloginSimpleInfo._nick));
                            QQQuickLoginActivity.this.bNb.setPortraitUrl(new String(wloginSimpleInfo._img_url));
                            QQQuickLoginActivity.this.m467a(1);
                        }
                    }).start();
                }
            }
        };
        this.bMZ.m5537a(this, this.bNa);
    }
}
