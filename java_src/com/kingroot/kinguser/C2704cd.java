package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cd */
/* loaded from: classes.dex */
public final class C2704cd extends JceStruct {

    /* renamed from: lA */
    static C2850cx f2258lA;

    /* renamed from: lB */
    static C2705ce f2259lB;
    public long time = 0;

    /* renamed from: ly */
    public C2850cx f2260ly = null;

    /* renamed from: lz */
    public C2705ce f2261lz = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.time, 0);
        jceOutputStream.write((JceStruct) this.f2260ly, 1);
        if (this.f2261lz != null) {
            jceOutputStream.write((JceStruct) this.f2261lz, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.time = jceInputStream.read(this.time, 0, true);
        if (f2258lA == null) {
            f2258lA = new C2850cx();
        }
        this.f2260ly = (C2850cx) jceInputStream.read((JceStruct) f2258lA, 1, true);
        if (f2259lB == null) {
            f2259lB = new C2705ce();
        }
        this.f2261lz = (C2705ce) jceInputStream.read((JceStruct) f2259lB, 2, false);
    }
}
