package com.kingroot.kinguser;

import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
/* loaded from: classes.dex */
public class apw {
    private static Object aJH;

    /* renamed from: LR */
    public static void m9704LR() {
        try {
            if (m9702LT() || aav.m12906qk() || aav.m12909qh() || aav.m12905ql()) {
                Field declaredField = Class.forName("android.app.ActivityManagerNative").getDeclaredField("gDefault");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(null);
                Class<?> cls = Class.forName("android.util.Singleton");
                Method declaredMethod = cls.getDeclaredMethod("get", new Class[0]);
                declaredMethod.setAccessible(true);
                Field declaredField2 = cls.getDeclaredField("mInstance");
                declaredField2.setAccessible(true);
                if (cls.isInstance(obj)) {
                    aJH = declaredMethod.invoke(obj, new Object[0]);
                } else {
                    aJH = obj;
                }
                if (aJH != null) {
                    Object m9697q = m9697q(aJH);
                    if (cls.isInstance(obj)) {
                        declaredField2.set(obj, m9697q);
                    } else {
                        declaredField.set(obj, m9697q);
                    }
                }
            }
        } catch (ClassNotFoundException e) {
        } catch (IllegalAccessException e2) {
        } catch (NoSuchFieldException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (InvocationTargetException e5) {
        }
    }

    /* renamed from: q */
    private static Object m9697q(Object obj) {
        HashSet hashSet = new HashSet();
        m9700a(obj.getClass(), hashSet);
        Class[] clsArr = new Class[hashSet.size()];
        hashSet.toArray(clsArr);
        return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), clsArr, new C1443a());
    }

    /* renamed from: a */
    private static void m9700a(Class cls, HashSet<Class<?>> hashSet) {
        Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces != null && interfaces.length > 0) {
            hashSet.addAll(Arrays.asList(interfaces));
        }
        if (cls.getSuperclass() != Object.class) {
            m9700a(cls.getSuperclass(), hashSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.apw$a */
    /* loaded from: classes.dex */
    public static class C1443a implements InvocationHandler {
        private C1443a() {
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            try {
                if ("startActivity".equals(method.getName())) {
                    int m9699a = apw.m9699a(objArr, Intent.class);
                    if (m9699a == -1) {
                        return method.invoke(apw.aJH, objArr);
                    }
                    Intent intent = (Intent) objArr[m9699a];
                    if (intent != null && ("android.intent.action.INSTALL_PACKAGE".equals(intent.getAction()) || ("android.intent.action.VIEW".equals(intent.getAction()) && "application/vnd.android.package-archive".equals(intent.getType())))) {
                        if (objArr.length <= 1 || objArr[1] == null) {
                            return method.invoke(apw.aJH, objArr);
                        }
                        if (!(objArr[1] instanceof String) || !TextUtils.equals(KApplication.m13453ge().getPackageName(), (String) objArr[1])) {
                            return method.invoke(apw.aJH, objArr);
                        }
                        String m9703LS = apw.m9703LS();
                        objArr[1] = m9703LS;
                        intent.putExtra("caller_package", m9703LS);
                        if (aav.m12906qk()) {
                            intent.putExtra("oppo_extra_pkg_name", m9703LS);
                        }
                    }
                }
                return method.invoke(apw.aJH, objArr);
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public static int m9699a(Object[] objArr, Class<?> cls) {
        if (objArr == null || objArr.length == 0) {
            return -1;
        }
        int i = -1;
        for (Object obj : objArr) {
            i++;
            if (obj != null && cls == obj.getClass()) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LS */
    public static String m9703LS() {
        if (aav.m12909qh()) {
            return "com.bbk.appstore";
        }
        if (aav.m12906qk()) {
            return "com.oppo.market";
        }
        if (m9702LT()) {
            return "com.huawei.appmarket";
        }
        return "com.google.launcher";
    }

    /* renamed from: LT */
    private static boolean m9702LT() {
        return Build.BRAND.toLowerCase(Locale.ENGLISH).contains("huawei") || Build.BRAND.toLowerCase(Locale.ENGLISH).contains("honor");
    }
}
