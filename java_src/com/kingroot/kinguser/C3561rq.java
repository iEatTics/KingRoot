package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.rq */
/* loaded from: classes.dex */
public class C3561rq {
    /* renamed from: iU */
    public static void m2372iU() {
        if (abc.m12845qK().isRootPermition(true)) {
            try {
                String m2373cu = m2373cu("OP_SYSTEM_ALERT_WINDOW");
                if (!TextUtils.isEmpty(m2373cu)) {
                    abc.m12845qK().m12846el(m2373cu);
                }
                if (!TextUtils.isEmpty(C3949ze.get("ro.yunos.version", null))) {
                    String m2371iV = m2371iV();
                    if (!TextUtils.isEmpty(m2371iV)) {
                        abc.m12845qK().m12846el(m2371iV);
                    }
                }
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: iV */
    private static String m2371iV() {
        int m12850l = abb.m12851ek("com.aliyun.permission.IPermissionService$Stub") ? abb.m12850l("TRANSACTION_notifyChangedPermission", -1) : -1;
        if (m12850l == -1) {
            return null;
        }
        return String.format(Locale.US, "service call Permission %d s16 \"%s\" i32 1 s16 \"%s 0\" i32 1", Integer.valueOf(m12850l), KApplication.m13453ge().getPackageName(), "android.permission.SYSTEM_ALERT_WINDOW");
    }

    /* renamed from: cu */
    protected static String m2373cu(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        int i = bzt.m5101ge().getApplicationInfo().uid;
        int m12850l = abb.m12851ek("com.android.internal.app.IAppOpsService$Stub") ? abb.m12850l("TRANSACTION_setMode", -1) : -1;
        if (m12850l != -1) {
            int m12850l2 = abb.m12851ek("android.app.AppOpsManager") ? abb.m12850l(str, -1) : -1;
            if (m12850l2 != -1) {
                return String.format("service call %s %d i32 %d i32 %d s16 %s i32 %d", "appops", Integer.valueOf(m12850l), Integer.valueOf(m12850l2), Integer.valueOf(i), C3636tj.getPackageName(), 0);
            }
            return null;
        }
        return null;
    }
}
