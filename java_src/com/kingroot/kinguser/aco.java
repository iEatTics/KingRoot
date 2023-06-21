package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.statics.ActionStatsID;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kinguser.C3959zm;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aco {
    private static final RunnableC3845wo aaE = new RunnableC3845wo() { // from class: com.kingroot.kinguser.aco.1
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            String str;
            boolean z;
            super.run();
            try {
                Thread.sleep(6000L);
            } catch (Exception e) {
            }
            long m1583nf = C3823wb.m1583nf();
            long currentTimeMillis = System.currentTimeMillis();
            if (acu.m12573b(m1583nf, currentTimeMillis, KApplication.m13438ig().m1239pG())) {
                File m12702rS = aco.m12702rS();
                if (m12702rS.exists()) {
                    String absolutePath = m12702rS.getAbsolutePath();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new VTCommand("ping", absolutePath + " -p"));
                    arrayList.add(new VTCommand("version", absolutePath + " -v"));
                    List<VTCmdResult> m12824b = abj.m12824b("sh", arrayList);
                    String str2 = "";
                    int i = 0;
                    boolean z2 = false;
                    while (i < m12824b.size()) {
                        VTCmdResult vTCmdResult = m12824b.get(i);
                        if (vTCmdResult.success()) {
                            if (vTCmdResult.mStdOut == null) {
                                str = str2;
                                z = z2;
                            } else if (vTCmdResult.mCmdFlag.equals("ping")) {
                                if (vTCmdResult.success() && vTCmdResult.mStdOut.trim().equals("true")) {
                                    str = str2;
                                    z = true;
                                }
                            } else if (vTCmdResult.mCmdFlag.equals("version") && vTCmdResult.success() && !TextUtils.isEmpty(vTCmdResult.mStdOut.trim())) {
                                str = vTCmdResult.mStdOut.trim();
                                z = z2;
                            }
                            i++;
                            z2 = z;
                            str2 = str;
                        }
                        str = str2;
                        z = z2;
                        i++;
                        z2 = z;
                        str2 = str;
                    }
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(Integer.valueOf(z2 ? 0 : 1));
                    arrayList2.add(str2);
                    C3799vt.m1728lT().mo1747a(ActionStatsID.EMID_KingCom_Root_Kd_State, arrayList2);
                    C3823wb.m1593R(currentTimeMillis);
                }
            }
        }
    };

    /* renamed from: e */
    public static boolean m12704e(abm abmVar) {
        boolean z = false;
        File m12702rS = m12702rS();
        File m12701rT = m12701rT();
        if (m12702rS.exists()) {
            if (abmVar != null) {
                try {
                    String str = m12702rS.getAbsolutePath() + " -d";
                    if (m12701rT.exists() && m12701rT.length() > 0) {
                        str = str + " " + m12701rT.getAbsolutePath();
                    }
                    z = abmVar.m12803em(str).success();
                } catch (Exception e) {
                }
            }
            aaE.m1530ny();
        }
        return z;
    }

    /* renamed from: rS */
    public static synchronized File m12702rS() {
        File file;
        synchronized (aco.class) {
            file = null;
            String str = bzt.m5101ge().getApplicationInfo().dataDir;
            if (str != null) {
                File file2 = new File(str, "applib");
                if (file2.exists()) {
                    file = new File(file2, "kd");
                    if (!file.exists()) {
                        try {
                            m12700rU();
                        } catch (Exception e) {
                        }
                        file = new File(file2, "kd");
                    } else if (abd.m12839qb() >= 9 && !file.canExecute()) {
                        file.setExecutable(true, false);
                    }
                }
            }
            if (file == null) {
                file = new File(abu.m12750rx() + File.separator + "kd");
            }
        }
        return file;
    }

    /* renamed from: rT */
    private static synchronized File m12701rT() {
        File file;
        synchronized (aco.class) {
            file = null;
            String str = KApplication.m13453ge().getApplicationInfo().dataDir;
            if (str != null) {
                File file2 = new File(str, "applib");
                if (file2.exists()) {
                    file = new File(file2, "krsdk.cert");
                    if (!file.exists()) {
                        try {
                            C3959zm.C3962a c3962a = new C3959zm.C3962a(C3958zl.m1295pw() + File.separator + "krsdk.cert", "krsdk.cert", 0);
                            c3962a.m1290dy("0640");
                            C3959zm.m1293a(c3962a);
                        } catch (Exception e) {
                        }
                        file = new File(file2, "krsdk.cert");
                    }
                }
            }
            if (file == null) {
                file = new File(abu.m12750rx() + File.separator + "krsdk.cert");
            }
        }
        return file;
    }

    /* renamed from: rF */
    public static abm m12703rF() {
        abm m12820ep = abj.m12820ep(m12702rS().getAbsolutePath());
        if (m12820ep != null) {
            return m12820ep;
        }
        return null;
    }

    /* renamed from: rU */
    public static void m12700rU() {
        int i;
        String str = C3958zl.m1295pw() + File.separator + "kd";
        InterfaceC3519rh m13448hV = KApplication.m13448hV();
        if (!(m13448hV instanceof AbstractC3514re)) {
            i = 1;
        } else {
            i = ((AbstractC3514re) m13448hV).m2486hL();
        }
        C3959zm.C3962a c3962a = new C3959zm.C3962a(str, "kd", i);
        c3962a.m1290dy("0755");
        C3959zm.m1293a(c3962a);
    }

    /* renamed from: a */
    public static void m12707a(long j, boolean z, int i) {
        InterfaceC3519rh m13449hU = KApplication.m13449hU();
        if (m13449hU instanceof AbstractC3518rg) {
            ((AbstractC3518rg) m13449hU).mo2481a(j, z, i, KApplication.m13450hT());
        }
    }

    /* renamed from: ao */
    public static void m12706ao(boolean z) {
        InterfaceC3519rh m13449hU = KApplication.m13449hU();
        if (m13449hU instanceof AbstractC3518rg) {
            ((AbstractC3518rg) m13449hU).mo2482J(z);
        }
    }

    /* renamed from: ap */
    public static void m12705ap(boolean z) {
        InterfaceC3519rh m13449hU = KApplication.m13449hU();
        if (m13449hU instanceof AbstractC3518rg) {
            ((AbstractC3518rg) m13449hU).mo2479b(z, KApplication.m13450hT());
        }
    }
}
