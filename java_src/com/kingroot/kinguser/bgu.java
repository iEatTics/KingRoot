package com.kingroot.kinguser;

import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class bgu {
    private static final String bpc = aas.f1260XV + "/system/xbin/otasurvival.sh";
    private static final String bpd = aas.f1260XV + "/system/bin/log";
    private static final String bpe = String.format("cat %s > %s", "/data/data/com.kingroot.kinguser/applib/otasurvival.sh", "/system/xbin/otasurvival.sh");

    public static boolean abY() {
        File file = new File("/system/xbin/otasurvival.sh");
        if (file.exists()) {
            if (C3563rs.m2347p(file) != C3563rs.m2347p(new File("/data/data/com.kingroot.kinguser/applib/otasurvival.sh"))) {
                return false;
            }
            File file2 = new File("/system/bin/log");
            String str = "";
            try {
                str = file2.getCanonicalPath();
            } catch (IOException e) {
            }
            return !str.equals(file2.getAbsolutePath());
        }
        return false;
    }
}
