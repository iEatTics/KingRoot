package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
/* renamed from: com.kingroot.kinguser.ox */
/* loaded from: classes.dex */
public class C3396ox {
    /* renamed from: a */
    public static C3820w m2680a(long j, long j2, C3683u c3683u, C2814ch c2814ch, InterfaceC3443pv interfaceC3443pv) {
        int m2668c;
        if (c2814ch == null) {
            m2668c = 3;
        } else {
            m2668c = C3398oz.m2663gh().m2668c(c2814ch.file, interfaceC3443pv);
        }
        return cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, m2668c);
    }

    /* renamed from: a */
    public static C3820w m2679a(long j, long j2, C3683u c3683u, C2815ci c2815ci, InterfaceC3443pv interfaceC3443pv) {
        int i;
        if (c2815ci == null) {
            i = 3;
        } else if (c2815ci.f2340lS == 1) {
            if (interfaceC3443pv != null) {
                i = interfaceC3443pv.mo2618cj(c2815ci.f2339lR).success() ? 1 : 2;
            }
            i = 2;
        } else {
            if (interfaceC3443pv != null) {
                i = interfaceC3443pv.mo2617ck(c2815ci.f2339lR).success() ? 1 : 2;
            }
            i = 2;
        }
        return cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, i);
    }

    /* renamed from: a */
    public static C3820w m2676a(Context context, long j, long j2, C3683u c3683u, C2819cm c2819cm, InterfaceC3443pv interfaceC3443pv) {
        int i = 2;
        if (c2819cm == null) {
            i = 3;
        } else {
            switch (c2819cm.f2344gD) {
                case 1:
                    i = m2674f(context, c2819cm.uid);
                    break;
                case 5:
                    i = m2675a(c2819cm.uid, interfaceC3443pv);
                    break;
            }
        }
        return cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, i);
    }

    /* renamed from: a */
    public static int m2675a(String str, InterfaceC3443pv interfaceC3443pv) {
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        ApplicationInfo m2667cg = C3398oz.m2663gh().m2667cg(str);
        return (m2667cg == null || !C3398oz.m2663gh().m2671a(m2667cg, interfaceC3443pv)) ? 2 : 1;
    }

    /* renamed from: f */
    public static int m2674f(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        return (C3398oz.m2663gh().m2667cg(str) == null || !C3398oz.m2663gh().m2664g(context, str)) ? 2 : 1;
    }

    /* renamed from: a */
    public static C3820w m2678a(long j, long j2, C3683u c3683u, C2816cj c2816cj, InterfaceC3443pv interfaceC3443pv) {
        int i;
        if (c2816cj == null || c3683u == null) {
            i = 3;
        } else {
            String str = c2816cj.process;
            if (TextUtils.isEmpty(str)) {
                i = 3;
            } else {
                i = C3398oz.m2663gh().m2666d(str, interfaceC3443pv) ? 1 : 2;
            }
        }
        return cba.m5025a(j, j2, 0, c3683u.conchSeqno, c3683u.f3608gh, 3, 0, i);
    }

    /* renamed from: a */
    public static void m2677a(Context context, long j, long j2, C3683u c3683u, C0605aa c0605aa, InterfaceC3443pv interfaceC3443pv) {
        String valueOf;
        if (c0605aa != null && c3683u != null) {
            if (TextUtils.isEmpty(c0605aa.pkgName)) {
                valueOf = c0605aa.pkgName;
            } else {
                valueOf = String.valueOf(System.currentTimeMillis());
            }
            C3398oz.m2663gh().m2672a(context, c0605aa.url, valueOf + "temp.apk", c0605aa.f1208gD, interfaceC3443pv, new C3397oy(j, j2, c3683u));
        }
    }
}
