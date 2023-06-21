package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageManager;
import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3749vc;
import com.kingroot.kinguser.aae;
import com.p019qq.jce.wup.UniPacket;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.kingroot.kinguser.vd */
/* loaded from: classes.dex */
public class C3752vd {
    @WorkerThread
    /* renamed from: a */
    public static int m1902a(Context context, UniPacket uniPacket, UniPacket uniPacket2, boolean z) {
        return m1901a(context, KApplication.m13440ie(), uniPacket, uniPacket2, z);
    }

    /* renamed from: a */
    private static int m1901a(Context context, String str, UniPacket uniPacket, UniPacket uniPacket2, boolean z) {
        C3739uy c3739uy;
        Throwable th;
        C3739uy c3739uy2;
        byte[] mo12989C;
        int i;
        try {
            mo12989C = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12989C(uniPacket.encode());
            c3739uy = C3739uy.m1934k(context, str);
        } catch (IllegalArgumentException e) {
            c3739uy2 = null;
        } catch (Exception e2) {
            c3739uy = null;
        } catch (Throwable th2) {
            c3739uy = null;
        }
        try {
            c3739uy.setRequestMethod("POST");
            c3739uy.m1927z(mo12989C);
            c3739uy.m1932kZ();
            AtomicReference<byte[]> atomicReference = new AtomicReference<>();
            int m1938b = c3739uy.m1938b(false, atomicReference);
            if (m1938b != 0) {
                if (c3739uy != null) {
                    c3739uy.close();
                }
                return m1938b;
            }
            byte[] bArr = atomicReference.get();
            if (z || bArr == null || bArr.length <= 0) {
                i = m1938b;
            } else {
                byte[] mo12988D = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(bArr);
                if (mo12988D != null) {
                    uniPacket2.decode(mo12988D);
                    i = m1938b;
                } else {
                    i = -6000;
                }
            }
            try {
                long date = c3739uy.getDate();
                if (date > 0) {
                    C3823wb.m1594Q(date);
                }
            } catch (Throwable th3) {
            }
            if (c3739uy != null) {
                c3739uy.close();
                return i;
            }
            return i;
        } catch (IllegalArgumentException e3) {
            c3739uy2 = c3739uy;
            if (c3739uy2 != null) {
                c3739uy2.close();
                return -6057;
            }
            return -6057;
        } catch (Exception e4) {
            if (c3739uy != null) {
                c3739uy.close();
                return -6000;
            }
            return -6000;
        } catch (Throwable th4) {
            th = th4;
            if (c3739uy != null) {
                c3739uy.close();
            }
            throw th;
        }
    }

    /* renamed from: lh */
    public static C2843cq m1899lh() {
        C2843cq c2843cq = new C2843cq();
        c2843cq.f2384mv = 2;
        c2843cq.f2383iJ = 201;
        return c2843cq;
    }

    @WorkerThread
    /* renamed from: T */
    public static C2999dn m1905T(Context context) {
        return m1900d(context, true);
    }

    @WorkerThread
    /* renamed from: d */
    public static C2999dn m1900d(Context context, boolean z) {
        int i;
        int i2 = 1;
        int i3 = 0;
        C2999dn c2999dn = new C2999dn();
        c2999dn.f2472iE = aab.m13016dH(aav.m12929ae(context));
        c2999dn.f2473iF = aab.m13016dH(aav.m12927ag(context));
        c2999dn.f2469ct = C3748vb.m1921O(context) != 0 ? 1 : 2;
        c2999dn.f2478lc = KApplication.m13443ia();
        c2999dn.f2471dT = KApplication.m13442ib();
        c2999dn.f2470dS = KApplication.m13444hZ();
        c2999dn.f2475iM = aab.m13016dH(aav.m12917pZ());
        c2999dn.product = KApplication.m13445hY();
        c2999dn.f2479ls = aav.m12915qb();
        if (z) {
            c2999dn.f2477it = aab.m13016dH(C3736ux.m1945kT().getGuid());
            c2999dn.f2486nv = aab.m13016dH(C3736ux.m1945kT().getSharkGuid());
        } else {
            c2999dn.f2477it = aab.m13016dH(aav.getGuid());
            c2999dn.f2486nv = aab.m13016dH(aav.getSharkGuid());
        }
        c2999dn.m3904p(KApplication.m13441ic());
        c2999dn.f2482nr = (C3823wb.m1584ne() ? 8 : 0) + 0 + (C3823wb.m1585nd() ? 4 : 0);
        try {
            String[] split = C3952zh.m1312pq().getPackageInfo(context.getPackageName(), 0).versionName.trim().split("[\\.]");
            if (split.length >= 3) {
                i2 = Integer.parseInt(split[0]);
                i = Integer.parseInt(split[1]);
                try {
                    i3 = Integer.parseInt(split[2]);
                } catch (PackageManager.NameNotFoundException e) {
                }
            } else {
                i = 0;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            i = 0;
        }
        c2999dn.f2481nq = new C2848cv();
        c2999dn.f2481nq.f2394fT = i2;
        c2999dn.f2481nq.f2395fU = i;
        c2999dn.f2481nq.f2396fV = i3;
        c2999dn.f2487nw = aab.m13016dH(C3946zb.m1333pi());
        return c2999dn;
    }

    /* renamed from: a */
    public static void m1904a(int i, UniPacket uniPacket, UniPacket uniPacket2) {
        C3749vc.C3751a m1910bc = C3749vc.m1910bc(i);
        if (m1910bc != null) {
            m1903a(i, m1910bc.f3729Ku, m1910bc.f3730Kv, uniPacket, uniPacket2);
        }
    }

    /* renamed from: a */
    public static void m1903a(int i, String str, String str2, UniPacket uniPacket, UniPacket uniPacket2) {
        uniPacket.setEncodeName("UTF-8");
        uniPacket.setRequestId(i);
        uniPacket.setServantName(str);
        uniPacket.setFuncName(str2);
        uniPacket2.setEncodeName("UTF-8");
    }
}
