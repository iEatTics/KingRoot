package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes.dex */
public class cde {
    /* renamed from: i */
    public static String m4857i(Context context, String str, String str2) {
        return context.getSharedPreferences("cldtps_cfg", 0).getString(str, str2);
    }

    /* renamed from: j */
    public static void m4856j(Context context, String str, String str2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("cldtps_cfg", 0).edit();
        edit.putString(str, str2);
        edit.commit();
    }
}
