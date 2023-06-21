package com.kingroot.kinguser;

import com.kingroot.master.app.KUApplication;
import java.io.File;
/* loaded from: classes.dex */
public class bgm {
    /* renamed from: t */
    public static String m7102t(String str, String str2, String str3) {
        File dir = KUApplication.m13453ge().getDir(str3, 0);
        if (dir == null) {
            return null;
        }
        File file = new File(dir, str);
        if (file.exists()) {
            file.delete();
        }
        try {
            try {
                C3563rs.m2352e(str2, file);
                file.setReadable(true);
            } finally {
                if (!file.exists()) {
                    try {
                        C3563rs.m2352e(str2, file);
                        file.setReadable(true);
                    } catch (Exception e) {
                    }
                }
            }
        } catch (Exception e2) {
            try {
                file.delete();
                C3563rs.m2352e(str2, file);
                file.setReadable(true);
            } catch (Exception e3) {
            }
            if (!file.exists()) {
                try {
                    C3563rs.m2352e(str2, file);
                    file.setReadable(true);
                } catch (Exception e4) {
                }
            }
        }
        if (file.exists()) {
            return file.getAbsolutePath();
        }
        return null;
    }
}
