package com.tencent.feedback.upload;

import android.content.Context;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.common.C4078g;
import com.tencent.feedback.common.C4079h;
import com.tencent.feedback.proguard.C4113O;
import com.tencent.feedback.proguard.C4114P;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4122d;
import com.tencent.feedback.proguard.C4140u;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.tencent.feedback.upload.f */
/* loaded from: classes.dex */
public final class C4160f implements InterfaceC4159e {

    /* renamed from: a */
    private static C4160f f4832a = null;

    /* renamed from: d */
    private AbstractC4155c f4835d;

    /* renamed from: e */
    private Context f4836e;

    /* renamed from: f */
    private boolean f4837f;

    /* renamed from: b */
    private List<InterfaceC4158d> f4833b = new ArrayList(2);

    /* renamed from: c */
    private List<UploadHandleListener> f4834c = new ArrayList(5);

    /* renamed from: g */
    private int f4838g = 0;

    /* renamed from: a */
    public static synchronized C4160f m523a(Context context) {
        C4160f c4160f;
        synchronized (C4160f.class) {
            if (f4832a == null) {
                f4832a = new C4160f(context, true);
                C4073e.m1015b("rqdp{  create uphandler up:true}", new Object[0]);
            }
            c4160f = f4832a;
        }
        return c4160f;
    }

    /* renamed from: a */
    public static synchronized C4160f m522a(Context context, boolean z) {
        C4160f c4160f;
        synchronized (C4160f.class) {
            if (f4832a == null) {
                f4832a = new C4160f(context, z);
                C4073e.m1015b("rqdp{  create uphandler up:}%b", Boolean.valueOf(z));
            }
            if (f4832a.m511e() != z) {
                f4832a.m517a(z);
                C4073e.m1015b("rqdp{  change uphandler up:}%b", Boolean.valueOf(z));
            }
            c4160f = f4832a;
        }
        return c4160f;
    }

    private C4160f(Context context, boolean z) {
        Context applicationContext;
        this.f4836e = null;
        this.f4837f = true;
        if (context != null && (applicationContext = context.getApplicationContext()) != null) {
            context = applicationContext;
        }
        this.f4836e = context;
        this.f4837f = z;
        this.f4835d = AbstractC4155c.m532a(this.f4836e);
    }

    @Override // com.tencent.feedback.upload.InterfaceC4159e
    /* renamed from: a */
    public final synchronized boolean mo519a(InterfaceC4158d interfaceC4158d) {
        boolean z;
        if (interfaceC4158d == null) {
            z = false;
        } else {
            if (!this.f4833b.contains(interfaceC4158d)) {
                this.f4833b.add(interfaceC4158d);
            }
            z = true;
        }
        return z;
    }

