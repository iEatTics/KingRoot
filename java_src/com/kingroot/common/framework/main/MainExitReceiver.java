package com.kingroot.common.framework.main;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3517rf;
import com.kingroot.kinguser.C3636tj;
import com.kingroot.kinguser.C3637tk;
import com.kingroot.kinguser.C3671tw;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.InterfaceC3519rh;
import com.kingroot.kinguser.RunnableC3845wo;
import com.kingroot.kinguser.bzt;
import java.util.List;
/* loaded from: classes.dex */
public class MainExitReceiver extends BroadcastReceiver {

    /* renamed from: Hh */
    private static RunnableC3845wo f781Hh = new RunnableC3845wo() { // from class: com.kingroot.common.framework.main.MainExitReceiver.1
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            MainExitReceiver.m13403jG();
        }
    };

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("com.kingroot.master.action.MAIN_EXIT_CHECK".equals(intent.getAction()) && !m13401jI()) {
            f781Hh.m1530ny();
        }
    }

    /* renamed from: jF */
    public static void m13404jF() {
        Context m5101ge = bzt.m5101ge();
        Intent intent = new Intent("com.kingroot.master.action.MAIN_EXIT_CHECK");
        intent.setPackage(m5101ge.getPackageName());
        m5101ge.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jG */
    public static void m13403jG() {
        if (!m13401jI()) {
            C3637tk.dump();
            if (!C3637tk.m2166jL()) {
                InterfaceC3519rh m13449hU = KApplication.m13449hU();
                if (m13449hU != null && (m13449hU instanceof AbstractC3517rf)) {
                    ((AbstractC3517rf) m13449hU).mo2483hN();
                }
                while (!RunnableC3845wo.m1534nB()) {
                    try {
                        Thread.sleep(2000L);
                    } catch (Exception e) {
                    }
                    if (m13401jI()) {
                        return;
                    }
                }
                for (int i = 0; i < 4; i++) {
                    try {
                        Thread.sleep(1000L);
                    } catch (Exception e2) {
                    }
                    if (m13401jI()) {
                        return;
                    }
                }
                if (!m13401jI()) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.main.MainExitReceiver.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!MainExitReceiver.m13401jI() && !C3637tk.m2166jL()) {
                                try {
                                    MainExitReceiver.m13402jH();
                                } catch (Exception e3) {
                                }
                                C3671tw.m2096kb();
                                KApplication.m13453ge().sendBroadcast(new Intent("com.kingroot.common.ACTION_NOTIFY_OUT_SELF_APP_BY_MAIN"));
                                if (!MainExitReceiver.m13401jI()) {
                                    System.exit(0);
                                }
                            }
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: jH */
    public static void m13402jH() {
        Context m5101ge = bzt.m5101ge();
        Intent intent = new Intent("com.kingroot.master.action.NAIN_EXIT_NOTIFY");
        intent.setPackage(m5101ge.getPackageName());
        m5101ge.sendBroadcast(intent);
    }

    /* renamed from: jI */
    public static boolean m13401jI() {
        List<ActivityManager.RunningTaskInfo> runningTasks;
        try {
            String packageName = C3636tj.getPackageName();
            ActivityManager activityManager = (ActivityManager) bzt.m5101ge().getSystemService("activity");
            if (activityManager != null && (runningTasks = activityManager.getRunningTasks(1)) != null && runningTasks.size() > 0) {
                if (packageName.equals(runningTasks.get(0).topActivity.getPackageName())) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }
}
