package com.kingroot.kinguser;

import java.util.HashMap;
/* loaded from: classes.dex */
public abstract class bzv {

    /* renamed from: a */
    private static final HashMap<String, AbstractC2686a<?>> f2192a = new HashMap<>();

    /* renamed from: i */
    protected abstract AbstractC2686a mo5094i(Class<cca> cls);

    public bzv() {
        Class<cca>[] akn;
        for (Class<cca> cls : bzy.akn()) {
            m5097a(cls, mo5094i(cls));
        }
    }

    /* renamed from: a */
    private <T> void m5097a(Class<T> cls, AbstractC2686a<T> abstractC2686a) {
        if (cls != null && abstractC2686a != null) {
            f2192a.put(cls.getName(), abstractC2686a);
        }
    }

    /* renamed from: h */
    public <T> T m5096h(Class<T> cls) {
        AbstractC2686a<?> abstractC2686a;
        T t;
        if (cls == null || (abstractC2686a = f2192a.get(cls.getName())) == null || (t = (T) abstractC2686a.m5095a()) == null) {
            return null;
        }
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bzv$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC2686a<T> {
        private volatile T byK;

        public abstract T aeB();

        /* renamed from: a */
        public final T m5095a() {
            if (this.byK == null) {
                synchronized (this) {
                    if (this.byK == null) {
                        this.byK = aeB();
                    }
                }
            }
            return this.byK;
        }
    }
}
