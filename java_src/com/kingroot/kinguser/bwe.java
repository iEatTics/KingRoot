package com.kingroot.kinguser;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
/* loaded from: classes.dex */
public class bwe {
    private static bwe bQV;
    private final bnr bET;

    private bwe(String str, Context context) {
        this.bET = bnr.m6159e(str, context);
    }

    /* renamed from: f */
    public static synchronized bwe m5337f(String str, Context context) {
        bwe bweVar;
        synchronized (bwe.class) {
            bqo.m5781a(context.getApplicationContext());
            bpy.m5845aT("openSDK_LOG.Tencent", "createInstance()  -- start, appId = " + str);
            if (bQV == null) {
                bQV = new bwe(str, context);
            } else if (!str.equals(bQV.agm())) {
                bQV.m5339bS(context);
                bQV = new bwe(str, context);
            }
            if (!m5341N(context, str)) {
                bweVar = null;
            } else {
                bqp.m5779L(context, str);
                bpy.m5845aT("openSDK_LOG.Tencent", "createInstance()  -- end");
                bweVar = bQV;
            }
        }
        return bweVar;
    }

    /* renamed from: N */
    private static boolean m5341N(Context context, String str) {
        try {
            context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
            try {
                context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
                return true;
            } catch (PackageManager.NameNotFoundException e) {
                bpy.m5840e("openSDK_LOG.Tencent", "AndroidManifest.xml 没有检测到com.tencent.connect.common.AssistActivity\n" + ("没有在AndroidManifest.xml中检测到com.tencent.connect.common.AssistActivity,请加上com.tencent.connect.common.AssistActivity,详细信息请查看官网文档.\n配置示例如下: \n<activity\n     android:name=\"com.tencent.connect.common.AssistActivity\"\n     android:screenOrientation=\"behind\"\n     android:theme=\"@android:style/Theme.Translucent.NoTitleBar\"\n     android:configChanges=\"orientation|keyboardHidden\">\n</activity>"));
                return false;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            bpy.m5840e("openSDK_LOG.Tencent", "AndroidManifest.xml 没有检测到com.tencent.tauth.AuthActivity" + (("没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.tauth.AuthActivity,并配置<data android:scheme=\"tencent" + str + "\" />,详细信息请查看官网文档.") + "\n配置示例如下: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n    <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent" + str + "\" />\n</intent-filter>\n</activity>"));
            return false;
        }
    }

    /* renamed from: c */
    public int m5338c(Activity activity, String str, bwd bwdVar) {
        bpy.m5845aT("openSDK_LOG.Tencent", "login() with activity, scope is " + str);
        return this.bET.m6161b(activity, str, bwdVar);
    }

    /* renamed from: bS */
    public void m5339bS(Context context) {
        bpy.m5845aT("openSDK_LOG.Tencent", "logout()");
        this.bET.agq().m6202aS(null, "0");
        this.bET.agq().m6201mH(null);
    }

    /* renamed from: b */
    public static boolean m5340b(int i, int i2, Intent intent, bwd bwdVar) {
        bpy.m5845aT("openSDK_LOG.Tencent", "onActivityResultData() reqcode = " + i + ", resultcode = " + i2 + ", data = null ? " + (intent == null) + ", listener = null ? " + (bwdVar == null));
        return bnt.agt().m6153a(i, i2, intent, bwdVar);
    }

    public boolean agl() {
        return this.bET.m6160c();
    }

    public String agm() {
        return this.bET.agq().agm();
    }
}
