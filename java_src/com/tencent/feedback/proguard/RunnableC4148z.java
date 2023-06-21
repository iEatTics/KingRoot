package com.tencent.feedback.proguard;

import android.content.Context;
import com.tencent.feedback.common.AbstractC4069b;
import com.tencent.feedback.common.C4068a;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import com.tencent.feedback.upload.InterfaceC4159e;
import java.util.Calendar;
import java.util.Date;
/* renamed from: com.tencent.feedback.proguard.z */
/* loaded from: classes.dex */
public final class RunnableC4148z implements Runnable {

    /* renamed from: a */
    private static RunnableC4148z f4808a;

    /* renamed from: b */
    private Context f4809b;

    /* renamed from: c */
    private AbstractC4069b f4810c;

    /* renamed from: d */
    private InterfaceC4159e f4811d;

    /* renamed from: h */
    private final String f4815h;

    /* renamed from: j */
    private long f4817j;

    /* renamed from: e */
    private boolean f4812e = false;

    /* renamed from: f */
    private long f4813f = BuglyBroadcastRecevier.UPLOADLIMITED;

    /* renamed from: g */
    private int f4814g = 10;

    /* renamed from: i */
    private int f4816i = 0;

    private RunnableC4148z(Context context, AbstractC4069b abstractC4069b, InterfaceC4159e interfaceC4159e) {
        this.f4817j = 0L;
        this.f4809b = context;
        this.f4810c = abstractC4069b;
        this.f4811d = interfaceC4159e;
        this.f4815h = C4071c.m1088a(context).m1101H();
        this.f4817j = m548e();
    }

    /* renamed from: a */
    public static synchronized RunnableC4148z m558a(Context context, AbstractC4069b abstractC4069b, InterfaceC4159e interfaceC4159e) {
        RunnableC4148z runnableC4148z;
        Context applicationContext;
        synchronized (RunnableC4148z.class) {
            if (f4808a == null) {
                if (context != null && (applicationContext = context.getApplicationContext()) != null) {
                    context = applicationContext;
                }
                f4808a = new RunnableC4148z(context, abstractC4069b, interfaceC4159e);
            }
            runnableC4148z = f4808a;
        }
        return runnableC4148z;
    }

    /* renamed from: a */
    public static synchronized RunnableC4148z m561a() {
        RunnableC4148z runnableC4148z;
        synchronized (RunnableC4148z.class) {
            runnableC4148z = f4808a;
        }
        return runnableC4148z;
    }

    /* renamed from: b */
    public final synchronized boolean m554b() {
        return this.f4812e;
    }

