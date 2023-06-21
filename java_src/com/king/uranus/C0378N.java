package com.king.uranus;

import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.kinguser.C3183ih;
import com.kingroot.kinguser.C3208jc;
import com.kingroot.kinguser.C3339nd;
import com.kingroot.kinguser.InterfaceC3282ln;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.king.uranus.N */
/* loaded from: classes.dex */
public class C0378N {
    /* renamed from: bh */
    private static InterfaceC3282ln m13693bh() {
        return (InterfaceC3282ln) C3183ih.m3501a(InterfaceC3282ln.class);
    }

    /* renamed from: j */
    private static String m13690j() {
        return C3183ih.m3497bW().m3552bG();
    }

    /* renamed from: bi */
    public static synchronized void m13692bi() {
        synchronized (C0378N.class) {
            m13689j(m13691bj());
        }
    }

    /* renamed from: a */
    public static synchronized void m13696a(C0416k c0416k) {
        synchronized (C0378N.class) {
            List<C0416k> m13691bj = m13691bj();
            m13691bj.add(c0416k);
            m13689j(m13691bj);
        }
    }

    /* renamed from: j */
    private static void m13689j(List<C0416k> list) {
        ArrayList arrayList = new ArrayList();
        for (C0416k c0416k : list) {
            if (m13694b(c0416k)) {
                if (C3208jc.m3439a(C3183ih.getContext(), c0416k, C3339nd.m2917eY()) != 0) {
                    m13695a(c0416k.f372aL, false);
                    arrayList.add(c0416k);
                } else {
                    m13695a(c0416k.f372aL, true);
                }
            }
        }
        m13688k(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000a  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m13695a(List<C0415j> list, boolean z) {
        for (C0415j c0415j : list) {
            String str = "";
            try {
                str = "" + c0415j.f365aG.get(0).f355ax + ":" + c0415j.f365aG.get(0).f354av;
            } catch (Exception e) {
            }
            String str2 = "upload { " + (z ? RootConst.KEY_VT_SUCCESS : "failed") + " } tipsId [ " + c0415j.f370f + " ] res : [ " + c0415j.f369ax + " ] phase : [ " + c0415j.f366aH + " ] cmdres : [ " + str + " ]";
            if (z) {
            }
            while (r3.hasNext()) {
            }
        }
    }

    /* renamed from: k */
    private static void m13688k(List<C0416k> list) {
        ArrayList arrayList;
        String str = m13690j() + File.separator + "uranus_clres.dat";
        ArrayList arrayList2 = null;
        if (list != null) {
            for (C0416k c0416k : list) {
                C0381c m13682c = C0381c.m13682c(c0416k);
                if (m13682c != null) {
                    arrayList = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList.add(m13682c);
                } else {
                    arrayList = arrayList2;
                }
                arrayList2 = arrayList;
            }
        }
        if (arrayList2 != null) {
            try {
                if (arrayList2.size() >= 1) {
                    m13693bh().mo3141c(str, arrayList2);
                }
            } catch (Throwable th) {
                return;
            }
        }
        new File(str).delete();
    }

    /* renamed from: bj */
    private static List<C0416k> m13691bj() {
        String str = m13690j() + File.separator + "uranus_clres.dat";
        ArrayList arrayList = new ArrayList();
        try {
            List<C0381c> list = (List) m13693bh().mo3142bd(str);
            if (list != null) {
                for (C0381c c0381c : list) {
                    arrayList.add(c0381c.m13683bm());
                }
            }
        } catch (Throwable th) {
        }
        return arrayList;
    }

    /* renamed from: b */
    private static boolean m13694b(C0416k c0416k) {
        boolean z;
        boolean z2 = false;
        if (c0416k != null && c0416k.f372aL != null) {
            int currentTimeMillis = (int) (System.currentTimeMillis() / 1000);
            int size = c0416k.f372aL.size() - 1;
            while (size >= 0) {
                C0415j c0415j = c0416k.f372aL.get(size);
                if (c0415j == null || currentTimeMillis - c0415j.f368aJ > 604800) {
                    c0416k.f372aL.remove(size);
                    z = z2;
                } else {
                    z = true;
                }
                size--;
                z2 = z;
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.king.uranus.N$c */
    /* loaded from: classes.dex */
    public static class C0381c implements Serializable {

        /* renamed from: cB */
        List<C0380b> f215cB = null;

        private C0381c() {
        }

        /* renamed from: c */
        static C0381c m13682c(C0416k c0416k) {
            if (c0416k == null) {
                return null;
            }
            C0381c c0381c = new C0381c();
            if (c0416k.f372aL == null) {
                return c0381c;
            }
            c0381c.f215cB = new ArrayList();
            Iterator<C0415j> it = c0416k.f372aL.iterator();
            while (it.hasNext()) {
                C0380b m13685a = C0380b.m13685a(it.next());
                if (m13685a != null) {
                    c0381c.f215cB.add(m13685a);
                }
            }
            return c0381c;
        }

        /* renamed from: bm */
        C0416k m13683bm() {
            C0416k c0416k = new C0416k();
            if (this.f215cB != null) {
                c0416k.f372aL = new ArrayList<>();
                for (C0380b c0380b : this.f215cB) {
                    c0416k.f372aL.add(c0380b.m13684bl());
                }
            }
            return c0416k;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.king.uranus.N$b */
    /* loaded from: classes.dex */
    public static class C0380b implements Serializable {

        /* renamed from: f */
        String f214f = "";
        int action = 0;

        /* renamed from: ax */
        int f212ax = 0;

        /* renamed from: cA */
        List<C0379a> f213cA = null;

        /* renamed from: aH */
        int f209aH = 0;

        /* renamed from: aI */
        int f210aI = 0;

        /* renamed from: aJ */
        int f211aJ = 0;

        private C0380b() {
        }

        /* renamed from: a */
        static C0380b m13685a(C0415j c0415j) {
            if (c0415j == null) {
                return null;
            }
            C0380b c0380b = new C0380b();
            c0380b.f214f = c0415j.f370f;
            c0380b.action = c0415j.action;
            c0380b.f212ax = c0415j.f369ax;
            c0380b.f209aH = c0415j.f366aH;
            c0380b.f210aI = c0415j.f367aI;
            c0380b.f211aJ = c0415j.f368aJ;
            if (c0415j.f365aG == null) {
                return c0380b;
            }
            c0380b.f213cA = new ArrayList();
            Iterator<C0413h> it = c0415j.f365aG.iterator();
            while (it.hasNext()) {
                C0379a m13687a = C0379a.m13687a(it.next());
                if (m13687a != null) {
                    c0380b.f213cA.add(m13687a);
                }
            }
            return c0380b;
        }

        /* renamed from: bl */
        C0415j m13684bl() {
            C0415j c0415j = new C0415j();
            c0415j.f370f = this.f214f;
            c0415j.action = this.action;
            c0415j.f369ax = this.f212ax;
            c0415j.f366aH = this.f209aH;
            c0415j.f367aI = this.f210aI;
            c0415j.f368aJ = this.f211aJ;
            if (this.f213cA != null) {
                c0415j.f365aG = new ArrayList<>();
                for (C0379a c0379a : this.f213cA) {
                    c0415j.f365aG.add(c0379a.m13686bk());
                }
            }
            return c0415j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.king.uranus.N$a */
    /* loaded from: classes.dex */
    public static class C0379a implements Serializable {

        /* renamed from: av */
        int f207av = 0;

        /* renamed from: ax */
        int f208ax = 0;

        private C0379a() {
        }

        /* renamed from: a */
        static C0379a m13687a(C0413h c0413h) {
            if (c0413h == null) {
                return null;
            }
            C0379a c0379a = new C0379a();
            c0379a.f207av = c0413h.f354av;
            c0379a.f208ax = c0413h.f355ax;
            return c0379a;
        }

        /* renamed from: bk */
        C0413h m13686bk() {
            C0413h c0413h = new C0413h();
            c0413h.f354av = this.f207av;
            c0413h.f355ax = this.f208ax;
            return c0413h;
        }
    }
}
