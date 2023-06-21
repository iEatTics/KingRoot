package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class byj extends JceStruct {
    public int bUr = 0;
    public long bUs = 0;
    public int bJE = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUr, 0);
        jceOutputStream.write(this.bUs, 1);
        jceOutputStream.write(this.bJE, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUr = jceInputStream.read(this.bUr, 0, true);
        this.bUs = jceInputStream.read(this.bUs, 1, true);
        this.bJE = jceInputStream.read(this.bJE, 2, true);
    }
}
