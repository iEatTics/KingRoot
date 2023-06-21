package com.kingroot.kinguser;

import com.kingroot.common.firewall.Rule;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.td */
/* loaded from: classes.dex */
public final class C3625td extends AbstractC3624tc {

    /* renamed from: GU */
    private static C3625td f3555GU;

    /* renamed from: GW */
    private boolean f3557GW;

    /* renamed from: GV */
    private int f3556GV = -1;

    /* renamed from: GX */
    private String f3558GX = C3563rs.m2363c(bzt.m5101ge(), "firewall-2.0.2.dat", null);

    private C3625td() {
    }

    /* renamed from: jA */
    public static C3625td m2198jA() {
        if (f3555GU == null) {
            synchronized (C3625td.class) {
                if (f3555GU == null) {
                    f3555GU = new C3625td();
                }
            }
        }
        return f3555GU;
    }

    @Override // com.kingroot.kinguser.AbstractC3624tc
    /* renamed from: jx */
    public int mo2197jx() {
        boolean isRootPermition = abc.m12845qK().isRootPermition(true);
        if (this.f3556GV != -1 && this.f3557GW == isRootPermition) {
            return this.f3556GV;
        }
        String str = abc.m12845qK().m12846el("cat /proc/net/ip_tables_names").mStdOut;
        String str2 = abc.m12845qK().m12846el("cat /proc/net/ip_tables_matches").mStdOut;
        String str3 = abc.m12845qK().m12846el("cat /proc/net/ip_tables_targets").mStdOut;
        this.f3557GW = isRootPermition;
        if (str == null || str2 == null || str3 == null) {
            this.f3556GV = 0;
            return this.f3556GV;
        }
        if (!str.contains("filter") || !str2.contains("owner")) {
            this.f3556GV = 0;
        } else if (str3.contains("MARK") && new File("/proc/net/netfilter/nfnetlink_queue").exists()) {
            this.f3556GV = 2;
        } else {
            this.f3556GV = 1;
        }
        return this.f3556GV;
    }

    @Override // com.kingroot.kinguser.AbstractC3624tc
    /* renamed from: jy */
    public boolean mo2196jy() {
        return C3626te.m2191cQ(this.f3558GX);
    }

    @Override // com.kingroot.kinguser.AbstractC3624tc
    /* renamed from: jz */
    public boolean mo2195jz() {
        return m2194v(null);
    }

    /* renamed from: v */
    public boolean m2194v(List<Rule> list) {
        boolean m2190cR = C3626te.m2190cR(this.f3558GX);
        if (m2190cR && list != null) {
            ArrayList arrayList = new ArrayList();
            for (Rule rule : list) {
                switch (rule.type) {
                    case 1:
                        if (rule.f778GZ != null || rule.f779Ha != null) {
                            arrayList.add(rule);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (rule.f780Hb != null) {
                            arrayList.add(rule);
                            break;
                        } else {
                            break;
                        }
                }
            }
            m2193w(arrayList);
        }
        return m2190cR;
    }

    @Override // com.kingroot.kinguser.AbstractC3624tc
    public void setEnable(boolean z) {
        C3626te.m2189o(this.f3558GX, z);
    }

    @Override // com.kingroot.kinguser.AbstractC3624tc
    /* renamed from: a */
    public void mo2199a(Rule rule) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(rule);
        m2193w(arrayList);
    }

    /* renamed from: w */
    public void m2193w(List<Rule> list) {
        C3626te.m2192a(this.f3558GX, list);
    }
}
