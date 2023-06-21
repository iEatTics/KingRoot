package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class byq extends JceStruct {
    static byo bUH;
    public int errorCode = 0;
    public byo bUG = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.errorCode, 0);
        if (this.bUG != null) {
            jceOutputStream.write((JceStruct) this.bUG, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.errorCode = jceInputStream.read(this.errorCode, 0, true);
        if (bUH == null) {
            bUH = new byo();
        }
        this.bUG = (byo) jceInputStream.read((JceStruct) bUH, 1, false);
    }
}
