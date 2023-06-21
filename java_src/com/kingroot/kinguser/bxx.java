package com.kingroot.kinguser;

import android.os.Build;
import java.io.File;
import java.io.FileInputStream;
/* loaded from: classes.dex */
public class bxx {

    /* renamed from: YW */
    private static Boolean f2143YW = null;

    /* renamed from: YX */
    private static final Object f2144YX = new Object();
    private static final File bTA = new File("/sys/fs/selinux");

    /* JADX WARN: Removed duplicated region for block: B:17:0x0036 A[Catch: all -> 0x0051, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0009, B:8:0x000f, B:15:0x0030, B:17:0x0036, B:18:0x003b, B:26:0x004d, B:27:0x0050, B:24:0x0047, B:19:0x003d, B:20:0x0043), top: B:36:0x0005 }] */
    /* renamed from: qP */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m5208qP() {
        Boolean bool;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        synchronized (f2144YX) {
            if (f2143YW == null) {
                if (Build.VERSION.SDK_INT < 17 || !new File("/sys/fs/selinux/enforce").exists()) {
                    bool = null;
                } else {
                    try {
                        fileInputStream = new FileInputStream("/sys/fs/selinux/enforce");
                        try {
                            Boolean valueOf = Boolean.valueOf(fileInputStream.read() == 49);
                            bxt.m5222c(fileInputStream);
                            bool = valueOf;
                        } catch (Exception e) {
                            bxt.m5222c(fileInputStream);
                            bool = null;
                            if (bool == null) {
                            }
                            f2143YW = bool;
                            return f2143YW.booleanValue();
                        } catch (Throwable th) {
                            fileInputStream2 = fileInputStream;
                            th = th;
                            bxt.m5222c(fileInputStream2);
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
                f2143YW = bool;
            }
        }
        return f2143YW.booleanValue();
    }

    public static boolean ajL() {
        try {
            return bTA.exists();
        } catch (Throwable th) {
            return false;
        }
    }
}
