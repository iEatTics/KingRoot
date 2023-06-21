package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Intent;
import android.graphics.Bitmap;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.gamebox.foreground.GameBoxGuideActivityDialog;
import com.kingroot.kinguser.gamebox.foreground.GameBoxShortcutActivity;
import com.kingroot.kinguses.R;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
/* loaded from: classes.dex */
public class ass {
    /* renamed from: bb */
    public static boolean m9376bb(List<Long> list) {
        if (list == null || list.size() < 1) {
            return false;
        }
        long longValue = list.get(list.size() - 1).longValue();
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(longValue));
        return calendar.get(1) == calendar.get(1) && calendar.get(6) == calendar.get(6);
    }

    /* renamed from: iI */
    public static void m9373iI(String str) {
        asz.m9328OL().m9327OM().mo9294iZ(str);
    }

    /* renamed from: iJ */
    public static void m9372iJ(String str) {
        asz.m9328OL().m9327OM().mo9292jb(str);
    }

    /* renamed from: iK */
    public static boolean m9371iK(String str) {
        return asz.m9328OL().m9327OM().mo9293ja(str) && !C3952zh.m1312pq().m1314du("com.tencent.qqpimsecure");
    }

    /* renamed from: bc */
    public static void m9375bc(List<String> list) {
        GameBoxGuideActivityDialog.m3763bg(list);
        aks.m11143BP().m10843bg(System.currentTimeMillis());
        aks.m11143BP().m11064DQ();
    }

    /* renamed from: l */
    public static synchronized void m9368l(Intent intent) {
        synchronized (ass.class) {
            System.currentTimeMillis();
            if (intent != null) {
                ActivityManager.RunningTaskInfo runningTaskInfo = (ActivityManager.RunningTaskInfo) intent.getParcelableExtra("app_info");
                ActivityManager.RunningTaskInfo runningTaskInfo2 = (ActivityManager.RunningTaskInfo) intent.getParcelableExtra("last_app");
                if (runningTaskInfo != null && runningTaskInfo2 != null) {
                    String packageName = runningTaskInfo.topActivity.getPackageName();
                    String packageName2 = runningTaskInfo2.topActivity.getPackageName();
                    if (!KApplication.m13453ge().getPackageName().equals(packageName)) {
                        aks.m11143BP().m10736ha(packageName);
                    }
                    if (abc.m12845qK().isRootPermition(true) && !aks.m11143BP().m11061DT() && asw.m9349OH().size() > 0) {
                        List<String> m9349OH = asw.m9349OH();
                        if (m9349OH != null && m9349OH.contains(packageName)) {
                            m9369iM(packageName);
                        }
                        if (m9349OH != null && m9349OH.contains(packageName2)) {
                            m9374d(packageName2, m9349OH);
                            m9370iL(packageName2);
                        }
                    }
                }
            }
        }
    }

    /* renamed from: iL */
    private static void m9370iL(String str) {
        int m11063DR = aks.m11143BP().m11063DR();
        if (!isToday(aks.m11143BP().m11066DO()) && m11063DR < 1 && m9371iK(str)) {
            m9377Oq();
            ady.m12308tK().mo1746bi(100270);
            m9372iJ(str);
            asz.m9328OL().m9327OM().mo9296iX(str);
        }
    }

    /* renamed from: Oq */
    public static void m9377Oq() {
        Intent intent = new Intent(KApplication.m13453ge(), GameBoxShortcutActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("extra_start_from", 1);
        Bitmap m9366bd = ast.m9366bd(null);
        String string = C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_notifi_title);
        String string2 = C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_notifi_tip);
        adm.m12480st().m12523a(17, (CharSequence) string2, (CharSequence) string, (CharSequence) string2, (CharSequence) C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_notifi_btn), m9366bd, intent, false);
        aks.m11143BP().m11062DS();
    }

    /* renamed from: iM */
    private static void m9369iM(String str) {
        ate m9327OM = asz.m9328OL().m9327OM();
        m9327OM.mo9297iW(str);
        if (m9376bb(m9327OM.mo9295iY(str))) {
            m9373iI(str);
        }
    }

    /* renamed from: d */
    private static void m9374d(String str, List<String> list) {
        boolean m12539b = adk.m12539b(aks.m11143BP().m11066DO(), System.currentTimeMillis(), 259200000L);
        int m11065DP = aks.m11143BP().m11065DP();
        if (m12539b && m11065DP < 2 && m9371iK(str)) {
            if (m11065DP == 0) {
                ady.m12308tK().mo1746bi(100272);
            } else if (m11065DP == 1) {
                ady.m12308tK().mo1746bi(100274);
            }
            m9375bc(list);
            m9372iJ(str);
            asz.m9328OL().m9327OM().mo9296iX(str);
        }
    }

    private static boolean isToday(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(j));
        int i = calendar.get(1);
        int i2 = calendar.get(6);
        calendar.setTime(new Date());
        return i == calendar.get(1) && i2 == calendar.get(6);
    }
}
