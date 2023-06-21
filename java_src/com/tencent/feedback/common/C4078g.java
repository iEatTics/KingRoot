package com.tencent.feedback.common;

import android.content.Context;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4136q;
import com.tencent.feedback.upload.C4160f;
import com.tencent.feedback.upload.UploadHandleListener;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
/* renamed from: com.tencent.feedback.common.g */
/* loaded from: classes.dex */
public final class C4078g implements UploadHandleListener {

    /* renamed from: d */
    private static C4078g f4492d = null;

    /* renamed from: a */
    private C4136q f4493a;

    /* renamed from: b */
    private C4136q f4494b;

    /* renamed from: c */
    private Context f4495c;

    private C4078g(Context context) {
        Context applicationContext;
        this.f4495c = null;
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4495c = context;
        C4160f.m523a(this.f4495c).mo520a(this);
        m981c();
        if (m979d() > 0) {
            m978e();
        }
    }

    /* renamed from: a */
    public static synchronized C4078g m986a(Context context) {
        C4078g c4078g;
        synchronized (C4078g.class) {
            if (f4492d == null) {
                f4492d = new C4078g(context);
            }
            c4078g = f4492d;
        }
        return c4078g;
    }

    /* renamed from: b */
    public static C4136q m983b(Context context) {
        return m986a(context).m988a();
    }

    /* renamed from: c */
    public static void m980c(Context context) {
        C4078g m986a = m986a(context);
        long time = new Date().getTime();
        C4136q m988a = m986a.m988a();
        if (m988a != null && m988a.m618a() >= 0) {
            C4119a.m734b(m986a.f4495c, new C4136q[]{m988a});
        }
        m986a.m985a(new C4136q(0, time, 0L, 0L, 0L, 0L, 0L));
    }

    @Override // com.tencent.feedback.upload.UploadHandleListener
    public final void onUploadStart(int i) {
    }

    @Override // com.tencent.feedback.upload.UploadHandleListener
    public final void onUploadEnd(int i, int i2, long j, long j2, boolean z, String str) {
        C4073e.m1017a("rqdp{  req:}%d rqdp{  res:}%d rqdp{  send:}%d rqdp{  recv:}%d rqdp{  result:}%b rqdp{  msg:}%s", Integer.valueOf(i), Integer.valueOf(i2), Long.valueOf(j), Long.valueOf(j2), Boolean.valueOf(z), str);
        m981c();
        m979d();
        m987a(j, j2, C4079h.m977a(this.f4495c));
        m978e();
        C4073e.m1015b("rqdp{  [total:}%s]rqdp{  \n[today:}%s]", m988a(), m984b());
    }

    /* renamed from: a */
    private synchronized C4136q m988a() {
        return this.f4493a;
    }

    /* renamed from: a */
    private synchronized void m985a(C4136q c4136q) {
        this.f4493a = c4136q;
    }

    /* renamed from: b */
    private synchronized C4136q m984b() {
        m979d();
        return this.f4494b;
    }

    /* renamed from: b */
    private synchronized void m982b(C4136q c4136q) {
        this.f4494b = c4136q;
    }

    /* renamed from: c */
    private void m981c() {
        List<C4136q> m759a = C4119a.m759a(this.f4495c);
        if (m759a != null) {
            for (C4136q c4136q : m759a) {
                if (c4136q.f4765a == 0) {
                    m985a(c4136q);
                } else if (c4136q.f4765a == 1) {
                    m982b(c4136q);
                }
            }
        }
    }

    /* renamed from: d */
    private synchronized int m979d() {
        int i;
        long m727c = C4119a.m727c();
        long time = new Date().getTime();
        int i2 = 0;
        if (this.f4494b == null || this.f4494b.f4766b < m727c) {
            this.f4494b = new C4136q(1, time, 0L, 0L, 0L, 0L, 0L);
            i2 = 1;
        }
        if (this.f4493a == null) {
            this.f4493a = new C4136q(0, time, 0L, 0L, 0L, 0L, 0L);
            i = i2 + 1;
        } else {
            i = i2;
        }
        return i;
    }

    /* renamed from: a */
    private synchronized void m987a(long j, long j2, boolean z) {
        long time = new Date().getTime();
        long j3 = j + j2;
        long j4 = z ? j3 : 0L;
        if (z) {
            j3 = 0;
        }
        if (this.f4494b == null) {
            this.f4494b = new C4136q(1, time, 1L, j4, j3, j, j2);
        } else {
            long m618a = this.f4494b.m618a();
            this.f4494b = new C4136q(1, this.f4494b.f4766b, 1 + this.f4494b.f4767c, this.f4494b.f4768d + j4, this.f4494b.f4769e + j3, this.f4494b.f4770f + j, this.f4494b.f4771g + j2);
            this.f4494b.m617a(m618a);
        }
        if (this.f4493a == null) {
            this.f4493a = new C4136q(0, time, 1L, j4, j3, j, j2);
        } else {
            long m618a2 = this.f4493a.m618a();
            this.f4493a = new C4136q(0, this.f4493a.f4766b, this.f4493a.f4767c + 1, j4 + this.f4493a.f4768d, j3 + this.f4493a.f4769e, this.f4493a.f4770f + j, this.f4493a.f4771g + j2);
            this.f4493a.m617a(m618a2);
        }
    }

    /* renamed from: e */
    private void m978e() {
        ArrayList arrayList = new ArrayList();
        C4136q m988a = m988a();
        if (m988a != null) {
            arrayList.add(m988a);
        }
        C4136q m984b = m984b();
        if (m984b != null) {
            arrayList.add(m984b);
        }
        if (arrayList.size() > 0) {
            C4119a.m754a(this.f4495c, (C4136q[]) arrayList.toArray(new C4136q[arrayList.size()]));
        }
    }
}
