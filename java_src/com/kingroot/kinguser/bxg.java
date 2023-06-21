package com.kingroot.kinguser;

import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bxg {
    private static String[] ajt() {
        return new String[]{bwo.m5296k(bwo.bRu), bwo.m5296k(bwo.bRv), bwo.m5296k(bwo.bRw), bwo.m5296k(bwo.bRx), bwo.m5296k(bwo.bRy), bwo.m5296k(bwo.bRz), bwo.m5296k(bwo.bRA), bwo.m5296k(bwo.bRB), bwo.m5296k(bwo.bRC), bwo.m5296k(bwo.bRD)};
    }

    public static int aju() {
        int i;
        String[] ajt = ajt();
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            Method declaredMethod = cls.getDeclaredMethod("get", String.class, String.class);
            declaredMethod.setAccessible(true);
            int i2 = 0;
            int i3 = 0;
            while (i2 < ajt.length) {
                try {
                    if (!TextUtils.isEmpty((String) declaredMethod.invoke(cls, ajt[i2], ""))) {
                        i = 1 << i2;
                    } else {
                        i = 0 << i2;
                    }
                    i2++;
                    i3 = i | i3;
                } catch (Throwable th) {
                    return i3;
                }
            }
            return i3;
        } catch (Throwable th2) {
            return 0;
        }
    }

    private static String[] ajv() {
        return new String[]{bwo.m5296k(bwo.bRE), bwo.m5296k(bwo.bRF), bwo.m5296k(bwo.bRG), bwo.m5296k(bwo.bRH), bwo.m5296k(bwo.bRI), bwo.m5296k(bwo.bRJ), bwo.m5296k(bwo.bRK), bwo.m5296k(bwo.bRL), bwo.m5296k(bwo.bRM), bwo.m5296k(bwo.bRN), bwo.m5296k(bwo.bRO), bwo.m5296k(bwo.bRP)};
    }

    public static int ajw() {
        int i;
        String[] ajv = ajv();
        int i2 = 0;
        for (int i3 = 0; i3 < ajv.length; i3++) {
            if (new File(ajv[i3]).exists()) {
                i = 1 << i3;
            } else {
                i = 0 << i3;
            }
            i2 |= i;
        }
        return i2;
    }

    public static boolean ajx() {
        if (Build.VERSION.SDK_INT <= 10) {
            return true;
        }
        for (String str : new String[]{bwo.m5296k(bwo.bRQ), bwo.m5296k(bwo.bRR), bwo.m5296k(bwo.bRS)}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    public static boolean ajy() {
        boolean z;
        File file = new File(bwo.m5296k(bwo.bRT));
        if (file == null || !file.isDirectory()) {
            return false;
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return true;
        }
        String m5296k = bwo.m5296k(bwo.bRU);
        int length = listFiles.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            File file2 = listFiles[i];
            if (file2 != null && file2.getName().startsWith(m5296k)) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            return true;
        }
        String m5296k2 = bwo.m5296k(bwo.bRV);
        int i2 = 0;
        for (File file3 : listFiles) {
            if (file3 != null && file3.getName().startsWith(m5296k2)) {
                i2++;
            }
        }
        return i2 >= 5;
    }

    public static boolean ajz() {
        return Build.VERSION.SDK_INT <= 10 || new File(bwo.m5296k(bwo.bRW)).exists();
    }
}
