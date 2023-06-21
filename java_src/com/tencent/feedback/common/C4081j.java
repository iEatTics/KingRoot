package com.tencent.feedback.common;

import android.content.Context;
import com.tencent.feedback.proguard.C4099A;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4140u;
import com.tencent.feedback.proguard.C4145x;
import com.tencent.feedback.proguard.InterfaceC4139t;
import com.tencent.feedback.proguard.InterfaceC4147y;
import com.tencent.feedback.upload.C4153a;
import com.tencent.feedback.upload.InterfaceC4158d;
import com.tencent.feedback.upload.InterfaceC4159e;
import com.tencent.feedback.upload.UploadHandleListener;
/* renamed from: com.tencent.feedback.common.j */
/* loaded from: classes.dex */
public class C4081j implements InterfaceC4139t, InterfaceC4147y {

    /* renamed from: a */
    protected final Context f4501a;

    /* renamed from: b */
    private int f4502b;

    /* renamed from: c */
    private int f4503c;

    /* renamed from: d */
    private int f4504d;

    /* renamed from: e */
    private boolean f4505e;

    /* renamed from: f */
    private boolean f4506f;

    /* renamed from: g */
    private InterfaceC4159e f4507g;

    /* renamed from: h */
    private InterfaceC4158d f4508h;

    /* renamed from: i */
    private int f4509i = 0;

    public C4081j(Context context, String str, int i, int i2, int i3, InterfaceC4159e interfaceC4159e, InterfaceC4158d interfaceC4158d, UploadHandleListener uploadHandleListener) {
        Context applicationContext;
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4501a = context;
        C4071c m1088a = C4071c.m1088a(this.f4501a);
        if (str != null && str.trim().length() > 0) {
            m1088a.m1087a(str);
        }
        this.f4502b = 3;
        this.f4503c = 530;
        this.f4504d = 510;
        this.f4507g = interfaceC4159e;
        this.f4508h = interfaceC4158d;
        if (interfaceC4159e != null) {
            interfaceC4159e.mo519a(interfaceC4158d);
            interfaceC4159e.mo520a(uploadHandleListener);
        }
        C4140u m598a = C4140u.m598a(this.f4501a);
        m598a.m597a((InterfaceC4139t) this);
        m598a.m595a((InterfaceC4147y) this);
        m598a.m599a(3, interfaceC4159e);
    }

    /* renamed from: a */
    public final void m967a(boolean z) {
        C4145x.C4146a m572c;
        boolean z2 = true;
        C4140u m598a = C4140u.m598a(this.f4501a);
        if (m598a != null && (m572c = m598a.m593b().m572c(this.f4502b)) != null && m572c.m565b() != z) {
            C4073e.m1017a("rqdp{  mid:}%d rqdp{  change user switch} %b", Integer.valueOf(this.f4502b), Boolean.valueOf(z));
            m572c.m566a(z);
            if (!m572c.m565b() || !m572c.m564c()) {
                z2 = false;
            }
            if (z2 != m969a()) {
                mo812b(z2);
            }
        }
    }

    /* renamed from: a */
    public final synchronized boolean m969a() {
        return this.f4505e;
    }

    /* renamed from: b */
    public synchronized void mo812b(boolean z) {
        this.f4505e = z;
    }

    /* renamed from: b */
    public final synchronized boolean m966b() {
        return this.f4506f;
    }

    /* renamed from: c */
    private synchronized void m964c(boolean z) {
        this.f4506f = true;
    }

    /* renamed from: c */
    public final synchronized InterfaceC4159e m965c() {
        return this.f4507g;
    }

