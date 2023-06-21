package com.kingroot.kinguser;

import java.lang.reflect.Field;
/* loaded from: classes.dex */
public final class abb {

    /* renamed from: YM */
    public static Class<?> f1308YM;

    /* renamed from: ek */
    public static boolean m12851ek(String str) {
        Class<?> cls = null;
        try {
            cls = Class.forName(str);
        } catch (ClassNotFoundException e) {
        }
        f1308YM = cls;
        return f1308YM != null;
    }

    /* renamed from: l */
    public static int m12850l(String str, int i) {
        Field field = getField(str);
        if (field != null) {
            try {
                return field.getInt(null);
            } catch (IllegalAccessException e) {
                return i;
            } catch (IllegalArgumentException e2) {
                return i;
            }
        }
        return i;
    }

    private static final Field getField(String str) {
        Field field = null;
        try {
            field = f1308YM.getDeclaredField(str);
            field.setAccessible(true);
            return field;
        } catch (NoSuchFieldException e) {
            return field;
        } catch (SecurityException e2) {
            return field;
        }
    }
}
