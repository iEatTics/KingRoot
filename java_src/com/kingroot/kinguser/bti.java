package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bti extends JceStruct {

    /* renamed from: v */
    static byte[] f2082v;

    /* renamed from: t */
    static int f2081t = 0;
    static byte[] bMX = new byte[1];

    /* renamed from: a */
    public int f2083a = 0;

    /* renamed from: b */
    public String f2084b = "";

    /* renamed from: c */
    public String f2085c = "";

    /* renamed from: d */
    public String f2086d = "";

    /* renamed from: e */
    public String f2087e = "";

    /* renamed from: f */
    public String f2088f = "";

    /* renamed from: g */
    public String f2089g = "";

    /* renamed from: h */
    public String f2090h = "";

    /* renamed from: i */
    public byte[] f2091i = null;

    /* renamed from: j */
    public byte[] f2092j = null;
    public short bMW = 0;

    /* renamed from: l */
    public String f2093l = "";
    public long bGq = 0;

    /* renamed from: n */
    public String f2094n = "";

    /* renamed from: o */
    public String f2095o = "";

    /* renamed from: p */
    public int f2096p = 0;

    /* renamed from: q */
    public String f2097q = "";

    /* renamed from: r */
    public String f2098r = "";

    /* renamed from: s */
    public String f2099s = "";

    static {
        bMX[0] = 0;
        f2082v = new byte[1];
        f2082v[0] = 0;
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2083a = jceInputStream.read(this.f2083a, 0, true);
        this.f2084b = jceInputStream.readString(1, true);
        this.f2085c = jceInputStream.readString(2, true);
        this.f2086d = jceInputStream.readString(3, true);
        this.f2087e = jceInputStream.readString(4, true);
        this.f2088f = jceInputStream.readString(5, true);
        this.f2089g = jceInputStream.readString(6, true);
        this.f2090h = jceInputStream.readString(7, true);
        this.f2091i = jceInputStream.read(bMX, 8, false);
        this.f2092j = jceInputStream.read(f2082v, 9, false);
        this.bMW = jceInputStream.read(this.bMW, 10, false);
        this.f2093l = jceInputStream.readString(11, false);
        this.bGq = jceInputStream.read(this.bGq, 12, false);
        this.f2094n = jceInputStream.readString(13, false);
        this.f2095o = jceInputStream.readString(14, false);
        this.f2096p = jceInputStream.read(this.f2096p, 15, false);
        this.f2097q = jceInputStream.readString(16, false);
        this.f2098r = jceInputStream.readString(17, false);
        this.f2099s = jceInputStream.readString(18, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2083a, 0);
        jceOutputStream.write(this.f2084b, 1);
        jceOutputStream.write(this.f2085c, 2);
        jceOutputStream.write(this.f2086d, 3);
        jceOutputStream.write(this.f2087e, 4);
        jceOutputStream.write(this.f2088f, 5);
        jceOutputStream.write(this.f2089g, 6);
        jceOutputStream.write(this.f2090h, 7);
        if (this.f2091i != null) {
            jceOutputStream.write(this.f2091i, 8);
        }
        if (this.f2092j != null) {
            jceOutputStream.write(this.f2092j, 9);
        }
        jceOutputStream.write(this.bMW, 10);
        if (this.f2093l != null) {
            jceOutputStream.write(this.f2093l, 11);
        }
        jceOutputStream.write(this.bGq, 12);
        if (this.f2094n != null) {
            jceOutputStream.write(this.f2094n, 13);
        }
        if (this.f2095o != null) {
            jceOutputStream.write(this.f2095o, 14);
        }
        jceOutputStream.write(this.f2096p, 15);
        if (this.f2097q != null) {
            jceOutputStream.write(this.f2097q, 16);
        }
        if (this.f2098r != null) {
            jceOutputStream.write(this.f2098r, 17);
        }
        if (this.f2099s != null) {
            jceOutputStream.write(this.f2099s, 18);
        }
    }
}
