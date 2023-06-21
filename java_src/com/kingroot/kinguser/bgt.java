package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class bgt {
    private static final List<String> bpb = Arrays.asList("com.tencent.android.qqdownloader", "com.android.vending", "com.baidu.appsearch", "com.wandoujia.phoenix2", "com.qihoo.appstore");

    /* renamed from: bu */
    public static void m7089bu(Context context) {
        Intent intent = getIntent(C3636tj.getPackageName());
        intent.setPackage(bpb.get(0));
        intent.addFlags(268435456);
        if (intent.resolveActivity(C3636tj.getPackageManager()) != null) {
            C3637tk.m2167cS("ku_utils_MarketHelper").m2161s(300000L);
            context.startActivity(intent);
        }
    }

    /* renamed from: bv */
    public static List<String> m7088bv(Context context) {
        List<ResolveInfo> queryIntentActivities = C3952zh.m1312pq().queryIntentActivities(getIntent(C3636tj.getPackageName()), 32);
        ArrayList arrayList = new ArrayList(bpb.size());
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            if (resolveInfo.activityInfo.packageName != null && bpb.contains(resolveInfo.activityInfo.packageName)) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        return arrayList;
    }

    public static Intent getIntent(String str) {
        return new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
    }

    public static boolean abX() {
        if (!akr.m11154BL().m11151BO() || C3946zb.m1330pl()) {
            return false;
        }
        if (adk.m12539b(aks.m11143BP().m10971FF(), System.currentTimeMillis(), 172800000L)) {
            boolean m7763WS = bbv.m7771WK().m7763WS();
            List<String> m7088bv = m7088bv(KApplication.m13453ge());
            if (m7763WS && m7088bv.contains(bpb.get(0))) {
                return true;
            }
        }
        return false;
    }
}
