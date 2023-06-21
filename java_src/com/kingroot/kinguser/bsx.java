package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bsx extends JceStruct {
    public int bMu = 0;
    public int bMv = 0;
    public int bJE = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsx();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMu != 0) {
            jceOutputStream.write(this.bMu, 0);
        }
        if (this.bMv != 0) {
            jceOutputStream.write(this.bMv, 1);
        }
        if (this.bJE != 0) {
            jceOutputStream.write(this.bJE, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMu = jceInputStream.read(this.bMu, 0, false);
        this.bMv = jceInputStream.read(this.bMv, 1, false);
        this.bJE = jceInputStream.read(this.bJE, 2, false);
    }
}
