package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.kingroot.kinguser.ur */
/* loaded from: classes.dex */
public class C3709ur {

    /* renamed from: Jd */
    private static final Map<Class<?>, Class<?>> f3650Jd = new ConcurrentHashMap();

    /* renamed from: Je */
    private static final Class[] f3651Je = {InterfaceC3728uu.class, InterfaceC3725us.class};

    @Nullable
    /* renamed from: a */
    public static Annotation m2005a(Annotation[] annotationArr) {
        for (Annotation annotation : annotationArr) {
            for (Class cls : f3651Je) {
                if (cls.isInstance(annotation)) {
                    return annotation;
                }
            }
        }
        return null;
    }

    @Nullable
    /* renamed from: e */
    public static Method m2004e(Class cls) {
        Method[] methods;
        for (Method method : cls.getMethods()) {
            for (Annotation annotation : method.getAnnotations()) {
                if (InterfaceC3726ut.class.isInstance(annotation)) {
                    return method;
                }
            }
        }
        return null;
    }
}
