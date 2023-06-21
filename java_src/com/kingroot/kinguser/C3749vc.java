package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.p019qq.jce.wup.UniPacket;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.vc */
/* loaded from: classes.dex */
public final class C3749vc {
    public static final String PHONE_TYPE = AbstractC3976zt.get("ws1");

    /* renamed from: JI */
    public static final String f3691JI = AbstractC3976zt.get("ws2");

    /* renamed from: JJ */
    public static final String f3692JJ = AbstractC3976zt.get("ws3");

    /* renamed from: JK */
    public static final String f3693JK = AbstractC3976zt.get("ws4");

    /* renamed from: JL */
    public static final String f3694JL = AbstractC3976zt.get("ws5");

    /* renamed from: JM */
    public static final String f3695JM = AbstractC3976zt.get("ws6");

    /* renamed from: JN */
    public static final String f3696JN = AbstractC3976zt.get("ws7");

    /* renamed from: JO */
    public static final String f3697JO = AbstractC3976zt.get("ws8");

    /* renamed from: JP */
    public static final String f3698JP = AbstractC3976zt.get("ws9");

    /* renamed from: JQ */
    public static final String f3699JQ = AbstractC3976zt.get("ws10");

    /* renamed from: JR */
    public static final String f3700JR = AbstractC3976zt.get("ws11");

    /* renamed from: JS */
    public static final String f3701JS = AbstractC3976zt.get("ws12");

    /* renamed from: JT */
    public static final String f3702JT = AbstractC3976zt.get("ws13");

    /* renamed from: JU */
    public static final String f3703JU = AbstractC3976zt.get("ws14");

    /* renamed from: JV */
    public static final String f3704JV = AbstractC3976zt.get("ws15");

    /* renamed from: JW */
    public static final String f3705JW = AbstractC3976zt.get("ws16");

    /* renamed from: JX */
    public static final String f3706JX = AbstractC3976zt.get("ws17");

    /* renamed from: JY */
    public static final String f3707JY = AbstractC3976zt.get("ws18");

    /* renamed from: JZ */
    public static final String f3708JZ = AbstractC3976zt.get("ws19");

    /* renamed from: Ka */
    public static final String f3709Ka = AbstractC3976zt.get("ws20");

    /* renamed from: Kb */
    public static final String f3710Kb = AbstractC3976zt.get("ws21");

    /* renamed from: Kc */
    protected static final String f3711Kc = AbstractC3976zt.get("wf1");

    /* renamed from: Kd */
    protected static final String f3712Kd = AbstractC3976zt.get("wf2");

    /* renamed from: Ke */
    protected static final String f3713Ke = AbstractC3976zt.get("wf5");

    /* renamed from: Kf */
    protected static final String f3714Kf = AbstractC3976zt.get("wf16");

    /* renamed from: Kg */
    protected static final String f3715Kg = AbstractC3976zt.get("wf7");

    /* renamed from: Kh */
    protected static final String f3716Kh = AbstractC3976zt.get("wf8");

    /* renamed from: Ki */
    protected static final String f3717Ki = AbstractC3976zt.get("wf9");

    /* renamed from: Kj */
    protected static final String f3718Kj = AbstractC3976zt.get("wf10");

    /* renamed from: Kk */
    protected static final String f3719Kk = AbstractC3976zt.get("wf11");

    /* renamed from: Kl */
    protected static final String f3720Kl = AbstractC3976zt.get("wf12");

    /* renamed from: Km */
    protected static final String f3721Km = AbstractC3976zt.get("wf13");

    /* renamed from: Kn */
    protected static final String f3722Kn = AbstractC3976zt.get("wf14");

    /* renamed from: Ko */
    protected static final String f3723Ko = AbstractC3976zt.get("wf18");

    /* renamed from: Kp */
    protected static final String f3724Kp = AbstractC3976zt.get("wf19");

    /* renamed from: Kq */
    protected static final String f3725Kq = AbstractC3976zt.get("wf20");

    /* renamed from: Kr */
    protected static final String f3726Kr = AbstractC3976zt.get("wf21");

    /* renamed from: Ks */
    private static final cce<Map<Integer, C3751a>> f3727Ks = new cce<Map<Integer, C3751a>>() { // from class: com.kingroot.kinguser.vc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: li */
        public Map<Integer, C3751a> create() {
            HashMap hashMap = new HashMap();
            hashMap.put(0, new C3751a(0, C3749vc.f3711Kc));
            hashMap.put(1, new C3751a(1, C3749vc.f3712Kd));
            hashMap.put(4, new C3751a(4, C3749vc.f3713Ke));
            hashMap.put(5, new C3751a(5, C3749vc.f3714Kf));
            hashMap.put(6, new C3751a(6, C3749vc.f3715Kg));
            hashMap.put(7, new C3751a(7, C3749vc.f3716Kh));
            hashMap.put(8, new C3751a(8, C3749vc.f3717Ki));
            hashMap.put(9, new C3751a(9, C3749vc.f3718Kj));
            hashMap.put(10, new C3751a(10, C3749vc.f3719Kk));
            hashMap.put(11, new C3751a(11, C3749vc.f3720Kl));
            hashMap.put(12, new C3751a(12, C3749vc.f3721Km));
            hashMap.put(13, new C3751a(13, C3749vc.f3722Kn));
            hashMap.put(15, new C3751a(15, C3749vc.f3723Ko));
            hashMap.put(16, new C3751a(16, C3749vc.f3724Kp));
            hashMap.put(17, new C3751a(17, C3749vc.f3725Kq));
            hashMap.put(18, new C3751a(18, C3749vc.f3726Kr));
            hashMap.put(19, new C3751a(19, "securereport|reportSoftUseInfo"));
            return hashMap;
        }
    };

