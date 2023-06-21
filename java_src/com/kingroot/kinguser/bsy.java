package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bsy extends JceStruct {
    public int bMw = 0;
    public String text = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsy();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMw != 0) {
            jceOutputStream.write(this.bMw, 0);
        }
        if (this.text != null) {
            jceOutputStream.write(this.text, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMw = jceInputStream.read(this.bMw, 0, false);
        this.text = jceInputStream.readString(1, false);
    }
}
