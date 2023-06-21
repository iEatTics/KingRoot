package com.tencent.feedback.proguard;

import android.content.Context;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import com.tencent.feedback.common.AbstractC4069b;
import com.tencent.feedback.common.C4068a;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4079h;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import com.tencent.feedback.upload.InterfaceC4158d;
import com.tencent.feedback.upload.InterfaceC4159e;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* renamed from: com.tencent.feedback.proguard.v */
/* loaded from: classes.dex */
public final class RunnableC4143v implements Runnable {

    /* renamed from: a */
    private static long f4791a = 0;

    /* renamed from: b */
    private Context f4792b;

    public RunnableC4143v(Context context) {
        this.f4792b = null;
        this.f4792b = context;
    }

    /* renamed from: a */
    private static synchronized long m585a() {
        long j;
        synchronized (RunnableC4143v.class) {
            j = f4791a;
        }
        return j;
    }

    /* renamed from: a */
    public static synchronized void m584a(long j) {
        synchronized (RunnableC4143v.class) {
            f4791a = j;
        }
    }

    /* renamed from: b */
    private long m582b() {
        C4099A m758a = C4119a.m758a(this.f4792b, 510);
        if (m758a != null && m758a.m772b() == 510 && m758a.m770c() != null) {
            try {
                InterfaceC4158d m591c = C4140u.m598a(this.f4792b).m591c();
                if (m591c != null) {
                    m591c.mo527a(510, m758a.m770c(), false);
                    C4073e.m1015b("rqdp{  common strategy setted by history}", new Object[0]);
                }
                return m758a.m769d();
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return -1L;
    }

    /* renamed from: a */
    private void m583a(long j, long j2) {
        InterfaceC4159e m601a = C4140u.m601a();
        RunnableC4148z m558a = RunnableC4148z.m558a(this.f4792b, AbstractC4069b.m1113b(), m601a);
        boolean m554b = m558a.m554b();
        if (!m554b) {
            m558a.m559a(BuglyBroadcastRecevier.UPLOADLIMITED);
        }
        if (new Date().getTime() < j + j2) {
            C4073e.m1017a("lastUpdate:%d ,return not query", Long.valueOf(j));
            return;
        }
        int i = 0;
        while (m601a == null) {
            i++;
            if (i >= 5) {
                break;
            }
            C4073e.m1015b("rqdp{  wait uphandler:} %d", Integer.valueOf((int) ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION));
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e) {
                if (!C4073e.m1016a(e)) {
                    e.printStackTrace();
                }
            }
            m601a = C4140u.m601a();
        }
        if (m601a != null && C4079h.m976b(this.f4792b)) {
            if (!m554b && m558a.m551b(C4071c.m1088a(this.f4792b).m1101H()) <= 0) {
                C4073e.m1015b("rqdp{  wait lanch record:} %d", 500);
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e2) {
                    if (!C4073e.m1016a(e2)) {
                        e2.printStackTrace();
                    }
                }
            }
            C4118T m768a = C4100B.m768a(this.f4792b, m558a, (byte) 2);
            if (m768a != null) {
                C4073e.m1013c("create uPkg fail!", new Object[0]);
            }
            m601a.mo521a(new C4144w(this.f4792b, 1111, 540, m768a));
            return;
        }
        C4073e.m1017a("rqdp{  no uphandler or offline ,not query!!}", new Object[0]);
    }

