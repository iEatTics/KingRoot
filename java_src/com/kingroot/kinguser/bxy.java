package com.kingroot.kinguser;

import android.os.Build;
import com.kingroot.kinguser.bxz;
import java.io.IOException;
/* loaded from: classes.dex */
public final class bxy {
    private static volatile bxz bTB = null;

    private static bxz ajM() {
        if (bTB == null) {
            synchronized (bxy.class) {
                if (bTB == null) {
                    bTB = m5204ny("sh");
                }
            }
        }
        return bTB;
    }

    /* renamed from: ny */
    public static bxz m5204ny(String str) {
        bxz bxzVar;
        try {
            bxzVar = new bxz(str);
            try {
                int i = Build.VERSION.SDK_INT;
                if (i >= 14 && i < 20) {
                    bxzVar.m5197nz("export LD_LIBRARY_PATH=/vendor/lib:/system/lib");
                    return bxzVar;
                }
                return bxzVar;
            } catch (Exception e) {
                if (bxzVar != null) {
                    bxzVar.shutdown();
                    return null;
                }
                return bxzVar;
            }
        } catch (Exception e2) {
            bxzVar = null;
        }
    }

    public static void closeShell() {
        if (bTB != null) {
            synchronized (bxy.class) {
                if (bTB != null) {
                    bTB.shutdown();
                    bTB = null;
                }
            }
        }
    }

    /* renamed from: c */
    private static void m5205c(Exception exc) {
        if (exc != null) {
            if ((exc instanceof IOException) || (exc instanceof InterruptedException)) {
                closeShell();
            }
        }
    }

    /* renamed from: nz */
    public static bxz.C2666b m5203nz(String str) {
        return m5207L(str, true);
    }

    /* renamed from: L */
    public static bxz.C2666b m5207L(String str, boolean z) {
        return m5206a(new bxz.C2667c(str, str, z ? 5000L : 0L));
    }

    /* renamed from: a */
    public static bxz.C2666b m5206a(bxz.C2667c c2667c) {
        bxz.C2666b c2666b;
        try {
            c2666b = ajM().m5201a(c2667c);
        } catch (Exception e) {
            m5205c(e);
            c2666b = null;
        }
        if (c2666b == null) {
            return new bxz.C2666b(c2667c.mCmdFlag, 2, "", "e");
        }
        return c2666b;
    }
}
