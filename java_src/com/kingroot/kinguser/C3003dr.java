package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dr */
/* loaded from: classes.dex */
public final class C3003dr extends JceStruct {

    /* renamed from: nD */
    public String f2498nD = "";

    /* renamed from: nE */
    public String f2499nE = "";

    /* renamed from: nF */
    public int f2500nF = 0;

    /* renamed from: nG */
    public int f2501nG = 0;

    /* renamed from: nH */
    public int f2502nH = 0;

    /* renamed from: nI */
    public int f2503nI = 0;

    /* renamed from: nJ */
    public int f2504nJ = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2498nD, 0);
        jceOutputStream.write(this.f2499nE, 1);
        jceOutputStream.write(this.f2500nF, 2);
        if (this.f2501nG != 0) {
            jceOutputStream.write(this.f2501nG, 3);
        }
        if (this.f2502nH != 0) {
            jceOutputStream.write(this.f2502nH, 4);
        }
        if (this.f2503nI != 0) {
            jceOutputStream.write(this.f2503nI, 5);
        }
        if (this.f2504nJ != 0) {
            jceOutputStream.write(this.f2504nJ, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2498nD = jceInputStream.readString(0, true);
        this.f2499nE = jceInputStream.readString(1, true);
        this.f2500nF = jceInputStream.read(this.f2500nF, 2, false);
        this.f2501nG = jceInputStream.read(this.f2501nG, 3, false);
        this.f2502nH = jceInputStream.read(this.f2502nH, 4, false);
        this.f2503nI = jceInputStream.read(this.f2503nI, 5, false);
        this.f2504nJ = jceInputStream.read(this.f2504nJ, 6, false);
    }
}
