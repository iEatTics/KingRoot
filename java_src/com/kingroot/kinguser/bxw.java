package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bxw {
    /* renamed from: a */
    private static Field m5214a(Class<?> cls, String str) {
        if (cls == null) {
            return null;
        }
        try {
            Field declaredField = cls.getDeclaredField(str);
            if (declaredField != null) {
                declaredField.setAccessible(true);
                return declaredField;
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static Class<?> m5215a(Context context, String str, Object obj) {
        Class<?> cls;
        try {
            if (context != null) {
                cls = context.getClassLoader().loadClass(str);
            } else {
                cls = Class.forName(str);
            }
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null && obj != null) {
            try {
                cls = obj.getClass().getClassLoader().loadClass(str);
            } catch (Throwable th2) {
                return null;
            }
        }
        if (cls == null) {
            return null;
        }
        return cls;
    }

    /* renamed from: a */
    public static Object m5213a(Class<?> cls, String str, Object obj) {
        try {
            Field m5214a = m5214a(cls, str);
            if (m5214a == null) {
                return null;
            }
            return m5214a.get(obj);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Object m5210b(String str, String str2, Object obj) {
        try {
            return m5213a(m5215a((Context) null, str, obj), str2, obj);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: bb */
    public static Object m5209bb(String str, String str2) {
        return m5210b(str, str2, null);
    }

    /* renamed from: a */
    public static Method m5212a(Class<?> cls, String str, Class<?>... clsArr) {
        Method declaredMethod;
        if (cls != null) {
            try {
                if (TextUtils.isEmpty(str) || (declaredMethod = cls.getDeclaredMethod(str, clsArr)) == null) {
                    return null;
                }
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Method m5211a(String str, String str2, Class<?>... clsArr) {
        try {
            return m5212a(m5215a((Context) null, str, (Object) null), str2, clsArr);
        } catch (Throwable th) {
            return null;
        }
    }
}
