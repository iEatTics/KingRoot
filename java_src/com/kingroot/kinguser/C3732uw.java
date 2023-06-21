package com.kingroot.kinguser;

import android.os.IBinder;
import android.os.IInterface;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.uw */
/* loaded from: classes.dex */
public class C3732uw<T> {

    /* renamed from: Jj */
    private static final Map<String, Object> f3659Jj = new ConcurrentHashMap();

    /* renamed from: Jk */
    private static final Map<String, Method> f3660Jk = new ConcurrentHashMap();

    /* renamed from: Jl */
    private static final Map<String, Class<?>> f3661Jl = new ConcurrentHashMap();

    /* renamed from: Jm */
    private static final Map<String, Method> f3662Jm = new ConcurrentHashMap();

    /* renamed from: Jn */
    private T f3663Jn;

    /* renamed from: Jo */
    private Annotation f3664Jo;

    /* renamed from: Jp */
    private Class<T> f3665Jp;
    private Method mMethod;

    private C3732uw() {
    }

    /* renamed from: a */
    public Object m1965a(Object... objArr) {
        return m1964b(objArr);
    }

    /* renamed from: b */
    private Object m1964b(Object[] objArr) {
        Object[] m1363a = C3939yv.m1363a(new Object[]{this.f3663Jn.getClass().getName(), this.mMethod.toString(), this.f3665Jp.getName()}, objArr);
        if (this.f3664Jo instanceof InterfaceC3725us) {
            C3706uq.m2008kH().m2016a(C3735b.class, 0, new ArgsPack(m1363a));
            return null;
        } else if (!(this.f3664Jo instanceof InterfaceC3728uu)) {
            return null;
        } else {
            return C3706uq.m2008kH().m2014b(C3735b.class, 0, new ArgsPack(m1363a)).getResult();
        }
    }

    /* renamed from: com.kingroot.kinguser.uw$b */
    /* loaded from: classes.dex */
    public static class C3735b implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            ipcResult.m13377h(m1956a((String) argsPack.next(), (String) argsPack.next(), (String) argsPack.next(), argsPack.m13384kE()));
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            return m1956a((String) argsPack.next(), (String) argsPack.next(), (String) argsPack.next(), argsPack.m13384kE());
        }

        /* renamed from: a */
        private Object m1956a(String str, String str2, String str3, Object[] objArr) {
            Class<?> cls;
            Class<?> cls2;
            int i = 0;
            try {
                try {
                    Object m1954cZ = m1954cZ(str);
                    Method m1952l = m1952l(str, str2, str3);
                    Class<?>[] parameterTypes = m1952l.getParameterTypes();
                    while (true) {
                        int i2 = i;
                        if (i2 < parameterTypes.length) {
                            if (IInterface.class.isAssignableFrom(parameterTypes[i2])) {
                                try {
                                    cls2 = Class.forName(cls.getName() + "$Stub");
                                } catch (ClassNotFoundException e) {
                                    cls2 = null;
                                }
                                if (cls2 != null) {
                                    try {
                                        Method method = cls2.getMethod("asInterface", IBinder.class);
                                        Object obj = objArr[i2];
                                        if (obj instanceof IBinder) {
                                            objArr[i2] = method.invoke(null, obj);
                                        }
                                    } catch (NoSuchMethodException e2) {
                                    }
                                }
                            }
                            i = i2 + 1;
                        } else {
                            return m1952l.invoke(m1954cZ, objArr);
                        }
                    }
                } catch (ClassNotFoundException e3) {
                    return null;
                }
            } catch (IllegalAccessException e4) {
                return null;
            } catch (InvocationTargetException e5) {
                return null;
            }
        }

        /* renamed from: cZ */
        private Object m1954cZ(String str) {
            Object obj;
            synchronized (C3732uw.f3659Jj) {
                obj = C3732uw.f3659Jj.get(str);
                if (obj == null) {
                    Method m1953da = m1953da(str);
                    m1953da.setAccessible(true);
                    obj = m1953da.invoke(null, new Object[0]);
                    C3732uw.f3659Jj.put(str, obj);
                }
            }
            return obj;
        }

        @NonNull
        /* renamed from: da */
        private Method m1953da(String str) {
            Method method;
            synchronized (C3732uw.f3662Jm) {
                method = (Method) C3732uw.f3662Jm.get(str);
                Class<?> cls = Class.forName(str);
                if (method == null) {
                    method = C3709ur.m2004e(cls);
                    if (method != null) {
                        C3732uw.f3662Jm.put(str, method);
                    } else {
                        throw new RuntimeException("cat not find instance getter in " + str);
                    }
                }
            }
            return method;
        }

        @NonNull
        /* renamed from: l */
        private static Method m1952l(String str, String str2, String str3) {
            Method method;
            Class<?> m1958D;
            synchronized (C3732uw.f3660Jk) {
                method = (Method) C3732uw.f3660Jk.get(str2);
                if (method == null) {
                    Method[] declaredMethods = m1958D(str, str3).getDeclaredMethods();
                    int length = declaredMethods.length;
                    int i = 0;
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        Method method2 = declaredMethods[i];
                        if (TextUtils.equals(method2.toString(), str2)) {
                            C3732uw.f3660Jk.put(str2, method2);
                            method = method2;
                            break;
                        }
                        i++;
                    }
                    if (method == null) {
                        throw new RuntimeException(str2 + " not declared in class:" + m1958D.getName());
                    }
                }
            }
            return method;
        }

        @NonNull
        /* renamed from: D */
        private static Class<?> m1958D(String str, String str2) {
            Class<?> cls;
            synchronized (C3732uw.f3661Jl) {
                cls = (Class) C3732uw.f3661Jl.get(str);
                if (cls == null) {
                    cls = Class.forName(str2);
                    if (cls != null) {
                        C3732uw.f3661Jl.put(str, cls);
                    } else {
                        throw new RuntimeException("cat not find Ipc interface in " + str);
                    }
                }
            }
            return cls;
        }
    }

    /* renamed from: com.kingroot.kinguser.uw$a */
    /* loaded from: classes.dex */
    public static class C3734a<T> {

        /* renamed from: Jn */
        private T f3666Jn;

        /* renamed from: Jp */
        private Class<T> f3667Jp;

        /* renamed from: Jq */
        private Annotation[] f3668Jq;
        private Method mMethod;

        public C3734a(T t, Method method, Class<T> cls) {
            this.f3666Jn = t;
            this.mMethod = method;
            this.f3667Jp = cls;
            this.f3668Jq = method.getAnnotations();
        }

        /* renamed from: kS */
        public C3732uw<T> m1959kS() {
            C3732uw<T> c3732uw = new C3732uw<>();
            ((C3732uw) c3732uw).mMethod = this.mMethod;
            ((C3732uw) c3732uw).f3663Jn = this.f3666Jn;
            ((C3732uw) c3732uw).f3665Jp = this.f3667Jp;
            Annotation m2005a = C3709ur.m2005a(this.f3668Jq);
            if (m2005a != null) {
                ((C3732uw) c3732uw).f3664Jo = m2005a;
                return c3732uw;
            }
            throw new IllegalArgumentException("illegal method, annotation can not found : " + this.mMethod.getName());
        }
    }
}
