package com.kingroot.kinguser;

import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class blq {
    private static Class<?> bAf = null;
    private static Method bAg = null;

    public static String get(String str) {
        try {
            if (bAf == null) {
                Class<?> cls = Class.forName("android.os.SystemProperties");
                bAf = cls;
                bAg = cls.getMethod("get", String.class);
                bAf.getMethod("getInt", String.class, Integer.TYPE);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            return (String) bAg.invoke(bAf, str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
