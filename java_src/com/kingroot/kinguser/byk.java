package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class byk extends JceStruct {
    static byn bUw;
    public String bUt = "";
    public String bUu = "";
    public byn bUv = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUt, 0);
        if (this.bUu != null) {
            jceOutputStream.write(this.bUu, 1);
        }
        if (this.bUv != null) {
            jceOutputStream.write((JceStruct) this.bUv, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUt = jceInputStream.readString(0, true);
        this.bUu = jceInputStream.readString(1, false);
        if (bUw == null) {
            bUw = new byn();
        }
        this.bUv = (byn) jceInputStream.read((JceStruct) bUw, 2, false);
    }
}
