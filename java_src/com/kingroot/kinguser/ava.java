package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class ava {
    private static final bed aeI = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ava.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ava.m8872Rh();
        }
    });

    /* renamed from: Rg */
    public static void m8873Rg() {
        long currentTimeMillis = System.currentTimeMillis();
        long m11135BX = aks.m11143BP().m11135BX();
        long m11495yN = aiz.m11495yN();
        if (C3748vb.m1918R(KUApplication.m13453ge())) {
            m11495yN = aiz.m11494yO();
        }
        if (adk.m12539b(m11135BX, currentTimeMillis, m11495yN)) {
            beg.m7461Zj().m7450c(aeI);
        }
    }

    /* renamed from: Rh */
    public static void m8872Rh() {
        Context ge = KUApplication.m13453ge();
        try {
            List<PackageInfo> installedPackages = C3952zh.m1312pq().getInstalledPackages(64);
            if (installedPackages != null && installedPackages.size() >= 1) {
                ArrayList arrayList = new ArrayList();
                for (PackageInfo packageInfo : installedPackages) {
                    try {
                        boolean z = (packageInfo.applicationInfo.flags & 1) != 0;
                        String m12872dZ = aaz.m12872dZ(packageInfo.packageName);
                        C2859df c2859df = new C2859df();
                        c2859df.m4220H(aab.m13016dH(m12872dZ));
                        c2859df.m4218J(aab.m13016dH(packageInfo.versionName));
                        c2859df.m4219I(aab.m13016dH(packageInfo.packageName));
                        c2859df.setName(aab.m13016dH(packageInfo.applicationInfo.loadLabel(C3952zh.m1312pq()).toString()));
                        c2859df.m4213f(packageInfo.versionCode);
                        c2859df.m4216L(aab.m13016dH(m12872dZ));
                        c2859df.m4212p(z ? 1 : 0);
                        c2859df.m4205w((int) m8871g(packageInfo));
                        arrayList.add(new C2860dg(c2859df));
                    } catch (Exception e) {
                    }
                }
                if (C3749vc.m1912a(ge, new C2849cw(arrayList)) == 0) {
                    aks.m11143BP().m10913aI(System.currentTimeMillis());
                }
            }
        } catch (Exception e2) {
        }
    }

    /* renamed from: g */
    private static long m8871g(PackageInfo packageInfo) {
        try {
            return new File(packageInfo.applicationInfo.sourceDir).length();
        } catch (Throwable th) {
            return 0L;
        }
    }
}
