package com.kingroot.kinguser;

import com.kingroot.common.utils.system.VTCmdResult;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes.dex */
public class abf {

    /* renamed from: YW */
    private static Boolean f1321YW = null;

    /* renamed from: YX */
    private static final Object f1322YX = new Object();

    /* renamed from: YY */
    private static String[] f1323YY = {null, null};

    /* renamed from: u */
    public static String m12837u(String str, boolean z) {
        String str2;
        if (z) {
            str2 = str + " -V";
        } else {
            str2 = str + " -v";
        }
        VTCmdResult m12827Q = abj.m12827Q("sh", str2);
        if (m12827Q == null || !m12827Q.success()) {
            return null;
        }
        String[] split = m12827Q.mStdOut.split("\n");
        String str3 = null;
        for (String str4 : split) {
            if (!z) {
                if (str4.contains(".")) {
                    return str4;
                }
            } else {
                try {
                    if (Integer.parseInt(str4) > 0) {
                        return str4;
                    }
                    str3 = "0";
                } catch (NumberFormatException e) {
                    str3 = "0";
                }
            }
        }
        return str3;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0038 A[Catch: all -> 0x0053, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0009, B:8:0x0011, B:15:0x0032, B:17:0x0038, B:18:0x003d, B:26:0x004f, B:27:0x0052, B:24:0x0049, B:19:0x003f, B:20:0x0045), top: B:36:0x0005 }] */
    /* renamed from: qP */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m12838qP() {
        Boolean bool;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        synchronized (f1322YX) {
            if (f1321YW == null) {
                if (abd.m12839qb() < 17 || !new File("/sys/fs/selinux/enforce").exists()) {
                    bool = null;
                } else {
                    try {
                        fileInputStream = new FileInputStream("/sys/fs/selinux/enforce");
                        try {
                            Boolean valueOf = Boolean.valueOf(fileInputStream.read() == 49);
                            C3945za.m1340c(fileInputStream);
                            bool = valueOf;
                        } catch (Exception e) {
                            C3945za.m1340c(fileInputStream);
                            bool = null;
                            if (bool == null) {
                            }
                            f1321YW = bool;
                            return f1321YW.booleanValue();
                        } catch (Throwable th) {
                            fileInputStream2 = fileInputStream;
                            th = th;
                            C3945za.m1340c(fileInputStream2);
                            throw th;
                        }
                    } catch (Exception e2) {
                        fileInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                if (bool == null) {
                    bool = false;
                }
                f1321YW = bool;
            }
        }
        return f1321YW.booleanValue();
    }
}