    /* renamed from: lg */
    private static Map<Integer, C3751a> m1908lg() {
        return f3727Ks.get();
    }

    /* renamed from: bc */
    public static C3751a m1910bc(int i) {
        return m1908lg().get(Integer.valueOf(i));
    }

    /* renamed from: com.kingroot.kinguser.vc$a */
    /* loaded from: classes.dex */
    public static class C3751a {

        /* renamed from: Kt */
        public int f3728Kt;

        /* renamed from: Ku */
        public String f3729Ku;

        /* renamed from: Kv */
        public String f3730Kv;

        public C3751a(int i, String str) {
            this.f3728Kt = i;
            int indexOf = str.indexOf("|");
            this.f3729Ku = str.substring(0, indexOf);
            this.f3730Kv = str.substring(indexOf + 1, str.length());
        }
    }

    /* renamed from: lh */
    private static C2843cq m1907lh() {
        return C3752vd.m1899lh();
    }

    /* renamed from: T */
    private static C2999dn m1916T(Context context) {
        return C3752vd.m1905T(context);
    }

    @WorkerThread
    /* renamed from: a */
    public static int m1912a(Context context, C2849cw c2849cw) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        C3752vd.m1904a(4, uniPacket, uniPacket2);
        uniPacket.put(PHONE_TYPE, m1907lh());
        try {
            uniPacket.put(f3691JI, m1916T(context));
            uniPacket.put(f3701JS, c2849cw);
            return C3752vd.m1902a(context, uniPacket, uniPacket2, false);
        } catch (abn e) {
            return -8;
        }
    }

    @WorkerThread
    /* renamed from: a */
    public static int m1913a(Context context, C2620bv c2620bv, AtomicReference<C2614bt> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        C3752vd.m1904a(8, uniPacket, uniPacket2);
        uniPacket.put(PHONE_TYPE, m1907lh());
        try {
            uniPacket.put(f3691JI, m1916T(context));
            uniPacket.put(f3703JU, c2620bv);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass(f3693JK, new C2614bt());
                if (byClass != null) {
                    atomicReference.set((C2614bt) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (abn e) {
            return -8;
        }
    }

    @WorkerThread
    /* renamed from: U */
    public static int m1915U(Context context) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        C3752vd.m1904a(11, uniPacket, uniPacket2);
        uniPacket.put(PHONE_TYPE, m1907lh());
        try {
            uniPacket.put(f3691JI, m1916T(context));
            uniPacket.put(f3704JV, m1914V(context));
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a != 0) {
                return m1902a;
            }
            return 0;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: V */
    private static C2537bo m1914V(Context context) {
        C2537bo c2537bo = new C2537bo();
        c2537bo.f1801kF = KApplication.m13442ib();
        c2537bo.product = KApplication.m13445hY();
        c2537bo.isbuildin = 0;
        try {
            ApplicationInfo applicationInfo = C3952zh.m1312pq().getApplicationInfo(context.getPackageName(), 8192);
            if (applicationInfo != null && (applicationInfo.flags & 1) != 0) {
                c2537bo.isbuildin = 1;
            }
        } catch (PackageManager.NameNotFoundException e) {
        } catch (Exception e2) {
        }
        return c2537bo;
    }

    @WorkerThread
    /* renamed from: a */
    public static int m1911a(Context context, AtomicReference<C2696cb> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        C3752vd.m1904a(13, uniPacket, uniPacket2);
        uniPacket.put(PHONE_TYPE, m1907lh());
        try {
            uniPacket.put(f3691JI, C3752vd.m1900d(context, false));
            uniPacket.put(f3707JY, m1909c(context, false));
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass(f3708JZ, new C2696cb());
                if (byClass != null) {
                    atomicReference.set((C2696cb) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: c */
    private static C2675bz m1909c(Context context, boolean z) {
        C2675bz c2675bz = new C2675bz();
        c2675bz.m5156v(aab.m13016dH(aav.m12929ae(context)));
        c2675bz.m5155w(aab.m13016dH(aav.m12927ag(context)));
        c2675bz.m5154x(aav.m12926ah(context));
        c2675bz.m5153y(aab.m13016dH(aav.m12925ai(context)));
        c2675bz.m5152z(aab.m13016dH(aav.m12924aj(context)));
        c2675bz.m5157g(abd.m12839qb());
        c2675bz.m5161A(aab.m13016dH(aav.m12916qa()));
        c2675bz.m5160B(aab.m13016dH(aav.getProductName()));
        c2675bz.m5159C(aab.m13016dH(C3943yz.m1346aa(context)));
        if (z) {
            c2675bz.m5158D(C3736ux.m1945kT().getGuid());
        } else {
            c2675bz.m5158D(aab.m13016dH(aav.getGuid()));
        }
        return c2675bz;
    }
}
