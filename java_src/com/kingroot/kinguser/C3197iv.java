package com.kingroot.kinguser;

import com.kingroot.kinguser.C3199ix;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.iv */
/* loaded from: classes.dex */
public final class C3197iv {

    /* renamed from: sA */
    private static volatile C3199ix f2863sA = null;

    /* renamed from: cm */
    private static C3199ix m3461cm() {
        if (f2863sA == null) {
            synchronized (C3197iv.class) {
                if (f2863sA == null) {
                    f2863sA = C3198iw.m3458aF("sh");
                }
            }
        }
        return f2863sA;
    }

    /* renamed from: cj */
    private static void m3462cj() {
        if (f2863sA != null) {
            synchronized (C3197iv.class) {
                if (f2863sA != null) {
                    f2863sA.shutdown();
                    f2863sA = null;
                }
            }
        }
    }

    /* renamed from: b */
    private static void m3463b(Exception exc) {
        if (exc != null) {
            if ((exc instanceof IOException) || (exc instanceof InterruptedException)) {
                m3462cj();
            }
        }
    }

    /* renamed from: aD */
    public static C3199ix.C3201b m3465aD(String str) {
        return m3460d(str, true);
    }

    /* renamed from: d */
    public static C3199ix.C3201b m3460d(String str, boolean z) {
        return m3464b(new C3199ix.C3202c(str, str, z ? 120000L : 0L));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C3199ix.C3201b m3464b(C3199ix.C3202c c3202c) {
        C3199ix.C3201b c3201b;
        C3199ix.C3201b c3201b2 = null;
        try {
            C3196iu m3471cg = C3196iu.m3471cg();
            if (m3471cg.mo3129cf()) {
                c3201b = m3471cg.m3477a(c3202c);
                try {
                    m3462cj();
                } catch (Exception e) {
                    c3201b2 = c3201b;
                    e = e;
                    m3463b(e);
                    c3201b = c3201b2;
                    if (c3201b != null) {
                    }
                }
            } else {
                c3201b = m3461cm().m3453b(c3202c);
            }
        } catch (Exception e2) {
            e = e2;
        }
        if (c3201b != null) {
            return new C3199ix.C3201b(c3202c.mCmdFlag, 2, "", "Run Root Cmd Exception");
        }
        return c3201b;
    }
}
