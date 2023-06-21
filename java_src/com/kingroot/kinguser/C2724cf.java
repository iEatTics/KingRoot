package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cf */
/* loaded from: classes.dex */
public final class C2724cf extends JceStruct implements Cloneable {

    /* renamed from: lI */
    static byte[] f2297lI;
    public int valueType = 0;

    /* renamed from: lD */
    public int f2300lD = 0;

    /* renamed from: i */
    public int f2299i = 0;

    /* renamed from: lE */
    public long f2301lE = 0;

    /* renamed from: lF */
    public String f2302lF = "";

    /* renamed from: lG */
    public byte[] f2303lG = null;

    /* renamed from: bl */
    public boolean f2298bl = false;

    /* renamed from: lH */
    public short f2304lH = 0;

    /* renamed from: h */
    public void m4667h(int i) {
        this.valueType = i;
    }

    /* renamed from: i */
    public void m4666i(int i) {
        this.f2300lD = i;
    }

    /* renamed from: j */
    public void m4665j(int i) {
        this.f2299i = i;
    }

    /* renamed from: l */
    public void m4664l(long j) {
        this.f2301lE = j;
    }

    /* renamed from: F */
    public void m4671F(String str) {
        this.f2302lF = str;
    }

    /* renamed from: f */
    public void m4668f(byte[] bArr) {
        this.f2303lG = bArr;
    }

    /* renamed from: e */
    public void m4669e(boolean z) {
        this.f2298bl = z;
    }

    /* renamed from: a */
    public void m4670a(short s) {
        this.f2304lH = s;
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.valueType != 0) {
            jceOutputStream.write(this.valueType, 0);
        }
        if (this.f2300lD != 0) {
            jceOutputStream.write(this.f2300lD, 1);
        }
        if (this.f2299i != 0) {
            jceOutputStream.write(this.f2299i, 2);
        }
        if (this.f2301lE != 0) {
            jceOutputStream.write(this.f2301lE, 3);
        }
        if (this.f2302lF != null) {
            jceOutputStream.write(this.f2302lF, 4);
        }
        if (this.f2303lG != null) {
            jceOutputStream.write(this.f2303lG, 5);
        }
        if (this.f2298bl) {
            jceOutputStream.write(this.f2298bl, 6);
        }
        if (this.f2304lH != 0) {
            jceOutputStream.write(this.f2304lH, 7);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.valueType = jceInputStream.read(this.valueType, 0, false);
        this.f2300lD = jceInputStream.read(this.f2300lD, 1, false);
        this.f2299i = jceInputStream.read(this.f2299i, 2, false);
        this.f2301lE = jceInputStream.read(this.f2301lE, 3, false);
        this.f2302lF = jceInputStream.readString(4, false);
        if (f2297lI == null) {
            f2297lI = new byte[1];
            f2297lI[0] = 0;
        }
        this.f2303lG = jceInputStream.read(f2297lI, 5, false);
        this.f2298bl = jceInputStream.read(this.f2298bl, 6, false);
        this.f2304lH = jceInputStream.read(this.f2304lH, 7, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
