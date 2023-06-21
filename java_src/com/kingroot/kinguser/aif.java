package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class aif {
    /* renamed from: m */
    public static void m11661m(ArrayList<C2704cd> arrayList) {
        m11660n(arrayList);
        m11659o(arrayList);
    }

    /* renamed from: n */
    private static void m11660n(ArrayList<C2704cd> arrayList) {
        if (!C3942yy.m1352c(arrayList)) {
            Iterator<C2704cd> it = arrayList.iterator();
            while (it.hasNext()) {
                C2704cd next = it.next();
                ArrayList arrayList2 = new ArrayList();
                C2850cx c2850cx = next.f2260ly;
                C2705ce c2705ce = next.f2261lz;
                if (c2850cx != null && c2705ce != null) {
                    arrayList2.add(Long.valueOf(next.time));
                    arrayList2.add(Integer.valueOf(c2705ce.f2295lC));
                    arrayList2.add(Integer.valueOf(c2850cx.f2400lP));
                    arrayList2.add(Integer.valueOf(c2850cx.f2401mE));
                    arrayList2.add(Integer.valueOf(c2850cx.f2402mF));
                    arrayList2.add(Integer.valueOf(c2850cx.f2403mH));
                    arrayList2.add(c2850cx.f2404mI);
                    arrayList2.add(c2850cx.f2405mJ);
                    arrayList2.add(c2850cx.f2406mK);
                    ady.m12308tK().m12343W(arrayList2);
                }
            }
        }
    }

    /* renamed from: o */
    public static void m11659o(ArrayList<C2704cd> arrayList) {
        if (KApplication.m13437ih()) {
            aks.m11143BP().m11088Cs();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < arrayList.size()) {
                    C2704cd c2704cd = arrayList.get(i2);
                    long j = c2704cd.time;
                    C2850cx c2850cx = c2704cd.f2260ly;
                    C2705ce c2705ce = c2704cd.f2261lz;
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: dx */
    public static C2704cd m11664dx(int i) {
        C2704cd c2704cd = new C2704cd();
        c2704cd.time = System.currentTimeMillis();
        c2704cd.f2260ly = m11663dy(i);
        c2704cd.f2261lz = m11658xz();
        return c2704cd;
    }

    /* renamed from: xz */
    private static C2705ce m11658xz() {
        C2705ce c2705ce = new C2705ce();
        int m11094Cm = aks.m11143BP().m11094Cm();
        if (aaw.m12891dU("/system") == 1) {
            m11094Cm |= 4;
        }
        c2705ce.f2295lC = m11094Cm;
        return c2705ce;
    }

    /* renamed from: dy */
    private static C2850cx m11663dy(int i) {
        int i2 = 0;
        C2850cx c2850cx = new C2850cx();
        c2850cx.f2400lP = i;
        c2850cx.f2401mE = C3823wb.m1584ne() ? 1 : 0;
        c2850cx.f2402mF = 0;
        c2850cx.f2403mH = 0;
        c2850cx.f2404mI = "";
        c2850cx.f2405mJ = "";
        c2850cx.f2406mK = "";
        ArrayList arrayList = new ArrayList();
        if (abd.m12839qb() >= 14) {
            arrayList.add(new VTCommand("sud", "ku.sud --ping", 3000L));
        }
        File file = new File(bha.bpu);
        if (file.exists()) {
            arrayList.add(new VTCommand("bin", String.format("ls -l %s", bha.bpu), 3000L));
        }
        File file2 = new File(bha.bpv);
        if (file2.exists()) {
            arrayList.add(new VTCommand("xbin", String.format("ls -l %s", bha.bpv), 3000L));
        }
        if (file.exists() || file2.exists()) {
            arrayList.add(new VTCommand("v", "su -v", 3000L));
            arrayList.add(new VTCommand("V", "su -V", 3000L));
        }
        List<VTCmdResult> m12824b = abj.m12824b("sh", arrayList);
        boolean z = false;
        while (i2 < m12824b.size()) {
            VTCmdResult vTCmdResult = m12824b.get(i2);
            if (vTCmdResult.success() && vTCmdResult.mStdOut != null) {
                if (vTCmdResult.mCmdFlag.equals("bin")) {
                    if (!z) {
                        z = m11666a(vTCmdResult.mStdOut, file, c2850cx);
                    }
                } else if (vTCmdResult.mCmdFlag.equals("xbin")) {
                    if (!z) {
                        z = m11666a(vTCmdResult.mStdOut, file2, c2850cx);
                    }
                } else if (vTCmdResult.mCmdFlag.equals("v")) {
                    c2850cx.f2404mI = vTCmdResult.mStdOut.replace("\n", "").trim();
                } else if (vTCmdResult.mCmdFlag.equals("V")) {
                    c2850cx.f2405mJ = vTCmdResult.mStdOut.replace("\n", "").trim();
                } else if (vTCmdResult.mCmdFlag.equals("sud") && vTCmdResult.success() && vTCmdResult.mStdOut.trim().equals("kinguser_su")) {
                    c2850cx.f2403mH = 1;
                }
            }
            i2++;
            z = z;
        }
        return c2850cx;
    }

    /* renamed from: a */
    private static boolean m11666a(String str, File file, C2850cx c2850cx) {
        boolean z;
        int i = 8;
        if (m11662fV(str)) {
            z = file.exists();
        } else {
            try {
                z = file.getCanonicalFile().exists();
            } catch (Throwable th) {
                z = false;
            }
        }
        if (z) {
            String str2 = "";
            String m11467zl = ajj.m11467zl();
            if (!TextUtils.isEmpty(m11467zl)) {
                File file2 = new File(m11467zl);
                if (file2.exists()) {
                    str2 = C3563rs.getFileMD5(file2);
                }
            }
            String fileMD5 = C3563rs.getFileMD5(file);
            boolean isRootPermition = abc.m12845qK().isRootPermition();
            if (!isRootPermition) {
                isRootPermition = abc.m12845qK().isRootPermition(true);
            }
            if (isRootPermition) {
                if (fileMD5.length() > 0 && fileMD5.equals(str2)) {
                    m11665c(abc.m12845qK());
                } else {
                    i = 4;
                }
            } else if (fileMD5.length() <= 0 || !fileMD5.equals(str2)) {
                i = 1;
            } else {
                int i2 = 2;
                if (abc.m12845qK().isRootPermition(true)) {
                    m11665c(abc.m12845qK());
                    i2 = 8;
                }
                i = i2;
            }
            c2850cx.f2406mK = fileMD5;
            c2850cx.f2402mF = i;
            return true;
        }
        return false;
    }

    /* renamed from: c */
    private static void m11665c(abc abcVar) {
        aks m11143BP = aks.m11143BP();
        if (m11143BP.m11093Cn() && m11143BP.m11090Cq() < 3) {
            m11143BP.m10758ei(m11143BP.m11090Cq() + 1);
            if (aio.m11606d(abcVar)) {
                m11143BP.m11092Co();
            }
        }
    }

    /* renamed from: fV */
    private static boolean m11662fV(String str) {
        return str != null && str.length() > 10 && str.charAt(0) == '-';
    }
}
