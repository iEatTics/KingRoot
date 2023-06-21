package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
/* loaded from: classes.dex */
public class aam {

    /* renamed from: XA */
    private static HashMap<String, Class<?>> f1238XA = new HashMap<>();

    /* renamed from: XB */
    private static HashMap<Class<?>, HashMap<String, Field>> f1239XB = new HashMap<>();

    /* renamed from: XC */
    private static HashMap<Class<?>, HashMap<String, Method>> f1240XC = new HashMap<>();

    /* renamed from: l */
    private static Class<?> m12964l(Context context, String str) {
        try {
            Class<?> cls = f1238XA.get(str);
            if (cls == null) {
                if (context != null) {
                    cls = context.getClassLoader().loadClass(str);
                } else {
                    cls = Class.forName(str);
                }
            }
            if (cls == null) {
                return null;
            }
            f1238XA.put(str, cls);
            return cls;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static Field m12973a(Class<?> cls, String str) {
        HashMap<String, Field> hashMap;
        if (cls == null) {
            return null;
        }
        try {
            HashMap<String, Field> hashMap2 = f1239XB.get(cls);
            if (hashMap2 == null) {
                HashMap<String, Field> hashMap3 = new HashMap<>();
                f1239XB.put(cls, hashMap3);
                hashMap = hashMap3;
            } else {
                hashMap = hashMap2;
            }
            Field field = hashMap.get(str);
            if (field == null) {
                field = cls.getDeclaredField(str);
            }
            if (field == null) {
                return null;
            }
            field.setAccessible(true);
            hashMap.put(str, field);
            return field;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static Method m12970a(Class<?> cls, String str, Class<?>... clsArr) {
        HashMap<String, Method> hashMap;
        if (cls != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    StringBuffer stringBuffer = new StringBuffer(str);
                    if (clsArr != null) {
                        for (Class<?> cls2 : clsArr) {
                            stringBuffer.append("+");
                            stringBuffer.append(cls2.getName());
                        }
                    }
                    String stringBuffer2 = stringBuffer.toString();
                    HashMap<String, Method> hashMap2 = f1240XC.get(cls);
                    if (hashMap2 == null) {
                        HashMap<String, Method> hashMap3 = new HashMap<>();
                        f1240XC.put(cls, hashMap3);
                        hashMap = hashMap3;
                    } else {
                        hashMap = hashMap2;
                    }
                    Method method = hashMap.get(stringBuffer2);
                    if (method == null) {
                        method = cls.getDeclaredMethod(str, clsArr);
                    }
                    if (method == null) {
                        return null;
                    }
                    method.setAccessible(true);
                    hashMap.put(stringBuffer2, method);
                    return method;
                }
            } catch (Throwable th) {
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Object m12972a(Class<?> cls, String str, Object obj) {
        try {
            Field m12973a = m12973a(cls, str);
            if (m12973a == null) {
                return null;
            }
            return m12973a.get(obj);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Object m12966b(Class<?> cls, String str) {
        return m12972a(cls, str, (Object) null);
    }

    /* renamed from: a */
    public static boolean m12971a(Class<?> cls, String str, Object obj, Object obj2) {
        try {
            Field m12973a = m12973a(cls, str);
            if (m12973a == null) {
                return false;
            }
            m12973a.set(obj, obj2);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: a */
    public static Object m12967a(String str, String str2, Class<?>[] clsArr, Object obj, Object[] objArr) {
        try {
            return m12969a(m12964l(null, str), str2, clsArr, obj, objArr);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static Object m12969a(Class<?> cls, String str, Class<?>[] clsArr, Object obj, Object[] objArr) {
        try {
            Method m12970a = m12970a(cls, str, clsArr);
            if (m12970a == null) {
                return null;
            }
            return m12970a.invoke(obj, objArr);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static Object m12968a(String str, String str2, Object obj) {
        try {
            return m12965b(m12964l(null, str), str2, obj);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Object m12965b(Class<?> cls, String str, Object obj) {
        try {
            Method m12970a = m12970a(cls, str, (Class<?>[]) new Class[0]);
            if (m12970a == null) {
                return null;
            }
            return m12970a.invoke(obj, new Object[0]);
        } catch (Throwable th) {
            return null;
        }
    }
}
