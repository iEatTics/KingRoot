package com.kingroot.kinguser;

import com.kingroot.common.utils.system.ProcessUtils;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vw */
/* loaded from: classes.dex */
public class C3814vw {

    /* renamed from: LH */
    private List<Long> f3809LH;

    /* renamed from: LI */
    private List<Long> f3810LI;

    /* renamed from: LJ */
    private List<Long> f3811LJ;

    /* renamed from: LK */
    private List<Double> f3812LK;

    /* renamed from: LL */
    private List<String> f3813LL;

    /* renamed from: LM */
    private long f3814LM = 0;

    /* renamed from: LN */
    private long f3815LN = 0;

    /* renamed from: LO */
    private long f3816LO = 0;

    /* renamed from: LP */
    private long f3817LP = 0;

    /* renamed from: LQ */
    private double f3818LQ = 0.0d;

    /* renamed from: LR */
    private int f3819LR = 0;

    /* renamed from: LS */
    private long f3820LS = 0;

    /* renamed from: LT */
    private int f3821LT = 0;

    /* renamed from: LU */
    private String f3822LU = null;

    /* renamed from: LV */
    private long f3823LV = 0;

    /* renamed from: LW */
    private long f3824LW = 0;

    /* renamed from: LX */
    private int f3825LX = 0;

    /* renamed from: LY */
    private int f3826LY = 0;

    /* renamed from: LZ */
    private String f3827LZ = null;

    /* renamed from: Ma */
    private long f3828Ma = 0;

    /* renamed from: Mb */
    private long f3829Mb = 0;

    /* renamed from: Mc */
    private long f3830Mc = 0;

    /* renamed from: Md */
    private int f3831Md = 0;

    /* renamed from: Me */
    private int f3832Me = 0;

    /* renamed from: Mf */
    private int f3833Mf = 0;

    /* renamed from: Mg */
    private double f3834Mg = 0.0d;

    /* renamed from: Mh */
    private int f3835Mh = 0;

    /* renamed from: Mi */
    private int f3836Mi = 0;

    public C3814vw() {
        this.f3809LH = null;
        this.f3810LI = null;
        this.f3811LJ = null;
        this.f3812LK = null;
        this.f3813LL = null;
        this.f3809LH = new ArrayList();
        this.f3811LJ = new ArrayList();
        this.f3810LI = new ArrayList();
        this.f3812LK = new ArrayList();
        this.f3813LL = new ArrayList();
    }

    /* renamed from: A */
    public void m1661A(long j) {
        this.f3809LH.add(Long.valueOf(j));
    }

    /* renamed from: B */
    public void m1660B(long j) {
        this.f3810LI.add(Long.valueOf(j));
    }

    /* renamed from: C */
    public void m1659C(long j) {
        this.f3811LJ.add(Long.valueOf(j));
    }

    /* renamed from: a */
    public void m1651a(double d) {
        this.f3812LK.add(Double.valueOf(d));
    }

    /* renamed from: dl */
    public void m1641dl(String str) {
        this.f3813LL.add(str);
    }

    /* renamed from: D */
    public void m1658D(long j) {
        this.f3814LM = j;
    }

    /* renamed from: mH */
    public long m1639mH() {
        return this.f3814LM;
    }

    /* renamed from: bs */
    public void m1649bs(int i) {
        this.f3819LR += i;
    }

    /* renamed from: E */
    public void m1657E(long j) {
        this.f3820LS += j;
    }

    /* renamed from: bt */
    public void m1648bt(int i) {
        this.f3821LT = i;
    }

    /* renamed from: dm */
    public void m1640dm(String str) {
        this.f3822LU = str;
    }

    /* renamed from: F */
    public void m1656F(long j) {
        this.f3823LV = j;
    }

    /* renamed from: G */
    public void m1654G(long j) {
        this.f3824LW += j;
    }

    /* renamed from: bu */
    public void m1647bu(int i) {
        this.f3825LX += i;
    }

    /* renamed from: bv */
    public void m1646bv(int i) {
        this.f3826LY += i;
    }

    /* renamed from: bw */
    public void m1645bw(int i) {
        this.f3831Md += i;
    }

    /* renamed from: bx */
    public void m1644bx(int i) {
        this.f3832Me += i;
    }

    /* renamed from: by */
    public void m1643by(int i) {
        this.f3833Mf = i;
    }

    /* renamed from: bz */
    public void m1642bz(int i) {
        this.f3835Mh += i;
    }

    /* renamed from: bA */
    public void m1650bA(int i) {
        this.f3836Mi += i;
    }

    /* renamed from: mI */
    public long m1638mI() {
        if (C3942yy.m1352c(this.f3810LI)) {
            return 0L;
        }
        Collections.sort(this.f3810LI);
        return this.f3810LI.get(this.f3810LI.size() - 1).longValue();
    }

