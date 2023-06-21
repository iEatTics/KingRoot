package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.support.p004v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
/* renamed from: com.kingroot.kinguser.ro */
/* loaded from: classes.dex */
public class C3531ro {

    /* renamed from: Ge */
    public static int f3483Ge = 11;

    /* renamed from: Gf */
    public static int f3484Gf = 63;

    /* renamed from: Gg */
    private static C3531ro f3485Gg;

    /* renamed from: iM */
    public static C3531ro m2434iM() {
        if (f3485Gg == null) {
            f3485Gg = new C3531ro();
        }
        return f3485Gg;
    }

    /* renamed from: x */
    private int m2430x(String str, String str2) {
        if (abb.m12851ek(str)) {
            return abb.m12850l(str2, -1);
        }
        return -1;
    }

    /* renamed from: k */
    public int m2433k(String str, boolean z) {
        int m2432l = m2432l(str, z);
        int m2431m = m2431m(str, z);
        if (m2432l == 0 || m2431m == 0) {
            return 0;
        }
        return m2432l;
    }

    /* renamed from: l */
    private int m2432l(String str, boolean z) {
        int m2430x = m2430x(ApplicationInfo.class.getName(), "FLAG_DISABLE_AUTOSTART");
        C3949ze.get("ro.miui.ui.version.name");
        if (m2430x == -1) {
            int m2430x2 = m2430x("com.android.internal.app.IAppOpsService$Stub", "TRANSACTION_setMode");
            ApplicationInfo applicationInfo = null;
            try {
                applicationInfo = C3952zh.m1312pq().getApplicationInfo(str, 0);
            } catch (Throwable th) {
            }
            if (applicationInfo != null) {
                int i = applicationInfo.uid;
                if (m2430x2 == -1) {
                    return 3;
                }
                if (i == -1 || TextUtils.isEmpty(str)) {
                    return 4;
                }
                Object[] objArr = new Object[6];
                objArr[0] = "appops";
                objArr[1] = Integer.valueOf(m2430x2);
                objArr[2] = 50;
                objArr[3] = Integer.valueOf(i);
                objArr[4] = str;
                objArr[5] = Integer.valueOf(z ? 0 : 1);
                return !m2435cq(String.format("service call %s %d i32 %d i32 %d s16 %s i32 %d", objArr)) ? 2 : 0;
            }
            return 4;
        }
        int m2430x3 = m2430x("android.content.pm.IPackageManager$Stub", "TRANSACTION_setApplicationEnabledSetting");
        if (m2430x3 == -1) {
            return 3;
        }
        Object[] objArr2 = new Object[7];
        objArr2[0] = "package";
        objArr2[1] = Integer.valueOf(m2430x3);
        objArr2[2] = str;
        objArr2[3] = 1073741824;
        if (z) {
            m2430x = 0;
        }
        objArr2[4] = Integer.valueOf(m2430x);
        objArr2[5] = 0;
        objArr2[6] = "com.android.settings";
        return !m2435cq(String.format("service call %s %d s16 %s i32 %d i32 %d i32 %d s16 %s", objArr2)) ? 2 : 0;
    }

    /* renamed from: m */
    private int m2431m(String str, boolean z) {
        long j;
        long j2;
        int m2430x = m2430x(ApplicationInfo.class.getName(), "FLAG_DISABLE_AUTOSTART");
        C3949ze.get("ro.miui.ui.version.name");
        if (m2430x == -1) {
            try {
                abc m12845qK = abc.m12845qK();
                String format = String.format("content query --uri  content://com.lbe.security.miui.permmgr/active/%s --projection userAccept:userReject", str);
                if (m12845qK.isRootPermition(true)) {
                    VTCmdResult m12846el = m12845qK.m12846el(format);
                    if (m12846el.success()) {
                        String str2 = m12846el.mStdOut;
                        String substring = str2.substring(str2.indexOf("userAccept="), str2.indexOf(", userReject"));
                        String substring2 = str2.substring(str2.indexOf("userReject="), str2.length() - 1);
                        long intValue = Integer.valueOf(substring.split("=")[1]).intValue();
                        long intValue2 = Integer.valueOf(substring2.split("=")[1]).intValue();
                        if (z) {
                            j = intValue | PlaybackStateCompat.ACTION_PREPARE;
                            j2 = intValue2 & (-16385);
                        } else {
                            j = intValue & (-16385);
                            j2 = intValue2 | PlaybackStateCompat.ACTION_PREPARE;
                        }
                        return !m2435cq(String.format("content update --uri  content://com.lbe.security.miui.permmgr/active/%s --bind userAccept:l:%d --bind userReject:l:%d", str, Long.valueOf(j), Long.valueOf(j2))) ? 2 : 0;
                    }
                    return 2;
                }
                return 1;
            } catch (Throwable th) {
                return 4;
            }
        }
        return 0;
    }

    /* renamed from: cq */
    private boolean m2435cq(String str) {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            return m12845qK.m12846el(str).success();
        }
        return false;
    }
}
