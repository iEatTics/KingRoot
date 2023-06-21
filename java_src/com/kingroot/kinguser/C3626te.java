package com.kingroot.kinguser;

import com.kingroot.common.firewall.Rule;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.List;
/* renamed from: com.kingroot.kinguser.te */
/* loaded from: classes.dex */
final class C3626te {
    /* renamed from: cQ */
    public static boolean m2191cQ(String str) {
        abc m12845qK = abc.m12845qK();
        m12845qK.m12846el("chmod 755 " + str);
        VTCmdResult m12846el = m12845qK.m12846el(str + " is-chain-inited");
        if (m12846el.success()) {
            return m12846el.mStdOut.contains("true");
        }
        return false;
    }

    /* renamed from: cR */
    public static boolean m2190cR(String str) {
        return m2191cQ(str) || abc.m12845qK().m12846el(new StringBuilder().append(str).append(" init-chain").toString()).success();
    }

    /* renamed from: o */
    public static boolean m2189o(String str, boolean z) {
        return abc.m12845qK().m12846el(new StringBuilder().append(str).append(" set-enable ").append(z).toString()).success();
    }

    /* renamed from: a */
    public static boolean m2192a(String str, List<Rule> list) {
        StringBuilder sb = new StringBuilder(str + " set-uids ");
        for (Rule rule : list) {
            switch (rule.type) {
                case 1:
                    if (rule.f778GZ != null) {
                        sb.append(" " + rule.uid + " mobile " + rule.f778GZ);
                    }
                    if (rule.f779Ha != null) {
                        sb.append(" " + rule.uid + " wifi " + rule.f779Ha);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (rule.f780Hb != null) {
                    }
                    break;
            }
        }
        return abc.m12845qK().m12846el(sb.toString()).success();
    }
}
