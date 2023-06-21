package com.tencent.feedback.proguard;

import android.content.Context;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.upload.InterfaceC4158d;
/* renamed from: com.tencent.feedback.proguard.s */
/* loaded from: classes.dex */
public final class C4138s implements InterfaceC4158d {

    /* renamed from: a */
    private Context f4778a;

    public C4138s(Context context) {
        this.f4778a = null;
        this.f4778a = context;
    }

    @Override // com.tencent.feedback.upload.InterfaceC4158d
    /* renamed from: a */
    public final void mo527a(int i, byte[] bArr, boolean z) {
        if (i != 510) {
            C4073e.m1013c("rqdp{  com strategy unmatch key:}%d", Integer.valueOf(i));
        } else if (bArr != null) {
            C4145x m593b = C4140u.m598a(this.f4778a).m593b();
            if (m593b == null) {
                C4073e.m1013c("rqdp{  imposible! common strategy null!}", new Object[0]);
                return;
            }
            try {
                C4116R m723d = C4119a.m723d(bArr);
                m723d.mo667a(new C4126h(bArr));
                if (m605a(m723d, m593b)) {
                    if (z) {
                        C4073e.m1015b("rqdp{  update common strategy should save}", new Object[0]);
                        C4119a.m757a(this.f4778a, i, bArr);
                    }
                    C4073e.m1015b("rqdp{  com strategy changed notify!}", new Object[0]);
                    C4140u.m598a(this.f4778a).m596a(m593b);
                }
            } catch (Throwable th) {
                if (!C4073e.m1016a(th)) {
                    th.printStackTrace();
                }
                C4073e.m1012d("rqdp{  error to common strategy!}", new Object[0]);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean m605a(C4116R c4116r, C4145x c4145x) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        String str3;
        if (c4116r == null || c4145x == null || c4116r.f4692b == null) {
            return false;
        }
        String str4 = c4116r.f4692b.get("B17");
        if (str4 != null) {
            boolean z3 = str4.equals("1");
            if (z3 != c4145x.m569f()) {
                C4073e.m1015b("rqdp{  useStrategy changed to} %b", Boolean.valueOf(z3));
                c4145x.m577a(z3);
                z = true;
                if (c4116r.f4691a == null && !c4116r.f4691a.equals(c4145x.m580a())) {
                    C4073e.m1015b("rqdp{  url changed to} %s", c4116r.f4691a);
                    c4145x.m578a(c4116r.f4691a);
                    z2 = true;
                } else {
                    C4073e.m1015b("rqdp{  url same to} %s", c4116r.f4691a);
                    z2 = z;
                }
                str = c4116r.f4692b.get("B18");
                if (str != null) {
                    try {
                        int parseInt = Integer.parseInt(str);
                        if (parseInt != c4145x.m576b()) {
                            C4073e.m1015b("rqdp{  upStrategy changed to} %d", Integer.valueOf(parseInt));
                            try {
                                c4145x.m579a(parseInt);
                                z2 = true;
                            } catch (Exception e) {
                                e = e;
                                z2 = true;
                                if (!C4073e.m1016a(e)) {
                                    e.printStackTrace();
                                }
                                str2 = c4116r.f4692b.get("B19");
                                if (str2 != null) {
                                }
                                str3 = c4116r.f4692b.get("B20");
                                if (str3 == null) {
                                }
                            }
                        }
                    } catch (Exception e2) {
                        e = e2;
                    }
                }
                str2 = c4116r.f4692b.get("B19");
                if (str2 != null) {
                    try {
                        int parseInt2 = Integer.parseInt(str2);
                        if (parseInt2 != c4145x.m573c()) {
                            C4073e.m1015b("rqdp{  QueryPeriod changed to} %d", Integer.valueOf(parseInt2));
                            try {
                                c4145x.m575b(parseInt2);
                                z2 = true;
                            } catch (Exception e3) {
                                e = e3;
                                z2 = true;
                                if (!C4073e.m1016a(e)) {
                                    e.printStackTrace();
                                }
                                str3 = c4116r.f4692b.get("B20");
                                if (str3 == null) {
                                }
                            }
                        }
                    } catch (Exception e4) {
                        e = e4;
                    }
                }
                str3 = c4116r.f4692b.get("B20");
                if (str3 == null) {
                    boolean z4 = !str3.equals("0");
                    if (z4 != c4145x.m568g()) {
                        C4073e.m1015b("rqdp{  enforceQuery changed to} %b", Boolean.valueOf(z4));
                        c4145x.m574b(z4);
                        return true;
                    }
                    return z2;
                }
                return z2;
            }
        }
        z = false;
        if (c4116r.f4691a == null) {
        }
        C4073e.m1015b("rqdp{  url same to} %s", c4116r.f4691a);
        z2 = z;
        str = c4116r.f4692b.get("B18");
        if (str != null) {
        }
        str2 = c4116r.f4692b.get("B19");
        if (str2 != null) {
        }
        str3 = c4116r.f4692b.get("B20");
        if (str3 == null) {
        }
    }
}
