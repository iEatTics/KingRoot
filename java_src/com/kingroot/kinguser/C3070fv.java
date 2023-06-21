package com.kingroot.kinguser;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.tencent.tps.client.AbsTPSClientBase;
import com.tencent.tps.client.TPSException;
import com.tencent.tps.client.p024kr.OnQuerySupportedListener;
import java.lang.reflect.Method;
import p001a.AbstractBinderC0005ar;
import p001a.BinderC0009m;
import p001a.C0007at;
import p001a.C0008av;
import p001a.InterfaceC0004aq;
/* renamed from: com.kingroot.kinguser.fv */
/* loaded from: classes.dex */
public final class C3070fv {

    /* renamed from: qa */
    private static volatile C3070fv f2675qa = null;

    /* renamed from: h */
    private volatile boolean f2676h = false;

    /* renamed from: i */
    private int f2677i = -1;

    /* renamed from: j */
    private int f2678j = -1;

    /* renamed from: qb */
    private InterfaceC0004aq f2679qb;

    /* renamed from: qc */
    private AbsTPSClientBase f2680qc;

    private C3070fv() {
        Context context = AbsTPSClientBase.getContext();
        if (!C3062fn.m3841k(context)) {
            System.exit(-1);
        }
        C3116gb.m3729d(new C3046ey(0, null, context.getPackageName(), C3062fn.m3842c(context)));
    }

    /* renamed from: ai */
    public static C3070fv m3819ai() {
        if (f2675qa == null) {
            synchronized (C3070fv.class) {
                if (f2675qa == null) {
                    f2675qa = new C3070fv();
                }
            }
        }
        return f2675qa;
    }

    /* renamed from: a */
    public synchronized boolean m3821a(AbsTPSClientBase absTPSClientBase) {
        boolean z = true;
        synchronized (this) {
            if (!m3809h()) {
                this.f2680qc = absTPSClientBase;
                this.f2679qb = m3818aj();
                if (this.f2679qb == null) {
                    z = false;
                } else if (!m3815c()) {
                    z = false;
                } else if (m3816b(absTPSClientBase)) {
                    m3820a(true);
                    try {
                        this.f2679qb.asBinder().linkToDeath(new C3071fw(this), 0);
                        z = m3809h();
                    } catch (RemoteException e) {
                        m3820a(false);
                        throw new TPSException("connect TPS Service failed", e);
                    }
                } else {
                    z = false;
                }
            }
        }
        return z;
    }

    public boolean stopTPSService() {
        C0008av c0008av;
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 10;
        try {
            c0008av = this.f2679qb.mo13751b(c0007at);
        } catch (Exception e) {
            c0008av = null;
        }
        if (c0008av != null) {
            C3116gb.m3729d(new C3036ex(c0008av.f67pE, c0008av.f65I, 2, c0007at.f60pU, null));
            return false;
        }
        C3116gb.m3729d(new C3036ex(0, null, 2, c0007at.f60pU, null));
        return true;
    }

    public boolean enableAutoPatch() {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 12;
        C0008av m3824a = m3824a(c0007at);
        this.f2677i = 1;
        return m3824a != null && m3824a.f66as == 10012;
    }

    public boolean disableAutoPatch() {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 13;
        C0008av m3824a = m3824a(c0007at);
        this.f2677i = 0;
        return m3824a != null && m3824a.f66as == 10013;
    }

    /* renamed from: c */
    private boolean m3815c() {
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 1;
        C0008av m3824a = m3824a(c0007at);
        return m3824a != null && m3824a.f66as == 10001 && m3824a.f67pE == 0;
    }

    /* renamed from: d */
    public boolean m3813d() {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 3;
        C0008av m3824a = m3824a(c0007at);
        this.f2678j = 1;
        return m3824a != null && m3824a.f66as == 10003;
    }

    /* renamed from: e */
    public boolean m3811e() {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 4;
        C0008av m3824a = m3824a(c0007at);
        this.f2678j = 0;
        return m3824a != null && m3824a.f66as == 10004;
    }

    /* renamed from: f */
    public boolean m3810f() {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 5;
        C0008av m3824a = m3824a(c0007at);
        return m3824a != null && m3824a.f66as == 10005 && m3824a.arg1 == 1;
    }

    public boolean querySupportedAsync(OnQuerySupportedListener onQuerySupportedListener) {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        BinderC0009m.m13742i().m13747a(onQuerySupportedListener);
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 11;
        C0008av m3824a = m3824a(c0007at);
        return m3824a != null && m3824a.f66as == 10011;
    }

    public int querySupportedSync() {
        if (!m3809h()) {
            throw new TPSException("TPS Service has not been initialized yet!");
        }
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 14;
        C0008av m3824a = m3824a(c0007at);
        if (m3824a != null && m3824a.f66as == 10014) {
            return m3824a.arg1;
        }
        return -2;
    }

    /* renamed from: aj */
    private InterfaceC0004aq m3818aj() {
        try {
            Method method = Class.forName("android.os.ServiceManager").getMethod("getService", String.class);
            method.setAccessible(true);
            Object invoke = method.invoke(null, "tps_service_");
            if (invoke != null && (invoke instanceof IBinder)) {
                IBinder iBinder = (IBinder) invoke;
                if (iBinder.isBinderAlive() && iBinder.pingBinder()) {
                    return AbstractBinderC0005ar.m13752a(iBinder);
                }
            }
            return null;
        } catch (Throwable th) {
            throw new TPSException("TPS Service is not accessible", th);
        }
    }

    /* renamed from: b */
    private boolean m3816b(AbsTPSClientBase absTPSClientBase) {
        C0007at c0007at = new C0007at();
        c0007at.f60pU = 6;
        BinderC0009m.m13742i().m13744c(absTPSClientBase);
        c0007at.f64pY = BinderC0009m.m13742i();
        C0008av m3824a = m3824a(c0007at);
        int i = -1;
        if (m3824a != null && m3824a.f66as == 10006) {
            i = m3824a.arg1;
        }
        return i > 0;
    }

    /* renamed from: a */
    private C0008av m3824a(C0007at c0007at) {
        try {
            C0008av mo13751b = this.f2679qb.mo13751b(c0007at);
            if (mo13751b != null) {
                C3116gb.m3729d(new C3036ex(mo13751b.f67pE, mo13751b.f65I, 2, c0007at.f60pU, null));
                if (mo13751b.f67pE == 0) {
                    return mo13751b;
                }
            } else {
                C3116gb.m3729d(new C3036ex(19001, "deamon response null", 2, c0007at.f60pU, null));
            }
            return null;
        } catch (Throwable th) {
            throw new TPSException("TPS Service error occurred!", th);
        }
    }

    /* renamed from: h */
    private boolean m3809h() {
        return this.f2676h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3820a(boolean z) {
        this.f2676h = z;
    }
}