    /* renamed from: l */
    private synchronized InterfaceC4158d m961l() {
        return this.f4508h;
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: d */
    public final void mo604d() {
        C4073e.m1015b("rqdp{  com query start }%s", getClass().toString());
        m968a(m962k() + 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007e A[Catch: Throwable -> 0x00f0, TryCatch #0 {Throwable -> 0x00f0, blocks: (B:5:0x0023, B:8:0x003b, B:12:0x0050, B:16:0x007e, B:32:0x00d2, B:18:0x009c, B:20:0x00a2, B:22:0x00ac, B:24:0x00b2, B:26:0x00bc, B:27:0x00c6, B:39:0x0108), top: B:41:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d0  */
    @Override // com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo603e() {
        boolean z;
        C4073e.m1015b("rqdp{  com query end }%s", getClass().toString());
        if (!m966b()) {
            C4073e.m1015b("rqdp{  step after query}", new Object[0]);
            m964c(true);
        }
        try {
            C4145x m593b = C4140u.m598a(this.f4501a).m593b();
            C4145x.C4146a m572c = m593b.m572c(this.f4502b);
            if (m969a() && m572c != null) {
                C4073e.m1015b("rqdp{  isable}", new Object[0]);
                boolean m563d = m572c.m563d();
                boolean m568g = m593b.m568g();
                if (m563d) {
                    if (m568g) {
                        z = true;
                    } else if (!mo809i()) {
                        C4099A m758a = C4119a.m758a(this.f4501a, this.f4504d);
                        if (m758a != null) {
                            InterfaceC4158d m961l = m961l();
                            if (m961l == null) {
                                C4073e.m1013c("rqdp{  imposiable eup reshandler not ready}", new Object[0]);
                            } else {
                                m961l.mo527a(this.f4504d, m758a.m770c(), false);
                            }
                        }
                        if (!mo809i()) {
                            z = true;
                        }
                    }
                    C4073e.m1015b("rqdp{  needDetail} %b rqdp{  allQ:}%b rqdp{  result:}%b", Boolean.valueOf(m572c.m563d()), Boolean.valueOf(m593b.m568g()), Boolean.valueOf(z));
                    if (!(mo811g() <= 0)) {
                        C4073e.m1015b("rqdp{  asyn up module} %d", Integer.valueOf(this.f4502b));
                        AbstractC4069b.m1113b().mo1111a(new Runnable() { // from class: com.tencent.feedback.common.j.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                C4081j.this.mo810h();
                            }
                        });
                        return;
                    } else if (z) {
                        C4073e.m1015b("rqdp{  asyn query module }%d", Integer.valueOf(this.f4502b));
                        AbstractC4069b.m1113b().mo1111a(new Runnable() { // from class: com.tencent.feedback.common.j.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                C4081j.this.m963j();
                            }
                        });
                        return;
                    } else {
                        return;
                    }
                }
                z = false;
                C4073e.m1015b("rqdp{  needDetail} %b rqdp{  allQ:}%b rqdp{  result:}%b", Boolean.valueOf(m572c.m563d()), Boolean.valueOf(m593b.m568g()), Boolean.valueOf(z));
                if (!(mo811g() <= 0)) {
                }
            } else {
                C4073e.m1015b("rqdp{  disable}", new Object[0]);
            }
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d("rqdp{  common query end error} %s", th.toString());
        }
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: f */
    public void mo602f() {
        C4073e.m1017a("rqdp{  app first start} %s", getClass().toString());
    }

    /* renamed from: g */
    public int mo811g() {
        return !m969a() ? -1 : 0;
    }

    /* renamed from: h */
    public boolean mo810h() {
        return m969a();
    }

    /* renamed from: i */
    public boolean mo809i() {
        return true;
    }

    /* renamed from: j */
    public final boolean m963j() {
        InterfaceC4159e m965c;
        if (m969a() && (m965c = m965c()) != null) {
            m965c.mo521a(new C4153a(this.f4501a, this.f4502b, this.f4503c));
            return true;
        }
        return false;
    }

    @Override // com.tencent.feedback.proguard.InterfaceC4147y
    /* renamed from: a */
    public final void mo562a(C4145x c4145x) {
        C4145x.C4146a m572c;
        C4073e.m1015b("rqdp{  com strateyg changed }%s", getClass().toString());
        if (c4145x != null && (m572c = c4145x.m572c(this.f4502b)) != null) {
            boolean z = m572c.m564c() && m572c.m565b();
            if (m969a() != z) {
                C4073e.m1017a("rqdp{  module} %d rqdp{  able changed }%b", Integer.valueOf(this.f4502b), Boolean.valueOf(z));
                mo812b(z);
            }
        }
    }

    /* renamed from: k */
    public final synchronized int m962k() {
        return this.f4509i;
    }

    /* renamed from: a */
    private synchronized void m968a(int i) {
        this.f4509i = i;
    }
}
