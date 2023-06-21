package oicq.wlogin_sdk.quicklogin;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import oicq.wlogin_sdk.request.WtloginHelper;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.RSACrypt;
/* renamed from: oicq.wlogin_sdk.quicklogin.a */
/* loaded from: classes.dex */
public class C4321a {
    /* renamed from: a */
    private static int m224a(Activity activity, long j, long j2, WtloginHelper.QuickLoginParam quickLoginParam) {
        Intent intent;
        if (quickLoginParam == null || quickLoginParam.webViewActivityClassName == null || quickLoginParam.webViewActivityClassName.length() == 0) {
            intent = new Intent(activity, QuickLoginWebViewActivity.class);
        } else {
            intent = new Intent();
            intent.setClassName(activity, quickLoginParam.webViewActivityClassName);
        }
        intent.putExtra("appid", j);
        intent.putExtra("subappid", j2);
        if (quickLoginParam != null && quickLoginParam.userAccount != null && quickLoginParam.userAccount.length() != 0) {
            intent.putExtra("account", quickLoginParam.userAccount);
            intent.putExtra("isUserAccountLocked", quickLoginParam.isUserAccountLocked);
        }
        if (quickLoginParam != null) {
            intent.putExtra("forceWebLogin", quickLoginParam.forceWebLogin);
        }
        activity.startActivityForResult(intent, WtloginHelper.QuickLoginRequestCode.REQUEST_PT_LOGIN);
        return 0;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004a -> B:17:0x0013). Please submit an issue!!! */
    /* renamed from: a */
    public static int m223a(Context context, Activity activity, long j, long j2, String str, WtloginHelper.QuickLoginParam quickLoginParam) {
        int m224a;
        if (quickLoginParam == null || true != quickLoginParam.forceWebLogin) {
            try {
                m224a = true == C4393util.CheckMayFastLogin(context) ? m222a(context, activity, "com.tencent.mobileqq", j, j2, str) : true == C4393util.CheckQQMiniHD(context) ? m222a(context, activity, "com.tencent.minihd.qq", j, j2, str) : m224a(activity, j, j2, quickLoginParam);
            } catch (Exception e) {
                m224a = m224a(activity, j, j2, quickLoginParam);
            }
            return m224a;
        }
        return m224a(activity, j, j2, quickLoginParam);
    }

    /* renamed from: a */
    private static int m222a(Context context, Activity activity, String str, long j, long j2, String str2) {
        byte[] bArr = C4393util.get_rsa_pubkey(context);
        if (bArr == null || bArr.length == 0) {
            bArr = C4393util.string_to_buf(RSACrypt.DEFAULT_PUB_KEY);
        }
        Intent intent = new Intent();
        intent.setClassName(str, "com.tencent.open.agent.AgentActivity");
        Bundle bundle = new Bundle();
        bundle.putLong("dstSsoVer", 1L);
        bundle.putLong("dstAppid", j);
        bundle.putLong("subDstAppid", j2);
        bundle.putByteArray("dstAppVer", str2.getBytes());
        bundle.putByteArray("publickey", bArr);
        intent.putExtra("key_params", bundle);
        intent.putExtra("key_action", "action_quick_login");
        activity.startActivityForResult(intent, 1201);
        return 0;
    }
}
