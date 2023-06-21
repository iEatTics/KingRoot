package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dk */
/* loaded from: classes.dex */
public final class C2996dk extends JceStruct {

    /* renamed from: gH */
    public int f2459gH = 0;

    /* renamed from: no */
    public byte f2460no = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2459gH, 0);
        jceOutputStream.write(this.f2460no, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2459gH = jceInputStream.read(this.f2459gH, 0, true);
        this.f2460no = jceInputStream.read(this.f2460no, 1, true);
    }
}
