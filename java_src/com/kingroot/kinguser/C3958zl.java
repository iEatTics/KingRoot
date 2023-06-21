package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import java.io.File;
/* renamed from: com.kingroot.kinguser.zl */
/* loaded from: classes.dex */
public final class C3958zl {
    /* renamed from: pu */
    public static void m1297pu() {
        m1296pv();
        getFilesDir();
        getCacheDir();
        m1295pw();
    }

    /* renamed from: G */
    public static File m1299G(String str, String str2) {
        File file = new File(m1296pv(), str);
        if (!file.exists()) {
            Context m5101ge = bzt.m5101ge();
            File dir = m5101ge.getDir(str + "temp", 0);
            if (dir.exists() && !dir.renameTo(file)) {
                dir.delete();
            }
            file = new File(m1296pv(), str);
            if (!file.exists()) {
                file.mkdirs();
                file = new File(m1296pv(), str);
                if (!file.exists()) {
                    m5101ge.getFilesDir();
                    file.mkdirs();
                    file = new File(m1296pv(), str);
                }
            }
            abi.m12831em("chmod " + str2 + " " + file.getAbsolutePath());
        }
        return file;
    }

    /* renamed from: dx */
    public static File m1298dx(String str) {
        return m1299G(str, "0771");
    }

    /* renamed from: pv */
    public static File m1296pv() {
        ApplicationInfo applicationInfo = bzt.m5101ge().getApplicationInfo();
        String str = applicationInfo.dataDir;
        File file = new File(str);
        if (!file.canRead() || !file.canWrite()) {
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition()) {
                m12845qK.m12846el("mkdir " + str);
                m12845qK.m12846el("chmod 0751 " + str);
                m12845qK.m12846el("chown " + applicationInfo.uid + "." + applicationInfo.uid + " " + str);
            }
            return new File(str);
        }
        return file;
    }

    public static File getFilesDir() {
        return bzt.m5101ge().getFilesDir();
    }

    public static File getCacheDir() {
        return bzt.m5101ge().getCacheDir();
    }

    /* renamed from: pw */
    public static File m1295pw() {
        return m1298dx("applib");
    }
}