    /* renamed from: mJ */
    private long m1637mJ() {
        if (C3942yy.m1352c(this.f3810LI)) {
            return 0L;
        }
        Collections.sort(this.f3810LI);
        return this.f3810LI.get(0).longValue();
    }

    /* renamed from: F */
    private long m1655F(List<Long> list) {
        long j = 0;
        if (list == null || list.size() == 0) {
            return 0L;
        }
        Iterator<Long> it = list.iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                j = it.next().longValue() + j2;
            } else {
                return j2 / list.size();
            }
        }
    }

    /* renamed from: mK */
    private long m1636mK() {
        if (C3942yy.m1352c(this.f3809LH)) {
            return 0L;
        }
        Collections.sort(this.f3809LH);
        return this.f3809LH.get(this.f3809LH.size() - 1).longValue();
    }

    /* renamed from: mL */
    private long m1635mL() {
        if (C3942yy.m1352c(this.f3809LH)) {
            return 0L;
        }
        Collections.sort(this.f3809LH);
        return this.f3809LH.get(0).longValue();
    }

    /* renamed from: mM */
    private double m1634mM() {
        double d = 0.0d;
        if (this.f3812LK == null || this.f3812LK.size() == 0) {
            return 0.0d;
        }
        Iterator<Double> it = this.f3812LK.iterator();
        while (true) {
            double d2 = d;
            if (it.hasNext()) {
                d = it.next().doubleValue() + d2;
            } else {
                return d2 / this.f3812LK.size();
            }
        }
    }

    /* renamed from: G */
    private long m1653G(List<Long> list) {
        long j = 0;
        if (list.size() == 0) {
            return 0L;
        }
        Iterator<Long> it = list.iterator();
        while (true) {
            long j2 = j;
            if (it.hasNext()) {
                j = it.next().longValue() + j2;
            } else {
                return j2 / list.size();
            }
        }
    }

    /* renamed from: H */
    private double m1652H(List<Long> list) {
        Iterator<Long> it;
        double d;
        if (list.size() == 0) {
            return 0.0d;
        }
        double d2 = 0.0d;
        while (true) {
            d = d2;
            if (!list.iterator().hasNext()) {
                break;
            }
            d2 = it.next().longValue() + d;
        }
        double size = d / list.size();
        double d3 = 0.0d;
        for (Long l : list) {
            d3 = ((Long.valueOf(l.longValue() / 1024).longValue() - (size / 1024.0d)) * ((l.longValue() / 1024) - (size / 1024.0d))) + d3;
        }
        return new BigDecimal(d3 / list.size()).setScale(4, 4).doubleValue();
    }

    /* renamed from: mN */
    private String m1633mN() {
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = this.f3813LL.iterator();
        while (it.hasNext()) {
            String[] m13020L = aab.m13020L(it.next(), "|");
            if (m13020L != null && m13020L.length >= 2) {
                if (Integer.valueOf(m13020L[1]).intValue() != ProcessUtils.m13143ej(C3636tj.getPackageName() + ":task")) {
                    it.remove();
                } else {
                    sb.append(m13020L[0] + " ");
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: mO */
    public String[] m1632mO() {
        this.f3815LN = m1636mK();
        this.f3816LO = m1635mL();
        this.f3817LP = m1653G(this.f3809LH);
        this.f3818LQ = m1652H(this.f3809LH);
        this.f3828Ma = m1655F(this.f3811LJ);
        this.f3829Mb = m1638mI();
        this.f3830Mc = m1637mJ();
        this.f3834Mg = m1634mM();
        this.f3827LZ = m1633mN();
        return new String[][]{new String[]{String.valueOf(this.f3814LM * 24 * 3600 * 1000), String.valueOf(this.f3815LN), String.valueOf(this.f3816LO), String.valueOf(this.f3817LP), String.valueOf(this.f3818LQ), String.valueOf(this.f3819LR), String.valueOf(this.f3820LS), String.valueOf(this.f3821LT), String.valueOf(this.f3822LU), String.valueOf(this.f3823LV), String.valueOf(this.f3824LW), String.valueOf(this.f3825LX), String.valueOf(this.f3826LY), String.valueOf(this.f3827LZ), String.valueOf(this.f3828Ma), String.valueOf(this.f3829Mb), String.valueOf(this.f3830Mc), String.valueOf(this.f3831Md), String.valueOf(this.f3832Me), String.valueOf(this.f3833Mf), String.valueOf(this.f3834Mg), String.valueOf(this.f3835Mh), String.valueOf(this.f3836Mi)}}[0];
    }

    public String toString() {
        return "";
    }
}
