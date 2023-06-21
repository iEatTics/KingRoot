package com.tencent.feedback.eup;

import android.content.Context;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4081j;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4130l;
import com.tencent.feedback.proguard.C4132m;
import com.tencent.feedback.proguard.C4140u;
import com.tencent.feedback.upload.AbstractUploadDatas;
import com.tencent.feedback.upload.C4160f;
import com.tencent.feedback.upload.InterfaceC4159e;
import com.tencent.feedback.upload.UploadHandleListener;
/* renamed from: com.tencent.feedback.eup.f */
/* loaded from: classes.dex */
public final class C4091f extends C4081j {

    /* renamed from: b */
    private static C4091f f4587b;

    /* renamed from: c */
    private CrashStrategyBean f4588c;

    /* renamed from: d */
    private CrashStrategyBean f4589d;

    /* renamed from: e */
    private C4088c f4590e;

    /* renamed from: f */
    private CrashHandleListener f4591f;

    /* renamed from: g */
    private final boolean f4592g;

    /* renamed from: a */
    public static synchronized C4091f m816a(Context context, String str, boolean z, InterfaceC4159e interfaceC4159e, UploadHandleListener uploadHandleListener, CrashHandleListener crashHandleListener, CrashStrategyBean crashStrategyBean) {
        C4091f c4091f;
        synchronized (C4091f.class) {
            if (f4587b == null) {
                C4073e.m1017a("rqdp{  eup create instance}", new Object[0]);
                C4091f c4091f2 = new C4091f(context, str, false, interfaceC4159e, uploadHandleListener, crashHandleListener, crashStrategyBean);
                f4587b = c4091f2;
                c4091f2.m967a(true);
                C4130l.m661a().m660a(context);
            }
            c4091f = f4587b;
        }
        return c4091f;
    }

    /* renamed from: l */
    public static synchronized C4091f m808l() {
        C4091f c4091f;
        synchronized (C4091f.class) {
            c4091f = f4587b;
        }
        return c4091f;
    }

    /* renamed from: a */
    public static synchronized InterfaceC4159e m815a(Context context, boolean z) {
        C4160f m522a;
        synchronized (C4091f.class) {
            m522a = C4160f.m522a(context, z);
        }
        return m522a;
    }

    /* renamed from: m */
    public static synchronized AbstractUploadDatas m807m() {
        C4092g c4092g = null;
        synchronized (C4091f.class) {
            if (m805o()) {
                if (f4587b == null) {
                    C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
                } else if (f4587b.m969a()) {
                    c4092g = C4092g.m798a(f4587b.f4501a);
                }
            }
        }
        return c4092g;
    }

