package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.kingroot.common.utils.system.ProcessUtils;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class aet extends AbstractC3682tz {
    private abc aft;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3682tz, com.kingroot.kinguser.AbstractC3681ty
    /* renamed from: kr */
    public String mo2067kr() {
        return "OptimizeTask";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3682tz, com.kingroot.kinguser.AbstractC3675tx
    /* renamed from: b */
    public Bundle mo2068e(Bundle bundle) {
        try {
            return m12160d(bundle);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    private Bundle m12160d(Bundle bundle) {
        C3956zk.m1300y(1, "MyWakelockTag");
        try {
            String kq = m2070kq();
            if (kq != null) {
                boolean equals = kq.equals("auto_start_optimize");
                if (m12161ax(equals) && equals) {
                    bja.m6802c(getContext(), System.currentTimeMillis());
                }
            }
            C3956zk.m1301dw("MyWakelockTag");
            this.aft = null;
        } catch (Throwable th) {
            C3956zk.m1301dw("MyWakelockTag");
            this.aft = null;
        }
        return null;
    }

    /* renamed from: ax */
    private boolean m12161ax(boolean z) {
        boolean z2;
        bjg bjgVar = new bjg("autostart_enable_settings.conf");
        HashMap<String, Integer> m6735u = bjg.m6735u(bjgVar.adJ());
        if (m6735u == null || m6735u.size() == 0) {
            return false;
        }
        String m12158uE = m12158uE();
        biz bizVar = new biz();
        bizVar.adr();
        List<ProcessUtils.ProcessInfo> m13134qJ = ProcessUtils.m13134qJ();
        boolean z3 = false;
        while (true) {
            if (!bizVar.hasNext()) {
                z2 = true;
                break;
            } else if (isCancelled()) {
                z2 = true;
                break;
            } else {
                AutoStartAppItemInfo ads = bizVar.ads();
                if (ads != null) {
                    String packageName = ads.getPackageName();
                    Integer num = m6735u.get(packageName);
                    Integer num2 = num == null ? 0 : num;
                    if (m12158uE == null || !m12158uE.equals(packageName)) {
                        boolean z4 = num2.intValue() == 3 || num2.intValue() == 2;
                        if ((z && ads.adC() != num2.intValue()) || z4) {
                            m12159rQ();
                            ApplicationInfo applicationInfo = null;
                            try {
                                applicationInfo = C3952zh.m1312pq().getApplicationInfo(packageName, 1);
                            } catch (PackageManager.NameNotFoundException e) {
                            }
                            if (applicationInfo == null || !m12162a(m13134qJ, applicationInfo)) {
                                boolean z5 = num2.intValue() == 0 || num2.intValue() == 3;
                                if (!m12163a(ads, z5, this.aft)) {
                                    z2 = false;
                                    break;
                                } else if (z4) {
                                    z3 = true;
                                    m6735u.put(packageName, Integer.valueOf(z5 ? 0 : 1));
                                }
                            }
                        }
                        z3 = z3;
                    }
                }
            }
        }
        if (z3) {
            bjgVar.m6736t(m6735u);
            return z2;
        }
        return z2;
    }

    /* renamed from: a */
    private boolean m12162a(List<ProcessUtils.ProcessInfo> list, ApplicationInfo applicationInfo) {
        if (list == null || list.size() == 0) {
            return false;
        }
        for (ProcessUtils.ProcessInfo processInfo : list) {
            if (processInfo.uid == applicationInfo.uid && processInfo.name.contains(applicationInfo.packageName)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: uE */
    private String m12158uE() {
        ActivityManager activityManager = (ActivityManager) getContext().getSystemService("activity");
        if (activityManager == null) {
            return null;
        }
        List<ActivityManager.RunningTaskInfo> runningTasks = activityManager.getRunningTasks(1);
        if (runningTasks != null && runningTasks.size() > 0) {
            ActivityManager.RunningTaskInfo runningTaskInfo = runningTasks.get(0);
            if (runningTaskInfo.baseActivity != null) {
                return runningTaskInfo.baseActivity.getPackageName();
            }
        }
        return null;
    }

    /* renamed from: rQ */
    private void m12159rQ() {
        if (this.aft == null) {
            this.aft = abc.m12845qK();
            if (!this.aft.isRootPermition(true)) {
                throw new IllegalStateException("no root permission granted");
            }
        }
    }

    /* renamed from: a */
    private static boolean m12163a(AutoStartAppItemInfo autoStartAppItemInfo, boolean z, abc abcVar) {
        Iterator<AutoStartAppItemInfo.AutoStartReceiver> it = autoStartAppItemInfo.adA().iterator();
        while (it.hasNext()) {
            AutoStartAppItemInfo.AutoStartReceiver next = it.next();
            try {
                Thread.sleep(10L);
                Object[] objArr = new Object[3];
                objArr[0] = z ? "enable" : "disable";
                objArr[1] = autoStartAppItemInfo.getPackageName();
                objArr[2] = next.getName();
                if (!abcVar.m12846el(String.format("pm %s '%s/%s'", objArr)).success()) {
                    return false;
                }
            } catch (InterruptedException e) {
                return false;
            }
        }
        return true;
    }
}
