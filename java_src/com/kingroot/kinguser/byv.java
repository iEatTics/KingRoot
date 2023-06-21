package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class byv extends JceStruct {
    public int bUW = 0;

    /* renamed from: x */
    public float f2171x = 0.0f;

    /* renamed from: y */
    public float f2172y = 0.0f;
    public float bUX = 0.0f;
    public float bUY = 0.0f;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUW, 0);
        jceOutputStream.write(this.f2171x, 1);
        jceOutputStream.write(this.f2172y, 2);
        if (this.bUX != 0.0f) {
            jceOutputStream.write(this.bUX, 3);
        }
        if (this.bUY != 0.0f) {
            jceOutputStream.write(this.bUY, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUW = jceInputStream.read(this.bUW, 0, true);
        this.f2171x = jceInputStream.read(this.f2171x, 1, true);
        this.f2172y = jceInputStream.read(this.f2172y, 2, true);
        this.bUX = jceInputStream.read(this.bUX, 3, false);
        this.bUY = jceInputStream.read(this.bUY, 4, false);
    }
}
