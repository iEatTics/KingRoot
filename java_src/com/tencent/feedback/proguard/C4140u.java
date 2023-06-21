package com.tencent.feedback.proguard;

import android.content.Context;
import android.util.SparseArray;
import com.tencent.feedback.common.AbstractC4069b;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.upload.InterfaceC4158d;
import com.tencent.feedback.upload.InterfaceC4159e;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.tencent.feedback.proguard.u */
/* loaded from: classes.dex */
public final class C4140u {

    /* renamed from: a */
    private static C4140u f4779a = null;

    /* renamed from: b */
    private C4145x f4780b;

    /* renamed from: e */
    private InterfaceC4158d f4783e;

    /* renamed from: f */
    private Runnable f4784f;

    /* renamed from: c */
    private boolean f4781c = false;

    /* renamed from: d */
    private int f4782d = 0;

    /* renamed from: g */
    private List<InterfaceC4139t> f4785g = new ArrayList(5);

    /* renamed from: h */
    private SparseArray<InterfaceC4159e> f4786h = new SparseArray<>(5);

    /* renamed from: i */
    private List<InterfaceC4147y> f4787i = new ArrayList(5);

    /* renamed from: a */
    public static synchronized C4140u m598a(Context context) {
        C4140u c4140u;
        synchronized (C4140u.class) {
            if (f4779a == null && context != null) {
                f4779a = new C4140u(context);
            }
            c4140u = f4779a;
        }
        return c4140u;
    }

    /* renamed from: a */
    public static synchronized InterfaceC4159e m601a() {
        InterfaceC4159e m588f;
        synchronized (C4140u.class) {
            m588f = f4779a != null ? f4779a.m588f() : null;
        }
        return m588f;
    }

    private C4140u(Context context) {
        this.f4780b = null;
        this.f4783e = null;
        this.f4784f = null;
        this.f4780b = new C4145x();
        this.f4783e = new C4138s(context);
        this.f4784f = new RunnableC4143v(context);
        AbstractC4069b.m1113b().mo1111a(this.f4784f);
    }

    /* renamed from: b */
    public final synchronized C4145x m593b() {
        return this.f4780b;
    }

    /* renamed from: f */
    private synchronized InterfaceC4159e m588f() {
        return (this.f4786h == null || this.f4786h.size() <= 0) ? null : this.f4786h.valueAt(0);
    }

    /* renamed from: a */
    public final synchronized void m599a(int i, InterfaceC4159e interfaceC4159e) {
        if (this.f4786h != null) {
            if (interfaceC4159e == null) {
                this.f4786h.remove(i);
            } else {
                this.f4786h.put(i, interfaceC4159e);
                interfaceC4159e.mo519a(m591c());
            }
        }
    }

    /* renamed from: c */
    public final synchronized InterfaceC4158d m591c() {
        return this.f4783e;
    }

    /* renamed from: g */
    private synchronized boolean m587g() {
        return this.f4781c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final synchronized void m594a(boolean z) {
        this.f4781c = true;
        C4073e.m1015b("rqdp{  isFirst }%b", true);
    }

    /* renamed from: d */
    public final synchronized InterfaceC4139t[] m590d() {
        return (this.f4785g == null || this.f4785g.size() <= 0) ? null : (InterfaceC4139t[]) this.f4785g.toArray(new InterfaceC4139t[0]);
    }

    /* renamed from: h */
    private synchronized InterfaceC4147y[] m586h() {
        return (this.f4787i == null || this.f4787i.size() <= 0) ? null : (InterfaceC4147y[]) this.f4787i.toArray(new InterfaceC4147y[0]);
    }

    /* renamed from: e */
    public final synchronized int m589e() {
        return this.f4782d;
    }

    /* renamed from: a */
    public final synchronized void m600a(int i) {
        this.f4782d = i;
        C4073e.m1015b("rqdp{  step }%d", Integer.valueOf(i));
    }

    /* renamed from: a */
    public final synchronized void m597a(final InterfaceC4139t interfaceC4139t) {
        if (interfaceC4139t != null) {
            if (this.f4785g == null) {
                this.f4785g = new ArrayList();
            }
            if (!this.f4785g.contains(interfaceC4139t)) {
                this.f4785g.add(interfaceC4139t);
                final int m589e = m589e();
                if (m587g()) {
                    C4073e.m1015b("rqdp{  add listener should notify app first run! }%s", interfaceC4139t.toString());
                    AbstractC4069b.m1113b().mo1111a(new Runnable(this) { // from class: com.tencent.feedback.proguard.u.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            interfaceC4139t.mo602f();
                        }
                    });
                }
                if (m589e >= 2) {
                    C4073e.m1015b("rqdp{  add listener should notify app start query!} %s", interfaceC4139t.toString());
                    AbstractC4069b.m1113b().mo1111a(new Runnable(this) { // from class: com.tencent.feedback.proguard.u.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            interfaceC4139t.mo604d();
                            if (m589e >= 3) {
                                C4073e.m1015b("rqdp{  query finished should notify}", new Object[0]);
                                interfaceC4139t.mo603e();
                            }
                        }
                    });
                }
            }
        }
    }

    /* renamed from: b */
    public final synchronized void m592b(InterfaceC4139t interfaceC4139t) {
        if (this.f4785g != null && interfaceC4139t != null && this.f4785g.contains(interfaceC4139t)) {
            this.f4785g.remove(interfaceC4139t);
        }
    }

    /* renamed from: a */
    public final synchronized void m595a(InterfaceC4147y interfaceC4147y) {
        if (interfaceC4147y != null) {
            if (this.f4787i != null && !this.f4787i.contains(interfaceC4147y)) {
                this.f4787i.add(interfaceC4147y);
            }
        }
    }

    /* renamed from: a */
    public final void m596a(C4145x c4145x) {
        InterfaceC4147y[] m586h = m586h();
        if (m586h != null) {
            for (InterfaceC4147y interfaceC4147y : m586h) {
                try {
                    interfaceC4147y.mo562a(c4145x);
                } catch (Throwable th) {
                    if (!C4073e.m1016a(th)) {
                        th.printStackTrace();
                    }
                    C4073e.m1012d("rqdp{  com strategy changed error }%s", th.toString());
                }
            }
        }
    }
}
