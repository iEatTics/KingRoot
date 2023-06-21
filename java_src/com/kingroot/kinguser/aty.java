package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.kingroot.master.app.KUApplication;
import java.util.List;
/* loaded from: classes.dex */
public class aty {
    /* renamed from: f */
    public static boolean m9109f(Context context, String str, String str2) {
        if (context == null) {
            context = KUApplication.m13453ge();
        }
        if (str == null) {
            str = context.getPackageName();
        }
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + str));
            intent.addFlags(268435456);
            intent.setPackage("com.android.vending");
            List<ResolveInfo> queryIntentActivities = C3952zh.m1312pq().queryIntentActivities(intent, 0);
            if (queryIntentActivities == null || queryIntentActivities.size() < 1) {
                String str3 = "https://play.google.com/store/apps/details?id=" + str;
                if (!TextUtils.isEmpty(str2)) {
                    str3 = str3 + str2;
                }
                Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str3));
                intent2.addFlags(268435456);
                context.startActivity(intent2);
                return true;
            }
            context.startActivity(intent);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: x */
    public static boolean m9108x(Context context, String str) {
        return m9109f(context, str, null);
    }
}
