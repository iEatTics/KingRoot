package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ct */
/* loaded from: classes.dex */
public final class C2846ct extends JceStruct {

    /* renamed from: kb */
    static byte[] f2391kb;

    /* renamed from: mB */
    static C2845cs f2392mB;

    /* renamed from: mA */
    public C2845cs f2393mA = null;
    public byte[] data = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.f2393mA, 0);
        jceOutputStream.write(this.data, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2392mB == null) {
            f2392mB = new C2845cs();
        }
        this.f2393mA = (C2845cs) jceInputStream.read((JceStruct) f2392mB, 0, true);
        if (f2391kb == null) {
            f2391kb = new byte[1];
            f2391kb[0] = 0;
        }
        this.data = jceInputStream.read(f2391kb, 1, true);
    }
}
