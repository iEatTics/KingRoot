package com.kingroot.kinguser;

import android.content.ComponentName;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.advance.install.p014ui.QuickPackageInstallerActivity;
import com.kingroot.kinguser.ahg;
/* loaded from: classes.dex */
public class ags {
    private static bed amY = new bed(new bek() { // from class: com.kingroot.kinguser.ags.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            C3952zh.m1312pq().setComponentEnabledSetting(new ComponentName(KApplication.m13453ge(), QuickPackageInstallerActivity.class), 1, 1);
            if (!ags.m11910vZ()) {
                C3952zh.m1312pq().setComponentEnabledSetting(new ComponentName(KApplication.m13453ge(), QuickPackageInstallerActivity.class), 2, 1);
            }
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    /* renamed from: vZ */
    public static boolean m11910vZ() {
        String name = QuickPackageInstallerActivity.class.getName();
        String packageName = KApplication.m13453ge().getPackageName();
        String m11489o = aja.m11489o(ala.m10664eW(10), packageName, cgx.m4297nl(name));
        if (TextUtils.isEmpty(m11489o) || !abc.m12845qK().m12846el(m11489o).success()) {
            return false;
        }
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException e) {
        }
        ahg.C0938a m11772dm = ahg.m11772dm(10);
        return TextUtils.equals(packageName, m11772dm.apm) && m11772dm.apn;
    }

    /* renamed from: aF */
    public static void m11911aF(boolean z) {
        if (z) {
            beg.m7461Zj().m7450c(amY);
            return;
        }
        try {
            KApplication.m13453ge().getPackageManager().setComponentEnabledSetting(new ComponentName(KApplication.m13453ge(), QuickPackageInstallerActivity.class), 2, 1);
        } catch (Exception e) {
        }
    }
}