    /* renamed from: n */
    public static boolean m806n() {
        if (m805o()) {
            C4073e.m1017a("rqdp{  doUploadExceptionDatas}", new Object[0]);
            C4091f m808l = m808l();
            if (m808l == null) {
                C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
                return false;
            }
            return m808l.mo810h();
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m813a(Thread thread, Throwable th, String str, byte[] bArr) {
        C4073e.m1017a("rqdp{  handleCatchException}", new Object[0]);
        if (m805o()) {
            C4091f m808l = m808l();
            if (m808l == null) {
                C4073e.m1013c("rqdp{  instance == null}", new Object[0]);
                return false;
            }
            if (m808l.m969a()) {
                try {
                    C4088c m799u = m808l.m799u();
                    if (m799u != null) {
                        return m799u.m919a(thread == null ? null : thread.getName(), th, str, bArr, false);
                    }
                    C4073e.m1013c("rqdp{  imposiable chandler null!}", new Object[0]);
                    return false;
                } catch (Throwable th2) {
                    if (!C4073e.m1016a(th2)) {
                        th2.printStackTrace();
                    }
                    C4073e.m1012d("rqdp{  handleCatchException error} %s", th2.toString());
                }
            }
            return false;
        }
        return false;
    }

    /* renamed from: o */
    public static boolean m805o() {
        C4091f m808l = m808l();
        if (m808l == null) {
            C4073e.m1012d("rqdp{  not init eup}", new Object[0]);
            return false;
        }
        boolean a = m808l.m969a();
        if (a && m808l.m800t()) {
            return m808l.m966b();
        }
        return a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private C4091f(Context context, String str, boolean z, InterfaceC4159e interfaceC4159e, UploadHandleListener uploadHandleListener, CrashHandleListener crashHandleListener, CrashStrategyBean crashStrategyBean) {
        super(context, str, 3, 530, 510, interfaceC4159e, new C4089d(r1), uploadHandleListener);
        Context applicationContext;
        if (context == null) {
            applicationContext = context;
        } else {
            applicationContext = context.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context;
            }
        }
        this.f4588c = null;
        this.f4589d = null;
        this.f4590e = null;
        this.f4591f = null;
        if (crashStrategyBean != null) {
            C4073e.m1015b("rqdp{  cus eupstrategy} %s", crashStrategyBean);
            this.f4588c = crashStrategyBean;
        } else {
            C4073e.m1015b("rqdp{  default eupstrategy}", new Object[0]);
            this.f4588c = new CrashStrategyBean();
        }
        this.f4590e = C4088c.m921a(this.f4501a);
        this.f4591f = crashHandleListener;
        this.f4592g = z;
    }

    /* renamed from: t */
    private synchronized boolean m800t() {
        return this.f4592g;
    }

    /* renamed from: p */
    public final synchronized CrashStrategyBean m804p() {
        return this.f4588c;
    }

    /* renamed from: q */
    public final synchronized CrashStrategyBean m803q() {
        return this.f4589d;
    }

    /* renamed from: a */
    public final synchronized void m814a(CrashStrategyBean crashStrategyBean) {
        this.f4589d = crashStrategyBean;
    }

    /* renamed from: u */
    private synchronized C4088c m799u() {
        return this.f4590e;
    }

    /* renamed from: r */
    public final synchronized CrashHandleListener m802r() {
        return this.f4591f;
    }

    @Override // com.tencent.feedback.common.C4081j, com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: f */
    public final void mo602f() {
        int i = -1;
        super.mo602f();
        Context context = this.f4501a;
        C4073e.m1015b("rqdp{  EUPDAO.deleteEup() start}", new Object[0]);
        if (context == null) {
            C4073e.m1013c("rqdp{  deleteEup() context is null arg}", new Object[0]);
        } else {
            i = C4132m.m648a(context, new int[]{1, 2}, -1L, Long.MAX_VALUE, -1, -1);
        }
        C4073e.m1015b("rqdp{  eup clear} %d ", Integer.valueOf(i));
        C4073e.m1015b("rqdp{  eup strategy clear} %d ", Integer.valueOf(C4119a.m736b(this.f4501a, 510)));
    }

    @Override // com.tencent.feedback.common.C4081j
    /* renamed from: i */
    public final boolean mo809i() {
        return m803q() != null;
    }

    @Override // com.tencent.feedback.common.C4081j
    /* renamed from: h */
    public final boolean mo810h() {
        if (super.mo810h()) {
            C4092g m798a = C4092g.m798a(this.f4501a);
            InterfaceC4159e c = m965c();
            if (m798a == null || c == null) {
                C4073e.m1013c("rqdp{  upDatas or uphandler null!}", new Object[0]);
                return false;
            }
            try {
                c.mo521a(m798a);
                return true;
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  upload eupdata error} %s", th.toString());
            }
        }
        return false;
    }

    @Override // com.tencent.feedback.common.C4081j
    /* renamed from: g */
    public final int mo811g() {
        CrashStrategyBean m801s = m801s();
        if (m801s != null && super.mo811g() >= 0) {
            if (!m801s.isMerged()) {
                C4073e.m1015b("rqdp{  in no merge}", new Object[0]);
                return C4085b.m924b(this.f4501a);
            }
            C4073e.m1015b("rqdp{  in merge}", new Object[0]);
            return C4085b.m948a(this.f4501a) ? 1 : 0;
        }
        return -1;
    }

    /* renamed from: s */
    public final CrashStrategyBean m801s() {
        try {
            CrashStrategyBean m803q = C4140u.m598a(this.f4501a).m593b().m569f() ? m803q() : null;
            if (m803q == null) {
                return m804p();
            }
            return m803q;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    @Override // com.tencent.feedback.common.C4081j
    /* renamed from: b */
    public final synchronized void mo812b(boolean z) {
        super.mo812b(z);
        if (m969a()) {
            this.f4590e.m922a();
        } else {
            this.f4590e.m916b();
        }
    }

    @Override // com.tencent.feedback.common.C4081j, com.tencent.feedback.proguard.InterfaceC4139t
    /* renamed from: e */
    public final void mo603e() {
        int i = -1;
        super.mo603e();
        Context context = this.f4501a;
        C4073e.m1015b("rqdp{  EUPDAO.deleteEup() start}", new Object[0]);
        if (context == null) {
            C4073e.m1013c("rqdp{  deleteEup() context is null arg}", new Object[0]);
        } else {
            i = C4132m.m648a(context, new int[]{1, 2}, -1L, Long.MAX_VALUE, 3, -1);
        }
        C4073e.m1015b("remove fail updata num :%d", Integer.valueOf(i));
        if (m962k() == 1) {
            BuglyBroadcastRecevier.brocastProcessLaunch(this.f4501a);
        }
    }
}
