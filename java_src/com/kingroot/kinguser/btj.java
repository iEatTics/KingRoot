package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class btj extends JceStruct {

    /* renamed from: n */
    static int f2100n = 0;

    /* renamed from: a */
    public int f2101a = 0;

    /* renamed from: b */
    public String f2102b = "";

    /* renamed from: c */
    public String f2103c = "";

    /* renamed from: d */
    public String f2104d = "";

    /* renamed from: e */
    public String f2105e = "";

    /* renamed from: f */
    public String f2106f = "";

    /* renamed from: g */
    public String f2107g = "";

    /* renamed from: h */
    public String f2108h = "";

    /* renamed from: i */
    public String f2109i = "";

    /* renamed from: j */
    public String f2110j = "";

    /* renamed from: k */
    public String f2111k = "";

    /* renamed from: l */
    public String f2112l = "";

    /* renamed from: m */
    public String f2113m = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2101a = jceInputStream.read(this.f2101a, 0, true);
        this.f2102b = jceInputStream.readString(1, true);
        this.f2103c = jceInputStream.readString(2, true);
        this.f2104d = jceInputStream.readString(3, true);
        this.f2105e = jceInputStream.readString(4, true);
        this.f2106f = jceInputStream.readString(5, true);
        this.f2107g = jceInputStream.readString(6, true);
        this.f2108h = jceInputStream.readString(7, true);
        this.f2109i = jceInputStream.readString(8, false);
        this.f2110j = jceInputStream.readString(9, false);
        this.f2111k = jceInputStream.readString(10, false);
        this.f2112l = jceInputStream.readString(11, false);
        this.f2113m = jceInputStream.readString(12, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2101a, 0);
        jceOutputStream.write(this.f2102b, 1);
        jceOutputStream.write(this.f2103c, 2);
        jceOutputStream.write(this.f2104d, 3);
        jceOutputStream.write(this.f2105e, 4);
        jceOutputStream.write(this.f2106f, 5);
        jceOutputStream.write(this.f2107g, 6);
        jceOutputStream.write(this.f2108h, 7);
        if (this.f2109i != null) {
            jceOutputStream.write(this.f2109i, 8);
        }
        if (this.f2110j != null) {
            jceOutputStream.write(this.f2110j, 9);
        }
        if (this.f2111k != null) {
            jceOutputStream.write(this.f2111k, 10);
        }
        if (this.f2112l != null) {
            jceOutputStream.write(this.f2112l, 11);
        }
        if (this.f2113m != null) {
            jceOutputStream.write(this.f2113m, 12);
        }
    }
}
