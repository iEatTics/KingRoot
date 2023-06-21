package com.kingroot.kinguser;

import android.os.Environment;
import android.p003os.Environmenu;
import android.text.TextUtils;
import java.io.File;
/* loaded from: classes.dex */
public class btr {
    private static btr bNF = null;

    /* renamed from: aY */
    public static String m5526aY(String str, String str2) {
        String str3 = "";
        if (!TextUtils.isEmpty(str2) && new File(str2).exists()) {
            but.m5461i("ProtocolHelper", "packageName: " + str);
            but.m5461i("ProtocolHelper", "localPath: " + str2);
            long currentTimeMillis = System.currentTimeMillis();
            String str4 = String.valueOf(m5527K("/QQSecureDownload/mfcache", true)) + str + ".cache";
            if (!TextUtils.isEmpty(str4)) {
                new btu(str2, str4).run();
                str3 = buu.m5455nk(str4);
                but.m5461i("ProtocolHelper", "old_md5: cost=" + (System.currentTimeMillis() - currentTimeMillis) + "; md5=" + str3);
                if (str3 != null) {
                }
            }
        }
        return str3;
    }

    /* renamed from: K */
    private static String m5527K(String str, boolean z) {
        if (z && Environmenu.MEDIA_MOUNTED.equals(Environment.getExternalStorageState()) && Environment.getExternalStorageDirectory().canWrite()) {
            File file = new File(String.valueOf(Environment.getExternalStorageDirectory().getPath()) + str);
            if (!file.exists()) {
                file.mkdirs();
            } else if (!file.isDirectory()) {
                file.delete();
                file.mkdirs();
            }
            String absolutePath = file.getAbsolutePath();
            if (!absolutePath.endsWith("/")) {
                return String.valueOf(absolutePath) + "/";
            }
            return absolutePath;
        }
        return "";
    }
}
