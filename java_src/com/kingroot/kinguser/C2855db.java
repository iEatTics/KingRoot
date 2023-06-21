package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.db */
/* loaded from: classes.dex */
public final class C2855db extends JceStruct {

    /* renamed from: mU */
    static C2295bi f2418mU;

    /* renamed from: mV */
    static C2701cc f2419mV;

    /* renamed from: mS */
    public C2295bi f2420mS = null;

    /* renamed from: mT */
    public C2701cc f2421mT = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2420mS != null) {
            jceOutputStream.write((JceStruct) this.f2420mS, 0);
        }
        if (this.f2421mT != null) {
            jceOutputStream.write((JceStruct) this.f2421mT, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2418mU == null) {
            f2418mU = new C2295bi();
        }
        this.f2420mS = (C2295bi) jceInputStream.read((JceStruct) f2418mU, 0, false);
        if (f2419mV == null) {
            f2419mV = new C2701cc();
        }
        this.f2421mT = (C2701cc) jceInputStream.read((JceStruct) f2419mV, 1, false);
    }
}
