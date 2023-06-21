package com.kingroot.kinguser;

import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class bxp {
    /* renamed from: O */
    private static boolean m5228O(File file) {
        try {
            return (bxu.m5220nx(file.getAbsolutePath()) & 2048) > 0;
        } catch (Exception e) {
            return false;
        }
    }

    private static boolean ajJ() {
        String[] split;
        for (String str : new String(bxs.m5225cy("/proc/mounts")).split("\n")) {
            if (str.contains(" /system ")) {
                return str.contains(",nosuid");
            }
        }
        return false;
    }

    public static boolean ajK() {
        if (bxx.m5208qP()) {
            return false;
        }
        try {
            if (ajJ() || !bxu.isAvailable()) {
                return false;
            }
            File[] listFiles = new File("/system/bin").listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if (!"run-as".equals(file.getName()) && m5228O(file)) {
                        return true;
                    }
                }
            }
            File[] listFiles2 = new File("/system/xbin").listFiles();
            if (listFiles2 != null) {
                for (File file2 : listFiles2) {
                    if (m5228O(file2)) {
                        return true;
                    }
                }
                return false;
            }
            return false;
        } catch (IOException e) {
            return false;
        }
    }
}
