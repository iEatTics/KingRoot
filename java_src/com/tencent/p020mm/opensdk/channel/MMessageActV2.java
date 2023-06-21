package com.tencent.p020mm.opensdk.channel;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.p020mm.opensdk.channel.p021a.C4163b;
import com.tencent.p020mm.opensdk.constants.Build;
import com.tencent.p020mm.opensdk.constants.ConstantsAPI;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.Log;
import oicq.wlogin_sdk.request.WtloginHelper;
/* renamed from: com.tencent.mm.opensdk.channel.MMessageActV2 */
/* loaded from: classes.dex */
public class MMessageActV2 {
    public static final String DEFAULT_ENTRY_CLASS_NAME = ".wxapi.WXEntryActivity";
    public static final String MM_ENTRY_PACKAGE_NAME = "com.tencent.mm";
    public static final String MM_MSG_ENTRY_CLASS_NAME = "com.tencent.mm.plugin.base.stub.WXEntryActivity";
    private static final String TAG = "MicroMsg.SDK.MMessageAct";

    /* renamed from: com.tencent.mm.opensdk.channel.MMessageActV2$Args */
    /* loaded from: classes.dex */
    public static class Args {
        public static final int INVALID_FLAGS = -1;
        public Bundle bundle;
        public String content;
        public int flags = -1;
        public String targetClassName;
        public String targetPkgName;
        public String token;

        public String toString() {
            return "targetPkgName:" + this.targetPkgName + ", targetClassName:" + this.targetClassName + ", content:" + this.content + ", flags:" + this.flags + ", bundle:" + this.bundle;
        }
    }

    public static boolean send(Context context, Args args) {
        if (context == null || args == null) {
            Log.m495e(TAG, "send fail, invalid argument");
            return false;
        } else if (C4178d.m486b(args.targetPkgName)) {
            Log.m495e(TAG, "send fail, invalid targetPkgName, targetPkgName = " + args.targetPkgName);
            return false;
        } else {
            if (C4178d.m486b(args.targetClassName)) {
                args.targetClassName = args.targetPkgName + DEFAULT_ENTRY_CLASS_NAME;
            }
            Log.m496d(TAG, "send, targetPkgName = " + args.targetPkgName + ", targetClassName = " + args.targetClassName);
            Intent intent = new Intent();
            intent.setClassName(args.targetPkgName, args.targetClassName);
            if (args.bundle != null) {
                intent.putExtras(args.bundle);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, args.content);
            intent.putExtra(ConstantsAPI.CHECK_SUM, C4163b.m509a(args.content, Build.SDK_INT, packageName));
            intent.putExtra(ConstantsAPI.TOKEN, args.token);
            if (args.flags == -1) {
                intent.addFlags(268435456).addFlags(WtloginHelper.SigType.WLOGIN_PT4Token);
            } else {
                intent.setFlags(args.flags);
            }
            try {
                context.startActivity(intent);
                Log.m496d(TAG, "send mm message, intent=" + intent);
                return true;
            } catch (Exception e) {
                Log.m495e(TAG, "send fail, ex = " + e.getMessage());
                return false;
            }
        }
    }
}
