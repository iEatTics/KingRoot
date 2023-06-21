package com.kingroot.kinguser;

import com.kingroot.kinguser.C3199ix;
/* renamed from: com.kingroot.kinguser.iw */
/* loaded from: classes.dex */
public final class C3198iw {
    /* renamed from: aE */
    public static C3199ix m3459aE(String str) {
        C3199ix c3199ix;
        try {
            c3199ix = new C3199ix(str);
            try {
                C3199ix.C3201b m3455a = c3199ix.m3455a("id", 30000L);
                if (!(m3455a.m3447co() && m3455a.mStdOut != null && m3455a.mStdOut.contains("uid=0"))) {
                    c3199ix.shutdown();
                    c3199ix = null;
                }
                if (c3199ix != null && C3304mf.m3091ev() >= 14 && C3304mf.m3091ev() < 21) {
                    c3199ix.m3455a("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
                    return c3199ix;
                }
                return c3199ix;
            } catch (Exception e) {
                if (c3199ix != null) {
                    c3199ix.shutdown();
                    return null;
                }
                return c3199ix;
            }
        } catch (Exception e2) {
            c3199ix = null;
        }
    }

    /* renamed from: aF */
    public static C3199ix m3458aF(String str) {
        C3199ix c3199ix;
        try {
            c3199ix = new C3199ix(str);
            if (c3199ix != null) {
                try {
                    if (C3304mf.m3091ev() >= 14) {
                        c3199ix.m3455a("export LD_LIBRARY_PATH=/vendor/lib:/system/lib", 30000L);
                        return c3199ix;
                    }
                    return c3199ix;
                } catch (Exception e) {
                    if (c3199ix != null) {
                        c3199ix.shutdown();
                        return null;
                    }
                    return c3199ix;
                }
            }
            return c3199ix;
        } catch (Exception e2) {
            c3199ix = null;
        }
    }

    /* renamed from: c */
    public static boolean m3457c(C3199ix c3199ix) {
        if (c3199ix == null) {
            return false;
        }
        try {
            C3199ix.C3201b m3455a = c3199ix.m3455a("id", 30000L);
            if (!m3455a.m3447co() || m3455a.mStdOut == null) {
                return false;
            }
            return m3455a.mStdOut.contains("uid=0");
        } catch (Exception e) {
            return false;
        }
    }
}
