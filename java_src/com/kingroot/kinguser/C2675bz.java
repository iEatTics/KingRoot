package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.bz */
/* loaded from: classes.dex */
public final class C2675bz extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2173lo;

    /* renamed from: iE */
    public String f2174iE = "";

    /* renamed from: iF */
    public String f2175iF = "";

    /* renamed from: iG */
    public String f2176iG = "";

    /* renamed from: lr */
    public String f2179lr = "";

    /* renamed from: iO */
    public String f2177iO = "";

    /* renamed from: ls */
    public int f2180ls = 0;

    /* renamed from: ko */
    public String f2178ko = "";

    /* renamed from: lt */
    public String f2181lt = "";

    /* renamed from: lu */
    public String f2182lu = "";

    /* renamed from: lv */
    public String f2183lv = "";

    static {
        f2173lo = !C2675bz.class.desiredAssertionStatus();
    }

    /* renamed from: v */
    public void m5156v(String str) {
        this.f2174iE = str;
    }

    /* renamed from: w */
    public void m5155w(String str) {
        this.f2175iF = str;
    }

    /* renamed from: x */
    public void m5154x(String str) {
        this.f2176iG = str;
    }

    /* renamed from: y */
    public void m5153y(String str) {
        this.f2179lr = str;
    }

    /* renamed from: z */
    public void m5152z(String str) {
        this.f2177iO = str;
    }

    /* renamed from: g */
    public void m5157g(int i) {
        this.f2180ls = i;
    }

    /* renamed from: A */
    public void m5161A(String str) {
        this.f2178ko = str;
    }

    /* renamed from: B */
    public void m5160B(String str) {
        this.f2181lt = str;
    }

    /* renamed from: C */
    public void m5159C(String str) {
        this.f2182lu = str;
    }

    /* renamed from: D */
    public void m5158D(String str) {
        this.f2183lv = str;
    }

    public C2675bz() {
        m5156v(this.f2174iE);
        m5155w(this.f2175iF);
        m5154x(this.f2176iG);
        m5153y(this.f2179lr);
        m5152z(this.f2177iO);
        m5157g(this.f2180ls);
        m5161A(this.f2178ko);
        m5160B(this.f2181lt);
        m5159C(this.f2182lu);
        m5158D(this.f2183lv);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2675bz c2675bz = (C2675bz) obj;
        return JceUtil.equals(this.f2174iE, c2675bz.f2174iE) && JceUtil.equals(this.f2175iF, c2675bz.f2175iF) && JceUtil.equals(this.f2176iG, c2675bz.f2176iG) && JceUtil.equals(this.f2179lr, c2675bz.f2179lr) && JceUtil.equals(this.f2177iO, c2675bz.f2177iO) && JceUtil.equals(this.f2180ls, c2675bz.f2180ls) && JceUtil.equals(this.f2178ko, c2675bz.f2178ko) && JceUtil.equals(this.f2181lt, c2675bz.f2181lt) && JceUtil.equals(this.f2182lu, c2675bz.f2182lu) && JceUtil.equals(this.f2183lv, c2675bz.f2183lv);
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
            if (f2173lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2174iE, 0);
        if (this.f2175iF != null) {
            jceOutputStream.write(this.f2175iF, 1);
        }
        if (this.f2176iG != null) {
            jceOutputStream.write(this.f2176iG, 2);
        }
        if (this.f2179lr != null) {
            jceOutputStream.write(this.f2179lr, 3);
        }
        if (this.f2177iO != null) {
            jceOutputStream.write(this.f2177iO, 4);
        }
        jceOutputStream.write(this.f2180ls, 5);
        if (this.f2178ko != null) {
            jceOutputStream.write(this.f2178ko, 6);
        }
        if (this.f2181lt != null) {
            jceOutputStream.write(this.f2181lt, 7);
        }
        if (this.f2182lu != null) {
            jceOutputStream.write(this.f2182lu, 8);
        }
        if (this.f2183lv != null) {
            jceOutputStream.write(this.f2183lv, 9);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m5156v(jceInputStream.readString(0, true));
        m5155w(jceInputStream.readString(1, false));
        m5154x(jceInputStream.readString(2, false));
        m5153y(jceInputStream.readString(3, false));
        m5152z(jceInputStream.readString(4, false));
        m5157g(jceInputStream.read(this.f2180ls, 5, false));
        m5161A(jceInputStream.readString(6, false));
        m5160B(jceInputStream.readString(7, false));
        m5159C(jceInputStream.readString(8, false));
        m5158D(jceInputStream.readString(9, false));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
