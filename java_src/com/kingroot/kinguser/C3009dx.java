package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dx */
/* loaded from: classes.dex */
public final class C3009dx extends JceStruct {

    /* renamed from: id */
    public int f2517id = 0;

    /* renamed from: nU */
    public int f2518nU = 0;

    /* renamed from: nV */
    public int f2519nV = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2517id, 0);
        jceOutputStream.write(this.f2518nU, 1);
        jceOutputStream.write(this.f2519nV, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2517id = jceInputStream.read(this.f2517id, 0, true);
        this.f2518nU = jceInputStream.read(this.f2518nU, 1, true);
        this.f2519nV = jceInputStream.read(this.f2519nV, 2, true);
    }
}
