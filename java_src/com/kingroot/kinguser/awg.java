package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import java.util.List;
/* loaded from: classes.dex */
public class awg {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: SK */
    public static void m8663SK() {
        int i;
        int i2;
        String str;
        int i3;
        List<String> m12883ac = aay.m12883ac(true);
        String str2 = "";
        String m12882ak = aay.m12882ak(KApplication.m13453ge());
        if (m12883ac == null || m12883ac.size() <= 1) {
            i = 1;
            i2 = -1;
            str = "";
        } else {
            String str3 = m12883ac.get(0);
            if (aay.m12879dX(str3)) {
                str = str3;
                i = 0;
                i2 = 0;
            } else {
                str2 = m12883ac.get(1);
                i = 1;
                i2 = -1;
                str = str3;
            }
        }
        if (i2 == 0 || !aay.m12879dX(m12882ak)) {
            i3 = i2;
        } else {
            i = 0;
            i3 = 1;
        }
        ady.m12308tK().m12340a(i, i3, str, m12882ak, str2, aav.m12912qe() ? 2 : 1);
    }

    /* renamed from: SL */
    public static synchronized void m8662SL() {
        synchronized (awg.class) {
            if (aks.m11143BP().m11040Do()) {
                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.awg.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        awg.m8663SK();
                        aks.m11143BP().m11039Dp();
                    }
                }));
            }
        }
    }
}
