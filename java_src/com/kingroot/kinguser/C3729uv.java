package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3732uw;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: com.kingroot.kinguser.uv */
/* loaded from: classes.dex */
public class C3729uv {
    private static final cce<C3729uv> sInstance = new cce<C3729uv>() { // from class: com.kingroot.kinguser.uv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: kN */
        public C3729uv create() {
            return new C3729uv();
        }
    };

    /* renamed from: Jf */
    private final Map<Method, C3732uw> f3655Jf;

    /* renamed from: kM */
    public static C3729uv m1971kM() {
        return sInstance.get();
    }

    private C3729uv() {
        this.f3655Jf = new ConcurrentHashMap();
    }

    /* renamed from: a */
    public <T> T m1973a(final T t, final Class<T> cls) {
        C3948zd.m1327k(t);
        C3948zd.m1327k(cls);
        return (T) Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.kingroot.kinguser.uv.2
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if (method.getDeclaringClass() == Object.class) {
                    return method.invoke(this, objArr);
                }
                if (KApplication.m13450hT() == 2) {
                    return method.invoke(t, objArr);
                }
                return C3729uv.this.m1972a(method, t, cls).m1965a(objArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public <T> C3732uw<T> m1972a(@NonNull Method method, @NonNull T t, Class<T> cls) {
        C3732uw c3732uw = this.f3655Jf.get(method);
        if (c3732uw == null) {
            synchronized (this.f3655Jf) {
                c3732uw = this.f3655Jf.get(method);
                if (c3732uw == null) {
                    c3732uw = new C3732uw.C3734a(t, method, cls).m1959kS();
                    this.f3655Jf.put(method, c3732uw);
                }
            }
        }
        return c3732uw;
    }
}
