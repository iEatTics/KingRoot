package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import com.kingroot.kinguser.C3325ms;
/* renamed from: com.king.uranus.n */
/* loaded from: classes.dex */
public final class C0419n extends AbstractC0404cS implements Cloneable {

    /* renamed from: wd */
    static final /* synthetic */ boolean f383wd;

    /* renamed from: i */
    public String f390i = "";

    /* renamed from: j */
    public String f391j = "";

    /* renamed from: k */
    public String f392k = "";

    /* renamed from: aX */
    public String f384aX = "";

    /* renamed from: x */
    public String f393x = "";

    /* renamed from: aY */
    public int f385aY = 0;

    /* renamed from: aZ */
    public String f386aZ = "";

    /* renamed from: ba */
    public String f387ba = "";

    /* renamed from: bb */
    public String f388bb = "";

    /* renamed from: bc */
    public String f389bc = "";

    static {
        f383wd = !C0419n.class.desiredAssertionStatus();
    }

    /* renamed from: a */
    public void m13644a(String str) {
        this.f390i = str;
    }

    /* renamed from: b */
    public void m13643b(String str) {
        this.f391j = str;
    }

    /* renamed from: c */
    public void m13642c(String str) {
        this.f392k = str;
    }

    /* renamed from: d */
    public void m13641d(String str) {
        this.f384aX = str;
    }

    /* renamed from: e */
    public void m13640e(String str) {
        this.f393x = str;
    }

    /* renamed from: a */
    public void m13645a(int i) {
        this.f385aY = i;
    }

    /* renamed from: f */
    public void m13639f(String str) {
        this.f386aZ = str;
    }

    /* renamed from: g */
    public void m13638g(String str) {
        this.f387ba = str;
    }

    /* renamed from: h */
    public void m13637h(String str) {
        this.f388bb = str;
    }

    /* renamed from: i */
    public void m13636i(String str) {
        this.f389bc = str;
    }

    public C0419n() {
        m13644a(this.f390i);
        m13643b(this.f391j);
        m13642c(this.f392k);
        m13641d(this.f384aX);
        m13640e(this.f393x);
        m13645a(this.f385aY);
        m13639f(this.f386aZ);
        m13638g(this.f387ba);
        m13637h(this.f388bb);
        m13636i(this.f389bc);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C0419n c0419n = (C0419n) obj;
        return C3325ms.equals(this.f390i, c0419n.f390i) && C3325ms.equals(this.f391j, c0419n.f391j) && C3325ms.equals(this.f392k, c0419n.f392k) && C3325ms.equals(this.f384aX, c0419n.f384aX) && C3325ms.equals(this.f393x, c0419n.f393x) && C3325ms.equals(this.f385aY, c0419n.f385aY) && C3325ms.equals(this.f386aZ, c0419n.f386aZ) && C3325ms.equals(this.f387ba, c0419n.f387ba) && C3325ms.equals(this.f388bb, c0419n.f388bb) && C3325ms.equals(this.f389bc, c0419n.f389bc);
    }

    public int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f383wd) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f390i, 0);
        if (this.f391j != null) {
            c3324mr.m2981f(this.f391j, 1);
        }
        if (this.f392k != null) {
            c3324mr.m2981f(this.f392k, 2);
        }
        if (this.f384aX != null) {
            c3324mr.m2981f(this.f384aX, 3);
        }
        if (this.f393x != null) {
            c3324mr.m2981f(this.f393x, 4);
        }
        c3324mr.m2983e(this.f385aY, 5);
        if (this.f386aZ != null) {
            c3324mr.m2981f(this.f386aZ, 6);
        }
        if (this.f387ba != null) {
            c3324mr.m2981f(this.f387ba, 7);
        }
        if (this.f388bb != null) {
            c3324mr.m2981f(this.f388bb, 8);
        }
        if (this.f389bc != null) {
            c3324mr.m2981f(this.f389bc, 9);
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        m13644a(c3322mq.m3013b(0, true));
        m13643b(c3322mq.m3013b(1, false));
        m13642c(c3322mq.m3013b(2, false));
        m13641d(c3322mq.m3013b(3, false));
        m13640e(c3322mq.m3013b(4, false));
        m13645a(c3322mq.m3032a(this.f385aY, 5, false));
        m13639f(c3322mq.m3013b(6, false));
        m13638g(c3322mq.m3013b(7, false));
        m13637h(c3322mq.m3013b(8, false));
        m13636i(c3322mq.m3013b(9, false));
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
