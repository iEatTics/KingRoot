package com.kingroot.kinguser;

import java.util.Random;
/* loaded from: classes.dex */
public class bcu {
    /* renamed from: Yk */
    public static long m7576Yk() {
        m7575Yl();
        return m7574Ym();
    }

    /* renamed from: Yl */
    private static void m7575Yl() {
        aks m11143BP = aks.m11143BP();
        if (m11143BP.m10944Fg() == 0) {
            m11143BP.m10813bv(System.currentTimeMillis());
        }
    }

    /* renamed from: Ym */
    private static long m7574Ym() {
        long currentTimeMillis = System.currentTimeMillis();
        aks m11143BP = aks.m11143BP();
        long m10944Fg = m11143BP.m10944Fg();
        if (currentTimeMillis >= m11143BP.m10943Fh() + m10944Fg) {
            m11143BP.m10813bv(currentTimeMillis);
            m11143BP.m10811bw(m7573Yn());
            return currentTimeMillis;
        }
        return m10944Fg;
    }

    /* renamed from: Yn */
    private static long m7573Yn() {
        return m7572ag(120, 720) * 3600000;
    }

    /* renamed from: ag */
    private static int m7572ag(int i, int i2) {
        return new Random().nextInt((i2 - i) + 1) + i;
    }
}
