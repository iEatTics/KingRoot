package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.List;
/* renamed from: com.kingroot.kinguser.vz */
/* loaded from: classes.dex */
public class C3819vz {

    /* renamed from: Mr */
    private InterfaceC3815vx f3844Mr = new C3816vy(C3636tj.m2169ge());
    private static final String TAG = cbx.bWU + C3819vz.class.getSimpleName();

    /* renamed from: Mq */
    private static volatile C3819vz f3843Mq = null;

    private C3819vz() {
    }

    /* renamed from: mQ */
    public static C3819vz m1607mQ() {
        if (!m1606mR()) {
            throw new RuntimeException("must be call in Service Process");
        }
        if (f3843Mq == null) {
            synchronized (C3819vz.class) {
                if (f3843Mq == null) {
                    f3843Mq = new C3819vz();
                }
            }
        }
        return f3843Mq;
    }

    /* renamed from: mR */
    private static boolean m1606mR() {
        return KApplication.m13450hT() == 2;
    }

    /* renamed from: J */
    public void m1619J(long j) {
        this.f3844Mr.mo1622w(2, String.valueOf(j));
    }

    /* renamed from: K */
    public void m1618K(long j) {
        this.f3844Mr.mo1622w(3, String.valueOf(j));
    }

    /* renamed from: mS */
    public void m1605mS() {
        this.f3844Mr.mo1622w(6, "1");
    }

    /* renamed from: mT */
    public void m1604mT() {
        this.f3844Mr.mo1622w(7, "1");
    }

    /* renamed from: mU */
    public void m1603mU() {
        this.f3844Mr.mo1622w(8, "1");
    }

    /* renamed from: mV */
    public void m1602mV() {
        this.f3844Mr.mo1622w(9, "1");
    }

    /* renamed from: L */
    public void m1617L(long j) {
        this.f3844Mr.mo1622w(10, String.valueOf(j));
    }

    /* renamed from: e */
    public void m1608e(String str, long j) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            List<String> mo1626b = this.f3844Mr.mo1626b(currentTimeMillis, 11);
            if (mo1626b == null || mo1626b.size() < 1) {
                this.f3844Mr.mo1622w(11, str + ";" + j);
            } else if (Long.parseLong(mo1626b.get(0).split(";")[1]) < j) {
                this.f3844Mr.mo1629a(currentTimeMillis, 11, String.valueOf(str + ";" + j));
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: mW */
    public void m1601mW() {
        this.f3844Mr.mo1622w(12, "1");
    }

    /* renamed from: mX */
    public void m1600mX() {
        this.f3844Mr.mo1622w(13, "1");
    }

    /* renamed from: M */
    public void m1616M(long j) {
        this.f3844Mr.mo1622w(1, String.valueOf(j));
    }

    /* renamed from: b */
    public void m1611b(double d) {
        this.f3844Mr.mo1622w(4, String.valueOf(d));
    }

    /* renamed from: N */
    public void m1615N(long j) {
        this.f3844Mr.mo1622w(14, String.valueOf(j));
    }

    /* renamed from: x */
    private void m1598x(int i, int i2) {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            List<String> mo1626b = this.f3844Mr.mo1626b(currentTimeMillis, i);
            if (mo1626b == null || mo1626b.size() < 1) {
                this.f3844Mr.mo1622w(i, String.valueOf(i2));
            } else if (Integer.parseInt(mo1626b.get(0)) < i2) {
                this.f3844Mr.mo1629a(currentTimeMillis, i, String.valueOf(i2));
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: bC */
    public void m1610bC(int i) {
        m1598x(15, i);
    }

    /* renamed from: bD */
    public void m1609bD(int i) {
        m1598x(16, i);
    }

    /* renamed from: mY */
    public void m1599mY() {
        this.f3844Mr.mo1622w(17, "1");
    }

    /* renamed from: a */
    public void m1612a(String str, int i, long j, int i2) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = str + "|" + i + "|" + j;
            if (i2 == 1) {
                this.f3844Mr.mo1622w(5, str2);
            } else if (i2 == 2) {
                this.f3844Mr.mo1621x(5, str2);
            }
        }
    }

    /* renamed from: O */
    public boolean m1614O(long j) {
        this.f3844Mr.mo1630I(j);
        return true;
    }

    /* renamed from: P */
    public List<C2854da> m1613P(long j) {
        return this.f3844Mr.mo1631H(j);
    }
}
