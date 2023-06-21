package com.tencent.qqpimsdk.qqloginaar;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.kingroot.kinguser.btn;
import com.tencent.qqpimsdk.qqloginaar.p023qq.QQQuickLoginActivity;
import com.tencent.qqpimsdk.qqloginaar.shark.ISharkUtil;
/* loaded from: classes.dex */
public class QQLogin {
    public static Context CONTEXT;

    public static void init(Context context, ISharkUtil iSharkUtil) {
        btn.ahZ().m5534a(iSharkUtil);
        CONTEXT = context;
    }

    public void login(Activity activity) {
        activity.startActivity(new Intent(activity, QQQuickLoginActivity.class));
    }
}
