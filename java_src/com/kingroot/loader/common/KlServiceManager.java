package com.kingroot.loader.common;

import com.kingroot.kinguser.bkd;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KlServiceManager {

    /* renamed from: a */
    private static final HashMap<Class<?>, AbstractC3986a> f4116a = new HashMap<>();

    public static void registerService(Class<?> cls, AbstractC3986a abstractC3986a) {
        if (cls != null && abstractC3986a != null) {
            f4116a.put(cls, abstractC3986a);
        }
    }

    public static <T> T getKService(Class<T> cls) {
        AbstractC3986a abstractC3986a = f4116a.get(cls);
        if (abstractC3986a == null) {
            throw new RuntimeException("service (implements " + cls.getName() + ") isn't defined!");
        }
        Object m1230a = abstractC3986a.m1230a();
        if (m1230a == null) {
            throw new RuntimeException("service (implements " + cls.getName() + ") is null?");
        }
        if (bkd.aeF() && !cls.isInstance(m1230a)) {
            throw new RuntimeException("Wrong interface to obj");
        }
        return cls.cast(m1230a);
    }

    /* renamed from: com.kingroot.loader.common.KlServiceManager$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3986a {
        private Object byK;

        public abstract Object aeB();

        /* renamed from: a */
        public final Object m1230a() {
            Object obj;
            synchronized (this) {
                obj = this.byK;
                if (obj == null) {
                    obj = aeB();
                    this.byK = obj;
                }
            }
            return obj;
        }
    }
}
