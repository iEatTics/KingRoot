package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bsq extends JceStruct {
    static byte[] bMa = new byte[1];

    /* renamed from: gw */
    public int f2069gw = 0;
    public byte[] bLn = null;
    public int bJp = 0;
    public long bLo = 0;
    public int status = 0;
    public int bLZ = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsq();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2069gw != 0) {
            jceOutputStream.write(this.f2069gw, 0);
        }
        if (this.bLn != null) {
            jceOutputStream.write(this.bLn, 1);
        }
        if (this.bJp != 0) {
            jceOutputStream.write(this.bJp, 2);
        }
        if (this.bLo != 0) {
            jceOutputStream.write(this.bLo, 3);
        }
        if (this.status != 0) {
            jceOutputStream.write(this.status, 4);
        }
        if (this.bLZ != 0) {
            jceOutputStream.write(this.bLZ, 5);
        }
    }

    static {
        bMa[0] = 0;
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2069gw = jceInputStream.read(this.f2069gw, 0, false);
        this.bLn = jceInputStream.read(bMa, 1, false);
        this.bJp = jceInputStream.read(this.bJp, 2, false);
        this.bLo = jceInputStream.read(this.bLo, 3, false);
        this.status = jceInputStream.read(this.status, 4, false);
        this.bLZ = jceInputStream.read(this.bLZ, 5, false);
    }
}