    /* renamed from: a */
    public final synchronized boolean m559a(long j) {
        long j2 = BuglyBroadcastRecevier.UPLOADLIMITED;
        boolean z = true;
        synchronized (this) {
            if (this.f4810c != null) {
                if (BuglyBroadcastRecevier.UPLOADLIMITED <= 30000) {
                    j2 = 30000;
                }
                if (!this.f4812e) {
                    this.f4813f = j2;
                    this.f4812e = true;
                    this.f4810c.mo1110a(this, 0L);
                    long m547f = m547f();
                    long time = new Date().getTime();
                    if (m547f <= time) {
                        m552b(m548e());
                        m547f = m547f();
                    }
                    if (m547f > time) {
                        this.f4810c.mo1110a(new Runnable() { // from class: com.tencent.feedback.proguard.z.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                long m547f2 = RunnableC4148z.this.m547f();
                                long time2 = new Date().getTime();
                                long j3 = m547f2 - time2;
                                AbstractC4069b m546g = RunnableC4148z.this.m546g();
                                if (m546g != null) {
                                    if (j3 > 0) {
                                        m546g.mo1110a(this, j3 + 1000);
                                        return;
                                    }
                                    C4073e.m1015b("rqdp{  next day to upload}", new Object[0]);
                                    RunnableC4148z.this.m549d();
                                    long m548e = RunnableC4148z.this.m548e();
                                    RunnableC4148z.this.m552b(m548e);
                                    m546g.mo1110a(this, m548e - time2);
                                    C4073e.m1015b("rqdp{ next day %d}", Long.valueOf(m548e - time2));
                                }
                            }
                        }, m547f - time);
                        C4073e.m1015b("rqdp{ next day %d}", Long.valueOf(m547f - time));
                    }
                } else if (j2 != this.f4813f) {
                    this.f4813f = j2;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final synchronized boolean m550c() {
        return AbstractC4069b.m1113b().mo1111a(new Runnable() { // from class: com.tencent.feedback.proguard.z.2
            @Override // java.lang.Runnable
            public final void run() {
                C4073e.m1015b("rqdp{ login state record %b}", Boolean.valueOf(RunnableC4148z.this.m560a(4)));
            }
        });
    }

    /* renamed from: i */
    private synchronized boolean m544i() {
        boolean m560a;
        m560a = m560a(1);
        C4073e.m1015b("rqdp{ launch state record %b}", Boolean.valueOf(m560a));
        return m560a;
    }

    /* renamed from: d */
    public final synchronized boolean m549d() {
        boolean m560a;
        m560a = m560a(3);
        C4073e.m1015b("rqdp{ next day state record %b}", Boolean.valueOf(m560a));
        return m560a;
    }

    /* renamed from: a */
    protected final synchronized boolean m560a(int i) {
        boolean z = true;
        synchronized (this) {
            C4071c m1088a = C4071c.m1088a(this.f4809b);
            if (m1088a != null) {
                C4137r c4137r = new C4137r();
                c4137r.m615a(i);
                c4137r.m614a(new Date().getTime());
                c4137r.m612a(this.f4815h);
                c4137r.m609b(m1088a.m1067h());
                if (C4119a.m753a(this.f4809b, new C4137r[]{c4137r}) > 0) {
                    if (m551b(this.f4815h) >= this.f4814g) {
                        C4073e.m1015b("rqdp{ state max upload}", new Object[0]);
                        AbstractC4069b m546g = m546g();
                        if (m546g != null) {
                            if (0 <= 0) {
                                m546g.mo1111a(new Runnable() { // from class: com.tencent.feedback.proguard.z.3
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        InterfaceC4159e m545h = RunnableC4148z.this.m545h();
                                        if (m545h != null) {
                                            m545h.mo521a(new C4100B(RunnableC4148z.this.f4809b, RunnableC4148z.m561a(), r2));
                                        }
                                    }
                                });
                            } else if (0 > 0) {
                                m546g.mo1110a(new Runnable() { // from class: com.tencent.feedback.proguard.z.4
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        InterfaceC4159e m545h = RunnableC4148z.this.m545h();
                                        if (m545h != null) {
                                            m545h.mo521a(new C4100B(RunnableC4148z.this.f4809b, RunnableC4148z.m561a(), r2));
                                        }
                                    }
                                }, 0L);
                            }
                        }
                    }
                }
            }
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public final synchronized C4137r[] m556a(String str) {
        return C4119a.m735b(this.f4809b, str);
    }

    /* renamed from: a */
    public final synchronized int m555a(C4137r[] c4137rArr) {
        return C4119a.m733b(this.f4809b, c4137rArr);
    }

    /* renamed from: b */
    public final synchronized int m551b(String str) {
        return C4119a.m726c(this.f4809b, str);
    }

    /* renamed from: e */
    public final synchronized long m548e() {
        long time;
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.add(6, 1);
            time = calendar.getTime().getTime();
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            time = new Date().getTime() + 86400000;
        }
        return time;
    }

    /* renamed from: j */
    private synchronized int m543j() {
        return this.f4816i;
    }

    /* renamed from: b */
    private synchronized void m553b(int i) {
        this.f4816i = i;
    }

    /* renamed from: f */
    public final synchronized long m547f() {
        return this.f4817j;
    }

    /* renamed from: b */
    protected final synchronized void m552b(long j) {
        this.f4817j = j;
    }

    /* renamed from: g */
    public final synchronized AbstractC4069b m546g() {
        return this.f4810c;
    }

    /* renamed from: h */
    public final synchronized InterfaceC4159e m545h() {
        return this.f4811d;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int m543j = m543j() + 1;
        m553b(m543j);
        if (m543j == 1) {
            C4068a.m1125b(this.f4809b, this.f4815h);
            m544i();
        }
    }
}
