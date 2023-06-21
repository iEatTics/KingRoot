package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bys extends JceStruct {
    public long bUO = 0;

    /* renamed from: x */
    public float f2168x = 0.0f;

    /* renamed from: y */
    public float f2169y = 0.0f;

    /* renamed from: z */
    public float f2170z = 0.0f;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUO, 0);
        jceOutputStream.write(this.f2168x, 1);
        jceOutputStream.write(this.f2169y, 2);
        jceOutputStream.write(this.f2170z, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUO = jceInputStream.read(this.bUO, 0, true);
        this.f2168x = jceInputStream.read(this.f2168x, 1, true);
        this.f2169y = jceInputStream.read(this.f2169y, 2, true);
        this.f2170z = jceInputStream.read(this.f2170z, 3, true);
    }
}