    @Override // com.tencent.feedback.upload.InterfaceC4159e
    /* renamed from: a */
    public final synchronized boolean mo520a(UploadHandleListener uploadHandleListener) {
        boolean z;
        if (uploadHandleListener == null) {
            z = false;
        } else {
            if (!this.f4834c.contains(uploadHandleListener)) {
                this.f4834c.add(uploadHandleListener);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: a */
    private synchronized int m526a() {
        return this.f4838g;
    }

    /* renamed from: a */
    private synchronized void m525a(int i) {
        this.f4838g = i;
    }

    @Override // com.tencent.feedback.upload.InterfaceC4159e
    /* renamed from: a */
    public final void mo521a(AbstractUploadDatas abstractUploadDatas) {
        boolean z;
        long j;
        int i = -1;
        long j2 = 0;
        if (!m511e()) {
            if (abstractUploadDatas.f4825b != 1111) {
                C4073e.m1015b("rqdp{   Not UpProc not req }%d", Integer.valueOf(abstractUploadDatas.m540b()));
                return;
            }
            C4073e.m1015b("rqdp{   NotUpProc com req start}", new Object[0]);
        }
        if (!C4079h.m976b(this.f4836e)) {
            C4073e.m1013c("rqdp{  doUpload network is disabled!}", new Object[0]);
            return;
        }
        mo520a(C4078g.m986a(this.f4836e));
        if (abstractUploadDatas == null) {
            C4073e.m1012d("rqdp{  upData == null?}", new Object[0]);
            return;
        }
        int m540b = abstractUploadDatas.m540b();
        UploadHandleListener[] m515b = m515b();
        if (m515b != null) {
            for (UploadHandleListener uploadHandleListener : m515b) {
                uploadHandleListener.onUploadStart(m540b);
            }
        }
        String m539c = abstractUploadDatas.m539c();
        if (m539c == null) {
            C4073e.m1012d("rqdp{  url error}", new Object[0]);
            m524a(m540b, -1, 0L, 0L, false, "url error");
            return;
        }
        C4073e.m1015b("rqdp{  start upload cmd:}%d rqdp{  url:}%s rqdp{  datas:}%s", Integer.valueOf(m540b), m539c, abstractUploadDatas.getClass().toString());
        byte[] m514b = m514b(abstractUploadDatas);
        if (m514b == null) {
            C4073e.m1012d("rqdp{  sData error}", new Object[0]);
            m524a(m540b, -1, 0L, 0L, false, "sData error");
            return;
        }
        AbstractC4155c m513c = m513c();
        if (m513c == null) {
            C4073e.m1012d("rqdp{  reqH error}", new Object[0]);
            m524a(m540b, -1, 0L, 0L, false, "reqH error");
            return;
        }
        C4071c m1088a = C4071c.m1088a(this.f4836e);
        HashMap hashMap = new HashMap();
        hashMap.put("pid", m1088a.m1078c());
        hashMap.put("bid", m1088a.m1078c());
        hashMap.put("pver", m1088a.m1106C());
        try {
            C4154b c4154b = new C4154b();
            byte[] mo530a = m513c.mo530a(m539c, m514b, c4154b, hashMap);
            if (mo530a == null) {
                m525a(m526a() + 1);
            } else {
                m525a(0);
            }
            long m536a = c4154b.m536a();
            try {
                j = c4154b.m533b();
                try {
                    C4114P m516a = m516a(mo530a);
                    if (m516a != null) {
                        i = m516a.f4683b;
                        r8 = m516a.f4682a == 0;
                        C4073e.m1015b("[req] request finish: result=%b requestCmd=%d, responseCmd=%d", Boolean.valueOf(r8), Integer.valueOf(m540b), Integer.valueOf(i));
                    }
                    if (abstractUploadDatas != null && m516a != null) {
                        C4071c m1088a2 = C4071c.m1088a(this.f4836e);
                        if (m1088a2 != null) {
                            m1088a2.m1077c(m516a.f4685d);
                            m1088a2.m1089a(m516a.f4686e - new Date().getTime());
                            C4073e.m1017a("rqdp{  fix ip:}%s rqdp{  tmgap:}%d", m1088a2.m1063j(), Long.valueOf(m1088a2.m1061k()));
                        }
                        byte[] bArr = m516a.f4684c;
                        if (bArr == null) {
                            C4073e.m1013c("rqdp{  no response}", new Object[0]);
                        } else {
                            List<InterfaceC4158d> m512d = m512d();
                            if (m512d == null || m512d.size() <= 0) {
                                C4073e.m1015b("rqdp{  no handler!}", new Object[0]);
                            } else {
                                int i2 = m516a.f4683b;
                                if (i2 == 0) {
                                    C4073e.m1017a("rqdp{  response no datas}", new Object[0]);
                                } else {
                                    m518a(m512d, i2, bArr);
                                }
                            }
                        }
                    }
                    m524a(m540b, i, m536a, j, r8, null);
                    abstractUploadDatas.done(r8);
                } catch (Throwable th) {
                    th = th;
                    j2 = m536a;
                    z = r8;
                    try {
                        if (!C4073e.m1016a(th)) {
                            th.printStackTrace();
                        }
                        m524a(m540b, i, j2, j, false, th.toString());
                        C4073e.m1012d("rqdp{  req error} %s", th.toString());
                        abstractUploadDatas.done(z);
                    } catch (Throwable th2) {
                        abstractUploadDatas.done(z);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                j = 0;
                j2 = m536a;
                z = false;
            }
        } catch (Throwable th4) {
            th = th4;
            z = false;
            j = 0;
        }
    }

    /* renamed from: b */
    private static byte[] m514b(AbstractUploadDatas abstractUploadDatas) {
        if (abstractUploadDatas != null) {
            try {
                C4113O mo537a = abstractUploadDatas.mo537a();
                if (mo537a != null) {
                    C4073e.m1015b("rqdp{  [pid:}%s rqdp{  \nbid:}%s_%s rqdp{  \nsv:}%s \n]", mo537a.f4671c, mo537a.f4671c, mo537a.f4672d, mo537a.f4674f);
                    C4122d c4122d = new C4122d();
                    c4122d.mo713e();
                    c4122d.mo721a("utf-8");
                    c4122d.m718a(1);
                    c4122d.m715c("RqdServer");
                    c4122d.m714d("sync");
                    c4122d.mo717a("detail", (String) mo537a);
                    return c4122d.mo719a();
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                AbstractUploadDatas.m538d();
            }
        }
        return null;
    }

    /* renamed from: a */
    private C4114P m516a(byte[] bArr) {
        C4114P c4114p;
        if (bArr != null) {
            try {
                C4122d c4122d = new C4122d();
                c4122d.mo713e();
                c4122d.mo721a("utf-8");
                c4122d.mo716a(bArr);
                Object b = c4122d.m720b("detail", (String) new C4114P());
                if (C4114P.class.isInstance(b)) {
                    C4073e.m1015b("rqdp{  covert to ResponsePackage}", new Object[0]);
                    c4114p = (C4114P) C4114P.class.cast(b);
                } else {
                    c4114p = null;
                }
                if (c4114p != null && c4114p.f4684c != null && c4114p.f4684c.length > 0) {
                    C4073e.m1015b("resp buf %d", Integer.valueOf(c4114p.f4684c.length));
                    c4114p.f4684c = C4119a.m729b(c4114p.f4684c, 2, 1, C4140u.m598a(this.f4836e).m593b().m570e());
                    if (c4114p.f4684c == null) {
                        C4073e.m1012d("resp sbuffer error!", new Object[0]);
                        return null;
                    }
                    return c4114p;
                }
                return c4114p;
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m524a(int i, int i2, long j, long j2, boolean z, String str) {
        UploadHandleListener[] m515b = m515b();
        if (m515b != null) {
            for (UploadHandleListener uploadHandleListener : m515b) {
                uploadHandleListener.onUploadEnd(i, i2, j, j2, z, str);
            }
        }
    }

    /* renamed from: b */
    private synchronized UploadHandleListener[] m515b() {
        return (this.f4834c == null || this.f4834c.size() <= 0) ? null : (UploadHandleListener[]) this.f4834c.toArray(new UploadHandleListener[0]);
    }

    /* renamed from: c */
    private synchronized AbstractC4155c m513c() {
        return this.f4835d;
    }

    /* renamed from: d */
    private synchronized List<InterfaceC4158d> m512d() {
        return (this.f4833b == null || this.f4833b.size() <= 0) ? null : new ArrayList(this.f4833b);
    }

    /* renamed from: a */
    private static void m518a(List<InterfaceC4158d> list, int i, byte[] bArr) {
        if (list != null && bArr != null) {
            for (InterfaceC4158d interfaceC4158d : list) {
                if (interfaceC4158d != null) {
                    try {
                        C4073e.m1015b("rqdp{  key:}%d rqdp{  handler: }%s", Integer.valueOf(i), interfaceC4158d.getClass().toString());
                        interfaceC4158d.mo527a(i, bArr, true);
                    } catch (Throwable th) {
                        if (!C4073e.m1016a(th)) {
                            th.printStackTrace();
                        }
                        C4073e.m1012d("rqdp{  handle error key:}%d", Integer.valueOf(i));
                    }
                }
            }
        }
    }

    /* renamed from: e */
    private synchronized boolean m511e() {
        return this.f4837f;
    }

    /* renamed from: a */
    private synchronized void m517a(boolean z) {
        this.f4837f = z;
    }
}
