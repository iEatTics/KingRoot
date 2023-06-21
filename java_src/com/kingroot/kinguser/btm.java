package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import oicq.wlogin_sdk.request.WtloginHelper;
import oicq.wlogin_sdk.request.WtloginListener;
import oicq.wlogin_sdk.sharemem.WloginSimpleInfo;
/* loaded from: classes.dex */
public class btm {
    private static btm bNg;
    public static WtloginHelper bNh = null;

    private btm(Context context) {
        bNh = new WtloginHelper(context.getApplicationContext());
    }

    public static WtloginHelper.QuickLoginParam ahY() {
        WtloginHelper.QuickLoginParam quickLoginParam = new WtloginHelper.QuickLoginParam();
        quickLoginParam.appid = 1600000082L;
        quickLoginParam.subAppid = 1L;
        quickLoginParam.sigMap = 1085664;
        quickLoginParam.userSigInfo._domains.clear();
        quickLoginParam.userSigInfo._domains.add("bangbang.qq.com");
        quickLoginParam.userSigInfo._domains.add("game.qq.com");
        return quickLoginParam;
    }

    /* renamed from: bO */
    public static btm m5535bO(Context context) {
        if (bNg == null) {
            synchronized (btm.class) {
                if (bNg == null) {
                    bNg = new btm(context);
                }
            }
        }
        return bNg;
    }

    /* renamed from: a */
    public void m5537a(Activity activity, WtloginListener wtloginListener) {
        bNh.SetListener(wtloginListener);
        bNh.SetImgType(4);
        bNh.quickLogin(activity, 1600000082L, 1L, "6.6.6", null);
    }

    /* renamed from: a */
    public boolean m5536a(String str, WloginSimpleInfo wloginSimpleInfo) {
        return bNh.GetBasicUserInfo(str, wloginSimpleInfo).booleanValue();
    }
}
