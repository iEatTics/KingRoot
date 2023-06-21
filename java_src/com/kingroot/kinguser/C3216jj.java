package com.kingroot.kinguser;

import com.king.uranus.InterfaceC0393bd;
import com.kingroot.kinguser.C3213jh;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.jj */
/* loaded from: classes.dex */
public final class C3216jj {
    static final String TAG = C3216jj.class.getSimpleName();

    private C3216jj() {
    }

    /* renamed from: b */
    public static List<InterfaceC0393bd> m3414b(InterfaceC3153hi interfaceC3153hi) {
        InterfaceC3152hh mo3124aZ = interfaceC3153hi.mo3124aZ();
        ArrayList arrayList = new ArrayList();
        int mo3155aX = mo3124aZ.mo3155aX();
        if (mo3155aX > 0) {
            InterfaceC0393bd m3184af = C3276lh.m3184af(mo3155aX);
            if (m3184af != null) {
                arrayList.add(m3184af);
            }
        } else {
            arrayList.addAll(C3276lh.m3185a((C3286lr) mo3124aZ));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static boolean m3413c(String str, int i) {
        return C3227ju.m3359cK().mo3366a(m3410d(str, i), new C3301mc(), (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class)).mo3339aJ() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: S */
    public static InterfaceC0393bd m3417S(int i) {
        InterfaceC0393bd interfaceC0393bd = null;
        for (int i2 = 0; i2 < 30 && (interfaceC0393bd = C3276lh.m3184af(i)) == null; i2++) {
            try {
                Thread.sleep(100L);
            } catch (InterruptedException e) {
            }
        }
        return interfaceC0393bd;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: aN */
    public static C3248kj m3415aN(String str) {
        return m3410d(str, -1);
    }

    /* renamed from: d */
    static C3248kj m3410d(String str, int i) {
        int mo3136bc;
        InterfaceC3281lm interfaceC3281lm = (InterfaceC3281lm) C3183ih.m3501a(InterfaceC3281lm.class);
        if (i > 0) {
            mo3136bc = interfaceC3281lm.mo3138ai(i);
        } else {
            mo3136bc = interfaceC3281lm.mo3136bc(str);
        }
        return new C3248kj(m3409i(mo3136bc == 64), str, i, C3183ih.m3497bW().m3537bt(), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cv */
    public static C3255kq m3412cv() {
        return m3409i(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cw */
    public static C3255kq m3411cw() {
        return m3409i(true);
    }

    /* renamed from: i */
    private static C3255kq m3409i(boolean z) {
        String m3531bz;
        C3180if m3497bW = C3183ih.m3497bW();
        if (z) {
            m3531bz = m3497bW.m3558bA();
        } else {
            m3531bz = m3497bW.m3531bz();
        }
        String m3212bJ = C3268la.m3208dp().m3212bJ();
        String name = C3276lh.getName();
        C3213jh.C3214a m3425cu = C3213jh.m3425cu();
        m3425cu.m3423aH(m3497bW.getPackageName()).m3422aI(name).m3424R(40).m3421aJ(m3212bJ);
        C3171hz m3547bL = m3497bW.m3547bL();
        if (m3547bL != null) {
            m3416a(m3425cu, m3547bL, z);
        }
        return new C3255kq(m3531bz, "_Z5startiPc", m3497bW.getPackageName(), m3425cu.toString());
    }

    /* renamed from: a */
    private static void m3416a(C3213jh.C3214a c3214a, C3171hz c3171hz, boolean z) {
        String m3273n;
        C3180if m3497bW = C3183ih.m3497bW();
        String m3552bG = m3497bW.m3552bG();
        if (z) {
            m3273n = C3250kl.m3273n(m3552bG, c3171hz.m3589bn());
        } else {
            m3273n = C3250kl.m3273n(m3552bG, c3171hz.getUrl());
        }
        if (c3171hz.m3586bq()) {
            try {
                m3273n = new C3230jw((InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class)).m3354a(m3497bW.getPackageName(), new File(m3273n));
            } catch (FileNotFoundException e) {
            }
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(m3273n);
        ((InterfaceC3157hm) C3183ih.m3501a(InterfaceC3157hm.class)).mo3201h(arrayList);
        c3214a.m3420aK(m3273n).m3419aL(c3171hz.m3588bo()).m3418aM(c3171hz.m3587bp());
    }
}
