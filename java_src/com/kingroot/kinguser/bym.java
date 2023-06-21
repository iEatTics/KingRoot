package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bym extends JceStruct {
    public int bUz = 0;
    public long bUA = 0;
    public long bUB = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUz, 0);
        if (this.bUA != 0) {
            jceOutputStream.write(this.bUA, 1);
        }
        if (this.bUB != 0) {
            jceOutputStream.write(this.bUB, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUz = jceInputStream.read(this.bUz, 0, true);
        this.bUA = jceInputStream.read(this.bUA, 1, false);
        this.bUB = jceInputStream.read(this.bUB, 2, false);
    }
}
