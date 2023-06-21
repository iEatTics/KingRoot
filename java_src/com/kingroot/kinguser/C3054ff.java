package com.kingroot.kinguser;

import android.os.Build;
import com.tencent.tps.client.IRootShell;
import java.io.FileOutputStream;
/* renamed from: com.kingroot.kinguser.ff */
/* loaded from: classes.dex */
public class C3054ff {

    /* renamed from: U */
    static String f2655U = "";

    /* renamed from: a */
    public static boolean m3859a(IRootShell iRootShell, String str, String str2) {
        iRootShell.runCmd(C3052fd.m3866X("bWtkaXIgLXAg") + str);
        iRootShell.runCmd(C3052fd.m3866X("Y2htb2QgNzExIA==") + "/data/data-lib");
        iRootShell.runCmd(C3052fd.m3866X("Y2htb2QgNzc3IA==") + "/data/data-lib/tps");
        iRootShell.runCmd(C3052fd.m3866X("Y2htb2QgNzc3IA==") + str);
        iRootShell.runCmd(C3052fd.m3866X("Y2htb2QgNzc3IA==") + str2);
        if (Build.VERSION.SDK_INT >= 23) {
            iRootShell.runCmd(C3052fd.m3866X("Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwOmM1MTIsYzc2OCA=") + str);
            iRootShell.runCmd(C3052fd.m3866X("Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwOmM1MTIsYzc2OCA=") + str2);
        } else {
            iRootShell.runCmd(C3052fd.m3866X("Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwIA==") + str);
            iRootShell.runCmd(C3052fd.m3866X("Y2hjb24gdTpvYmplY3RfcjphcHBfZGF0YV9maWxlOnMwIA==") + str2);
        }
        boolean m3858aa = m3858aa(str2);
        iRootShell.runCmd(C3052fd.m3866X("Y2htb2QgNzAwIA==") + str2);
        iRootShell.runCmd(C3052fd.m3866X("Y2hvd24gcm9vdDpyb290IA==") + str2);
        iRootShell.runCmd(C3052fd.m3866X("Y2hjb24gdTpvYmplY3RfcjpzeXN0ZW1fZGF0YV9maWxlOnMwIA==") + str2);
        iRootShell.runCmd(C3052fd.m3866X("Y2htb2QgNzAwIA==") + str);
        iRootShell.runCmd(C3052fd.m3866X("Y2hjb24gdTpvYmplY3RfcjpzeXN0ZW1fZGF0YV9maWxlOnMwIA==") + str);
        return m3858aa;
    }

    /* renamed from: G */
    public static String m3860G() {
        return f2655U;
    }

    /* renamed from: aa */
    private static boolean m3858aa(String str) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        try {
            if (!m3857ab(str)) {
                return true;
            }
            try {
                fileOutputStream = new FileOutputStream(str);
                for (int i = 0; i < 58; i++) {
                    try {
                        fileOutputStream.write(C3052fd.m3865c("_a._a" + i, "a"));
                    } catch (Exception e) {
                        fileOutputStream2 = fileOutputStream;
                        C3066fr.m3834a(fileOutputStream2);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        C3066fr.m3834a(fileOutputStream);
                        throw th;
                    }
                }
                fileOutputStream.write(C3052fd.m3865c("_a._s", "s"));
                C3066fr.m3834a(fileOutputStream);
                return true;
            } catch (Exception e2) {
                fileOutputStream2 = null;
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = null;
            }
        } catch (Exception e3) {
            return false;
        }
    }

    /* renamed from: ab */
    private static boolean m3857ab(String str) {
        C3072fx m3806a = C3072fx.m3806a(C3052fd.m3865c("_a._s", "s"), true);
        if (m3806a != null) {
            f2655U = m3806a.get("BN");
        }
        C3072fx m3805ad = C3072fx.m3805ad(str);
        if (m3805ad == null) {
            return true;
        }
        try {
            return (C3073fy.m3798a(str, m3805ad) && C3073fy.m3800a(m3806a, m3805ad)) ? false : true;
        } catch (Exception e) {
            return true;
        }
    }
}
