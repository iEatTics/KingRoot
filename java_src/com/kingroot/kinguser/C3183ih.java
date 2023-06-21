package com.kingroot.kinguser;

import android.content.Context;
import com.king.uranus.C0392bI;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.kingroot.kinguser.ih */
/* loaded from: classes.dex */
public final class C3183ih {

    /* renamed from: rW */
    private static final ConcurrentHashMap<String, Object> f2827rW = new ConcurrentHashMap<>();

    /* renamed from: rX */
    private static AtomicBoolean f2828rX = new AtomicBoolean(false);

    /* renamed from: rY */
    private static CountDownLatch f2829rY = new CountDownLatch(1);

    /* renamed from: rZ */
    private static C3180if f2830rZ;
    private static Context sContext;

    /* renamed from: a */
    public static <T> T m3501a(Class<T> cls) {
        T t = (T) f2827rW.get(cls.getName());
        if (t == null) {
            throw new IllegalStateException(cls.getName());
        }
        return t;
    }

    /* renamed from: a */
    public static <T> void m3500a(Class<T> cls, T t) {
        f2827rW.putIfAbsent(cls.getName(), t);
    }

    /* renamed from: a */
    public static synchronized void m3503a(C3180if c3180if) {
        synchronized (C3183ih.class) {
            if (c3180if != null) {
                if (c3180if.getContext() != null) {
                    if (f2828rX.compareAndSet(false, true)) {
                        m3499b(c3180if);
                        m3496bX();
                    }
                }
            }
            throw new NullPointerException();
        }
    }

    /* renamed from: bW */
    public static C3180if m3497bW() {
        return f2830rZ;
    }

    /* renamed from: b */
    private static void m3499b(C3180if c3180if) {
        f2830rZ = c3180if;
        sContext = c3180if.getContext().getApplicationContext();
        C3338nc m2927eX = C3338nc.m2927eX();
        C3249kk m3277cY = C3249kk.m3277cY();
        C3334mz.m2942eS().m2948a(m2927eX);
        C3336na.m2931eT().m2936a(sContext, m2927eX);
        C3285lq.m3161dW().m3163a(m3277cY);
        C3288lt.m3146eg().m13671a(C3291lu.m3140ej(), c3180if.m3552bG());
        m3500a(InterfaceC3161hq.class, C3252kn.m3254db());
        m3500a(InterfaceC3195it.class, C3293lw.m3128el());
        m3500a(InterfaceC3225js.class, C3227ju.m3359cK());
        m3500a(InterfaceC3157hm.class, C3268la.m3208dp());
        m3500a(InterfaceC3282ln.class, C3291lu.m3140ej());
        m3500a(InterfaceC3326mt.class, C3336na.m2931eT());
        m3500a(InterfaceC3150hf.class, C3285lq.m3161dW());
        m3500a(InterfaceC3158hn.class, C3218jl.m3396cA());
        m3500a(InterfaceC3281lm.class, C3292lv.m3133ek());
        m3500a(InterfaceC3150hf.class, C3285lq.m3161dW());
        C0392bI m13676dg = C0392bI.m13676dg();
        m13676dg.m13674u(sContext);
        m13676dg.m13677a(C3332mx.m2961eL());
        m13676dg.m13677a(C3336na.m2931eT());
        m3498b(m3277cY);
        m3502a(c3180if, m3277cY);
        C3293lw.m3128el().m3130b(c3180if.m3541bR());
    }

    /* renamed from: bX */
    private static void m3496bX() {
        C3357no.m2832fl().m2834a(new C3184ii());
    }

    /* renamed from: bY */
    public static void m3495bY() {
        try {
            f2829rY.await(5L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
        }
    }

    /* renamed from: b */
    private static void m3498b(InterfaceC3284lp interfaceC3284lp) {
        C3219jm m3387cB = C3219jm.m3387cB();
        m3387cB.m3389a(interfaceC3284lp);
        C0392bI.m13676dg().m13677a(m3387cB);
    }

    /* renamed from: a */
    private static void m3502a(C3180if c3180if, InterfaceC3284lp interfaceC3284lp) {
        C3146hb m3630aQ = C3146hb.m3630aQ();
        m3630aQ.m3635a(new C3261kw(c3180if.m3546bM()));
        m3630aQ.m3634a(interfaceC3284lp);
        C0392bI.m13676dg().m13677a(m3630aQ);
    }

    public static Context getContext() {
        return sContext;
    }
}
