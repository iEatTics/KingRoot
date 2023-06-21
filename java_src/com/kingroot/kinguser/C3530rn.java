package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
/* renamed from: com.kingroot.kinguser.rn */
/* loaded from: classes.dex */
public class C3530rn {
    /* renamed from: cp */
    public static boolean m2436cp(String str) {
        String str2 = "";
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = C3952zh.m1312pq().getApplicationInfo(str, 0);
        } catch (Throwable th) {
        }
        if (applicationInfo == null) {
            return false;
        }
        int i = applicationInfo.uid;
        int m12904qm = aav.m12904qm();
        if (m12904qm == 3) {
            str2 = String.format("service call %s %d i32 %d i32 %d s16 %s i32 %d", "appops", 11, 55, Integer.valueOf(i), str, 0);
        } else if (m12904qm == 4 || m12904qm == 45) {
            str2 = String.format("service call %s %d i32 %d i32 %d s16 %s i32 %d", "appops", 11, 65, Integer.valueOf(i), str, 0);
        } else if (m12904qm == 5) {
            str2 = String.format("content update --uri content://settings/secure --bind value:i:4 --where \"name='%s'\"", str.trim() + "_op_65");
        }
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            return m12845qK.m12846el(str2).success();
        }
        return false;
    }
}
