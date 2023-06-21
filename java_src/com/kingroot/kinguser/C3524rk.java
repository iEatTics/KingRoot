package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.firewall.Rule;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.List;
/* renamed from: com.kingroot.kinguser.rk */
/* loaded from: classes.dex */
public class C3524rk {

    /* renamed from: FX */
    private static final String f3476FX = AbstractC3976zt.get("cdpm6");

    /* renamed from: iA */
    public static void m2453iA() {
        m2452iB();
        m2451iC();
    }

    /* renamed from: r */
    public static void m2449r(List<ComponentName> list) {
        m2453iA();
        for (ComponentName componentName : list) {
            m2457a(componentName);
        }
    }

    /* renamed from: iB */
    public static void m2452iB() {
        PackageManager packageManager = C3636tj.getPackageManager();
        String packageName = C3636tj.getPackageName();
        if (packageManager != null && !TextUtils.isEmpty(packageName)) {
            try {
                PackageInfo packageInfo = packageManager.getPackageInfo(packageName, 2);
                if (packageInfo != null && packageInfo.receivers != null) {
                    ActivityInfo[] activityInfoArr = packageInfo.receivers;
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        if (activityInfo != null && !TextUtils.isEmpty(activityInfo.packageName) && !TextUtils.isEmpty(activityInfo.name)) {
                            ComponentName componentName = new ComponentName(C3636tj.m2169ge(), activityInfo.name);
                            if (packageManager.getComponentEnabledSetting(componentName) == 2) {
                                packageManager.setComponentEnabledSetting(componentName, 1, 1);
                                C3799vt.m1728lT().mo1746bi(ActionStatsID.EMID_KingCom_Receiver_Unlock);
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: iC */
    public static void m2451iC() {
        try {
            ApplicationInfo applicationInfo = KApplication.m13453ge().getApplicationInfo();
            if (applicationInfo != null) {
                int m2454aR = m2454aR(applicationInfo.uid);
                if (m2454aR > 0) {
                    C3799vt.m1728lT().mo1746bi(ActionStatsID.EMID_KingCom_Network_Lock);
                    for (int i = 0; i < m2454aR; i++) {
                        m2455aQ(applicationInfo.uid);
                    }
                }
                if (m2450m(applicationInfo.uid, "ACCEPT")) {
                    C3799vt.m1728lT().mo1746bi(ActionStatsID.EMID_KingCom_Network_Unlock);
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private static void m2457a(ComponentName componentName) {
        try {
            C3952zh m1312pq = C3952zh.m1312pq();
            if (m1312pq.getComponentEnabledSetting(componentName) != 1) {
                m1312pq.setComponentEnabledSetting(componentName, 0, 1);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private static boolean m2458a(int i, String str, String str2, String str3) {
        return abc.m12845qK().isRootPermition() && abc.m12845qK().m12846el(String.format(f3476FX, str, str2, Integer.valueOf(i), str3)).success();
    }

    /* renamed from: m */
    private static boolean m2450m(int i, String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            AbstractC3624tc m2200jw = AbstractC3624tc.m2200jw();
            if (m2200jw.mo2197jx() != 0) {
                Rule rule = new Rule();
                rule.uid = i;
                rule.type = 1;
                rule.f778GZ = str;
                rule.f779Ha = str;
                if (m2200jw.mo2196jy()) {
                    m2200jw.setEnable(true);
                    m2200jw.mo2199a(rule);
                } else if (m2200jw.mo2195jz()) {
                    m2200jw.setEnable(true);
                    m2200jw.mo2199a(rule);
                }
                return true;
            }
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: aP */
    public static void m2456aP(int i) {
        m2458a(i, "-A", "OUTPUT", "DROP");
        m2458a(i, "-A", "INPUT", "DROP");
    }

    /* renamed from: aQ */
    public static void m2455aQ(int i) {
        m2458a(i, "-D", "OUTPUT", "DROP");
        m2458a(i, "-D", "INPUT", "DROP");
    }

    /* renamed from: aR */
    private static int m2454aR(int i) {
        String[] split;
        int i2 = 0;
        if (i > 0) {
            String format = String.format("u0_a" + (i % 1000), new Object[0]);
            VTCmdResult m12846el = abc.m12845qK().m12846el("iptables --list");
            String str = m12846el.mStdOut;
            if (m12846el.success() && str != null && (split = str.split("\n")) != null && split.length > 0) {
                for (String str2 : split) {
                    if (str2.startsWith("DROP") && str2.contains(format)) {
                        i2++;
                    }
                }
            }
        }
        return i2;
    }
}