    /* renamed from: c */
    private void m581c() {
        InterfaceC4139t[] m590d;
        C4073e.m1017a("rqdp{  AppFirstRun } %s", C4071c.m1088a(this.f4792b).m1059l());
        C4073e.m1017a("rqdp{  clear ao count} %d", Integer.valueOf(C4132m.m648a(this.f4792b, null, -1L, Long.MAX_VALUE, -1, -1)));
        C4140u m598a = C4140u.m598a(this.f4792b);
        synchronized (m598a) {
            m590d = m598a.m590d();
            C4140u.m598a(this.f4792b).m594a(true);
        }
        if (m590d != null) {
            for (InterfaceC4139t interfaceC4139t : m590d) {
                interfaceC4139t.mo602f();
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4145x m593b;
        InterfaceC4139t[] m590d;
        InterfaceC4139t[] m590d2;
        boolean z;
        long m582b = m582b();
        C4140u m598a = C4140u.m598a(this.f4792b);
        long m573c = m598a.m593b() == null ? -1L : m593b.m573c() * 3600 * 1000;
        if (m598a.m589e() == 0) {
            C4073e.m1017a("rqdp{  onlaunch}", new Object[0]);
            m598a.m600a(1);
            String m1127a = C4068a.m1127a(this.f4792b, C4071c.m1088a(this.f4792b).m1078c());
            if (m1127a == null || m1127a.trim().length() == 0) {
                C4073e.m1012d("not found apk %s", m1127a);
                z = false;
            } else {
                File file = new File(m1127a);
                if (file.exists() && file.canRead()) {
                    long lastModified = file.lastModified();
                    long length = file.length();
                    String m1106C = C4071c.m1088a(this.f4792b).m1106C();
                    List<C4135p> m653a = C4132m.m653a(this.f4792b, m1127a, 0, 10);
                    C4135p c4135p = null;
                    if (m653a != null && m653a.size() > 0) {
                        c4135p = m653a.get(0);
                    }
                    C4071c m1088a = C4071c.m1088a(this.f4792b);
                    if (c4135p == null) {
                        ArrayList arrayList = new ArrayList();
                        C4135p c4135p2 = new C4135p();
                        c4135p2.m630a(0);
                        c4135p2.m628a(m1127a);
                        c4135p2.m625b(m1088a.m1057m());
                        c4135p2.m622c(m1106C);
                        c4135p2.m626b(lastModified);
                        c4135p2.m623c(length);
                        arrayList.add(c4135p2);
                        C4132m.m636c(this.f4792b, arrayList);
                        C4073e.m1017a("new app %s ", c4135p2.m621d());
                        z = true;
                    } else if (m1088a.m1055n()) {
                        if (m1088a.m1057m().equals(c4135p.m621d())) {
                            z = false;
                        } else {
                            C4132m.m634d(this.f4792b, m653a);
                            ArrayList arrayList2 = new ArrayList();
                            C4135p c4135p3 = new C4135p();
                            c4135p3.m630a(0);
                            c4135p3.m628a(m1127a);
                            c4135p3.m625b(m1088a.m1057m());
                            c4135p3.m622c(m1106C);
                            c4135p3.m626b(lastModified);
                            c4135p3.m623c(length);
                            arrayList2.add(c4135p3);
                            C4132m.m636c(this.f4792b, arrayList2);
                            C4073e.m1017a("new app %s ", c4135p3.m621d());
                            z = true;
                        }
                    } else if (c4135p.m621d() != null && m1106C.equals(c4135p.m619f()) && lastModified == c4135p.m627b() && length == c4135p.m624c()) {
                        C4071c.m1088a(this.f4792b).m1074d(c4135p.m621d());
                        z = false;
                    } else {
                        String m1057m = C4071c.m1088a(this.f4792b).m1057m();
                        if (m1057m == null) {
                            C4073e.m1012d("rqdp{  apkid get error!return false}", new Object[0]);
                            z = false;
                        } else {
                            z = m1057m.equals(c4135p.m621d());
                            C4132m.m634d(this.f4792b, m653a);
                            ArrayList arrayList3 = new ArrayList();
                            C4135p c4135p4 = new C4135p();
                            c4135p4.m630a(0);
                            c4135p4.m628a(m1127a);
                            c4135p4.m625b(m1057m);
                            c4135p4.m622c(m1106C);
                            c4135p4.m626b(lastModified);
                            c4135p4.m623c(length);
                            arrayList3.add(c4135p4);
                            C4132m.m636c(this.f4792b, arrayList3);
                            C4073e.m1017a("is new :%b %s ", Boolean.valueOf(z), c4135p4.toString());
                        }
                    }
                } else {
                    C4073e.m1012d("apk not exist or read %s", m1127a);
                    z = false;
                }
            }
            if (z) {
                m581c();
            } else {
                long m585a = m585a();
                if (m585a > 0) {
                    C4073e.m1015b("rqdp{  delay:} %d", Long.valueOf(m585a));
                    try {
                        Thread.sleep(m585a);
                    } catch (InterruptedException e) {
                        if (!C4073e.m1016a(e)) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        C4073e.m1015b("rqdp{  on Query Start}", new Object[0]);
        synchronized (m598a) {
            m590d = m598a.m590d();
            m598a.m600a(2);
        }
        if (m590d != null) {
            C4073e.m1015b("rqdp{  notify Query Start}", new Object[0]);
            for (InterfaceC4139t interfaceC4139t : m590d) {
                interfaceC4139t.mo604d();
            }
        }
        m583a(m582b, m573c);
        C4073e.m1015b("rqdp{  on query end!}", new Object[0]);
        synchronized (m598a) {
            m590d2 = m598a.m590d();
            m598a.m600a(3);
        }
        if (m590d2 != null) {
            C4073e.m1015b("rqdp{  notify Query end}", new Object[0]);
            for (InterfaceC4139t interfaceC4139t2 : m590d2) {
                interfaceC4139t2.mo603e();
            }
        }
        if (m573c > 0) {
            if (m573c > 0) {
                AbstractC4069b.m1113b().mo1110a(this, m573c);
                C4073e.m1015b("rqdp{  next time} %d", Long.valueOf(m573c));
                C4140u.m598a(this.f4792b).m600a(4);
                return;
            }
            C4073e.m1015b("rqdp{  stop loop query}", new Object[0]);
            return;
        }
        C4073e.m1013c("periodLimit %d return", Long.valueOf(m573c));
    }
}
