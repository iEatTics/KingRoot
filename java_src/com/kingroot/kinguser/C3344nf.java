package com.kingroot.kinguser;

import android.os.IBinder;
import java.lang.reflect.Method;
/* renamed from: com.kingroot.kinguser.nf */
/* loaded from: classes.dex */
public final class C3344nf {

    /* renamed from: wZ */
    private static Method f3193wZ;

    static {
        try {
            f3193wZ = Class.forName("android.os.ServiceManager").getDeclaredMethod("checkService", String.class);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    private static Object m2884a(Method method, Object... objArr) {
        if (method == null) {
            return null;
        }
        try {
            return method.invoke(null, objArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static IBinder getService(String str) {
        return m2883bH(str);
    }

    /* renamed from: bH */
    public static IBinder m2883bH(String str) {
        return (IBinder) m2884a(f3193wZ, str);
    }
}
