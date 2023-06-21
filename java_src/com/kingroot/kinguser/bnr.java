package com.kingroot.kinguser;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.p004v4.app.Fragment;
import android.text.TextUtils;
import android.widget.Toast;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes.dex */
public class bnr {
    private bno bEQ;
    private bnn bEx;

    private bnr(String str, Context context) {
        bpy.m5845aT("openSDK_LOG.QQAuth", "new QQAuth() --start");
        this.bEQ = new bno(str);
        this.bEx = new bnn(this.bEQ);
        bnm.m6220c(context, this.bEQ);
        bpy.m5845aT("openSDK_LOG.QQAuth", "new QQAuth() --end");
    }

    /* renamed from: e */
    public static bnr m6159e(String str, Context context) {
        bqo.m5781a(context.getApplicationContext());
        bpy.m5845aT("openSDK_LOG.QQAuth", "QQAuth -- createInstance() --start");
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.tauth.AuthActivity"), 0);
            packageManager.getActivityInfo(new ComponentName(context.getPackageName(), "com.tencent.connect.common.AssistActivity"), 0);
            bnr bnrVar = new bnr(str, context);
            bpy.m5845aT("openSDK_LOG.QQAuth", "QQAuth -- createInstance()  --end");
            return bnrVar;
        } catch (PackageManager.NameNotFoundException e) {
            bpy.m5843b("openSDK_LOG.QQAuth", "createInstance() error --end", e);
            Toast.makeText(context.getApplicationContext(), "请参照文档在Androidmanifest.xml加上AuthActivity和AssitActivity的定义 ", 1).show();
            return null;
        }
    }

    /* renamed from: b */
    public int m6161b(Activity activity, String str, bwd bwdVar) {
        bpy.m5845aT("openSDK_LOG.QQAuth", "login()");
        return m6163a(activity, str, bwdVar, "");
    }

    /* renamed from: a */
    public int m6163a(Activity activity, String str, bwd bwdVar, String str2) {
        bpy.m5845aT("openSDK_LOG.QQAuth", "-->login activity: " + activity);
        return m6164a(activity, null, str, bwdVar, str2);
    }

    /* renamed from: a */
    private int m6164a(Activity activity, Fragment fragment, String str, bwd bwdVar, String str2) {
        String str3;
        String packageName = activity.getApplicationContext().getPackageName();
        Iterator<ApplicationInfo> it = activity.getPackageManager().getInstalledApplications(128).iterator();
        while (true) {
            if (!it.hasNext()) {
                str3 = null;
                break;
            }
            ApplicationInfo next = it.next();
            if (packageName.equals(next.packageName)) {
                str3 = next.sourceDir;
                break;
            }
        }
        if (str3 != null) {
            try {
                String m5784c = bqn.m5784c(new File(str3));
                if (!TextUtils.isEmpty(m5784c)) {
                    bpy.m5848a("openSDK_LOG.QQAuth", "-->login channelId: " + m5784c);
                    return m6162a(activity, str, bwdVar, m5784c, m5784c, "");
                }
            } catch (IOException e) {
                bpy.m5843b("openSDK_LOG.QQAuth", "-->login get channel id exception.", e);
                e.printStackTrace();
            }
        }
        bpy.m5846aP("openSDK_LOG.QQAuth", "-->login channelId is null ");
        bns.bEX = false;
        return this.bEx.m6216a(activity, str, bwdVar, false, fragment);
    }

    @Deprecated
    /* renamed from: a */
    public int m6162a(Activity activity, String str, bwd bwdVar, String str2, String str3, String str4) {
        bpy.m5845aT("openSDK_LOG.QQAuth", "loginWithOEM");
        bns.bEX = true;
        if (str2.equals("")) {
            str2 = "null";
        }
        if (str3.equals("")) {
            str3 = "null";
        }
        if (str4.equals("")) {
            str4 = "null";
        }
        bns.bEV = str3;
        bns.bEU = str2;
        bns.bEW = str4;
        return this.bEx.m6217a(activity, str, bwdVar);
    }

    public bno agq() {
        return this.bEQ;
    }

    /* renamed from: c */
    public boolean m6160c() {
        bpy.m5848a("openSDK_LOG.QQAuth", "isSessionValid(), result = " + (this.bEQ.agl() ? "true" : "false") + "");
        return this.bEQ.agl();
    }
}
