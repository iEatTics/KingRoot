package com.kingroot.kinguser;

import android.app.ActivityManager;
import android.content.Context;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3789vm;
import com.kingroot.kinguser.activitys.RiskPopActivity;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class bct {
    private static final bed biG = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bct.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (!bct.m7583Yi() && !bgq.abS().m7093iK(2)) {
                Set m7585Yg = bct.m7585Yg();
                if (!C3942yy.m1351d(m7585Yg)) {
                    bct.m7581a(KApplication.m13453ge(), m7585Yg);
                }
            }
        }
    });

    /* renamed from: Yf */
    public static void m7586Yf() {
        beg.m7461Zj().m7450c(biG);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static void m7581a(Context context, Set<String> set) {
        Set<String> m7584Yh = m7584Yh();
        if (!bfw.aaS().abb()) {
            boolean m7579e = m7579e(set, m7584Yh);
            int size = m7584Yh.size();
            m7584Yh.addAll(set);
            if (size < m7584Yh.size()) {
                m7578m(m7584Yh);
            }
            if (m7579e) {
                RiskPopActivity.m12612g(context, set.size());
            } else if (Math.abs(aks.m11143BP().m11007EV() - System.currentTimeMillis()) >= 86400000) {
                RiskPopActivity.m12612g(context, set.size());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Yg */
    public static Set<String> m7585Yg() {
        Set<String> keySet = bcr.m7604XT().m7610dF(true).keySet();
        Set<String> keySet2 = bcs.m7594Yc().m7610dF(true).keySet();
        HashSet hashSet = new HashSet();
        hashSet.addAll(keySet);
        hashSet.addAll(keySet2);
        if (biq.ada().adb() && !aks.m11143BP().m10965FL() && biq.ada().adc() > 0) {
            hashSet.add(bda.class.getName());
        }
        return hashSet;
    }

    /* renamed from: e */
    private static boolean m7579e(Set<String> set, Set<String> set2) {
        ArrayList arrayList = new ArrayList(set);
        arrayList.removeAll(new ArrayList(set2));
        return !arrayList.isEmpty();
    }

    /* renamed from: Yh */
    private static Set<String> m7584Yh() {
        String[] split = C3566rv.m2313i(KUApplication.m13453ge(), "risk_history").getString("s1", "").split(";");
        HashSet hashSet = new HashSet();
        for (String str : split) {
            hashSet.add(str);
        }
        return hashSet;
    }

    /* renamed from: m */
    public static void m7578m(Set<String> set) {
        AbstractC3789vm.SharedPreferences$EditorC3790a sharedPreferences$EditorC3790a = new AbstractC3789vm.SharedPreferences$EditorC3790a(C3566rv.m2313i(KUApplication.m13453ge(), "risk_history").edit());
        StringBuilder sb = new StringBuilder();
        for (String str : set) {
            sb.append(str);
            sb.append(";");
        }
        String sb2 = sb.toString();
        sharedPreferences$EditorC3790a.putString("s1", sb2.substring(0, sb2.length() - 1)).apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Yi */
    public static boolean m7583Yi() {
        Context m13453ge = KApplication.m13453ge();
        List<ActivityManager.RunningTaskInfo> runningTasks = ((ActivityManager) m13453ge.getSystemService("activity")).getRunningTasks(1);
        if (!C3942yy.m1352c(runningTasks) && TextUtils.equals(runningTasks.get(0).topActivity.getPackageName(), m13453ge.getPackageName())) {
            return true;
        }
        return false;
    }
}
