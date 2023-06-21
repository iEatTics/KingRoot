package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class cdd {
    /* renamed from: a */
    public static Object m4860a(Object obj, String str, Object[] objArr) {
        Class<?> cls = obj.getClass();
        Class<?>[] clsArr = new Class[objArr.length];
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            clsArr[i] = objArr[i].getClass();
            if (clsArr[i] == Integer.class) {
                clsArr[i] = Integer.TYPE;
            } else if (clsArr[i] == Boolean.class) {
                clsArr[i] = Boolean.TYPE;
            }
        }
        return cls.getMethod(str, clsArr).invoke(obj, objArr);
    }

    /* renamed from: f */
    public static Object m4859f(String str, Object[] objArr) {
        Class<?>[] clsArr;
        Class<?> cls = Class.forName(str);
        if (objArr == null) {
            clsArr = null;
        } else {
            clsArr = new Class[objArr.length];
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                clsArr[i] = objArr[i].getClass();
            }
        }
        return cls.getConstructor(clsArr).newInstance(objArr);
    }

    /* renamed from: g */
    public static Object m4858g(Object obj, String str) {
        return obj.getClass().getField(str).get(obj);
    }
}
