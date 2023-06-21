package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
/* loaded from: classes.dex */
public class ccu {
    /* renamed from: a */
    private static String m4894a(int i) {
        return String.format("%5d", Integer.valueOf(i));
    }

    /* renamed from: a */
    public static String m4893a(Context context, int i, String str) {
        return context.getSharedPreferences("secure_module_config", 0).getString(m4894a(i), str);
    }

    /* renamed from: b */
    public static void m4892b(Context context, int i, String str) {
        SharedPreferences.Editor edit = context.getSharedPreferences("secure_module_config", 0).edit();
        edit.putString(m4894a(i), str);
        edit.commit();
    }

    /* renamed from: c */
    public static int m4891c(Context context, int i, int i2) {
        return context.getSharedPreferences("secure_module_config", 0).getInt(m4894a(i), i2);
    }

    /* renamed from: d */
    public static void m4890d(Context context, int i, int i2) {
        SharedPreferences.Editor edit = context.getSharedPreferences("secure_module_config", 0).edit();
        edit.putInt(m4894a(i), i2);
        edit.commit();
    }
}
