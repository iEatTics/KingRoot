package com.kingroot.kinguser;

import java.util.List;
/* loaded from: classes.dex */
public class ahk {
    /* renamed from: xg */
    public static boolean m11736xg() {
        aks m11143BP = aks.m11143BP();
        long m11002Ea = m11143BP.m11002Ea();
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(m11002Ea - currentTimeMillis) >= 86400000) {
            m11143BP.m10841bh(currentTimeMillis);
            m11143BP.m10741ez(0);
        }
        return m11143BP.m11001Eb() < 200;
    }

    /* renamed from: xh */
    public static void m11735xh() {
        aks m11143BP = aks.m11143BP();
        m11143BP.m10741ez(m11143BP.m11001Eb() + 1);
    }

    /* renamed from: e */
    public static void m11740e(int i, List<Object> list) {
        ady.m12308tK().mo1748a(100129, i, list, true);
    }

    /* renamed from: f */
    public static void m11739f(int i, List<Object> list) {
        ady.m12308tK().mo1748a(100130, i, list, true);
    }

    /* renamed from: al */
    public static void m11742al(List<Object> list) {
        if (m11736xg()) {
            m11735xh();
            ady.m12308tK().mo1748a(100133, 0, list, true);
        }
    }

    /* renamed from: aJ */
    public static void m11743aJ(boolean z) {
        ady.m12308tK().mo1748a(100131, z ? 0 : 1, (List<Object>) null, true);
    }

    /* renamed from: g */
    public static void m11738g(int i, List<Object> list) {
        ady.m12308tK().mo1748a(100134, i, list, true);
    }

    /* renamed from: am */
    public static void m11741am(List<Object> list) {
        if (m11736xg()) {
            m11735xh();
            ady.m12308tK().mo1748a(100135, 1, list, true);
        }
    }

    /* renamed from: a */
    public static void m11745a(int i, List<Object> list, List<Object> list2) {
        if (m11736xg()) {
            m11735xh();
            ady.m12308tK().mo1748a(100136, i, list, true);
            ady.m12308tK().mo1748a(100643, i, list2, true);
        }
    }

    /* renamed from: a */
    public static void m11744a(boolean z, List<Object> list) {
        if (m11736xg()) {
            m11735xh();
            ady.m12308tK().mo1748a(100137, z ? 0 : 1, list, true);
        }
    }

    /* renamed from: h */
    public static void m11737h(int i, List<Object> list) {
        ady.m12308tK().mo1748a(100142, i, list, false);
    }
}
