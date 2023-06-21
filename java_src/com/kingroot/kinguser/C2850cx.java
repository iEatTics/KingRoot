package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cx */
/* loaded from: classes.dex */
public final class C2850cx extends JceStruct {

    /* renamed from: lP */
    public int f2400lP = 0;

    /* renamed from: mE */
    public int f2401mE = 0;

    /* renamed from: mF */
    public int f2402mF = 0;

    /* renamed from: mH */
    public int f2403mH = 0;

    /* renamed from: mI */
    public String f2404mI = "";

    /* renamed from: mJ */
    public String f2405mJ = "";

    /* renamed from: mK */
    public String f2406mK = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2400lP, 0);
        jceOutputStream.write(this.f2401mE, 1);
        jceOutputStream.write(this.f2402mF, 2);
        if (this.f2403mH != 0) {
            jceOutputStream.write(this.f2403mH, 3);
        }
        if (this.f2404mI != null) {
            jceOutputStream.write(this.f2404mI, 4);
        }
        if (this.f2405mJ != null) {
            jceOutputStream.write(this.f2405mJ, 5);
        }
        if (this.f2406mK != null) {
            jceOutputStream.write(this.f2406mK, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2400lP = jceInputStream.read(this.f2400lP, 0, true);
        this.f2401mE = jceInputStream.read(this.f2401mE, 1, true);
        this.f2402mF = jceInputStream.read(this.f2402mF, 2, true);
        this.f2403mH = jceInputStream.read(this.f2403mH, 3, false);
        this.f2404mI = jceInputStream.readString(4, false);
        this.f2405mJ = jceInputStream.readString(5, false);
        this.f2406mK = jceInputStream.readString(6, false);
    }
}
