package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.List;
/* loaded from: classes.dex */
public class bhg {
    public static void init(Context context) {
        if (!acu()) {
            String str = aba.m12855qF() + " unfeedbk";
            try {
                String acr = acr();
                if (!TextUtils.isEmpty(acr)) {
                    String format = String.format("%s \"%s\" \"%s\" \"%s\"", str, "ktools_poseidon", acr, context.getApplicationInfo().dataDir);
                    if (abc.m12845qK().isRootPermition()) {
                        abc.m12845qK().m12846el(format);
                        return;
                    }
                    VTCmdResult m12827Q = abj.m12827Q("sh", format);
                    if (m12827Q == null || !m12827Q.success()) {
                    }
                }
            } catch (abn e) {
            }
        }
    }

    private static String acr() {
        String acs = acs();
        if (TextUtils.isEmpty(acs)) {
            return null;
        }
        String act = act();
        if (Build.VERSION.SDK_INT >= 17) {
            return String.format("%s %s %s", acs, act, "--user 0");
        }
        return String.format("%s %s", acs, act);
    }

    private static String acs() {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("http://www.kingroot.net/kmsupport.jsp"));
        List<ResolveInfo> queryIntentActivities = C3952zh.m1312pq().queryIntentActivities(intent, 32);
        for (ResolveInfo resolveInfo : queryIntentActivities) {
        }
        if (queryIntentActivities.size() > 0) {
            ResolveInfo resolveInfo2 = queryIntentActivities.get(0);
            return String.format("am start -n %s -a android.intent.action.VIEW -d", resolveInfo2.activityInfo.packageName + "/" + resolveInfo2.activityInfo.name);
        }
        return null;
    }

    private static String act() {
        return bgn.m7099a(abc.m12845qK().isRootPermition(true), true, true);
    }

    private static boolean acu() {
        String str = null;
        try {
            ApplicationInfo applicationInfo = KApplication.m13453ge().getApplicationInfo();
            if (applicationInfo != null) {
                str = String.format("u0_a" + (applicationInfo.uid % 1000), new Object[0]);
            }
        } catch (Exception e) {
        }
        VTCmdResult m12831em = abi.m12831em("ps ktools");
        return m12831em.mStdOut.contains("ktools_poseidon") || (!TextUtils.isEmpty(str) && m12831em.mStdOut.contains(str));
    }
}
