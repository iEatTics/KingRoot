package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bsv extends JceStruct {
    public int bLY = 0;
    public String jumpUrl = "";
    public String packageName = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsv();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bLY != 0) {
            jceOutputStream.write(this.bLY, 0);
        }
        if (this.jumpUrl != null) {
            jceOutputStream.write(this.jumpUrl, 1);
        }
        if (this.packageName != null) {
            jceOutputStream.write(this.packageName, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bLY = jceInputStream.read(this.bLY, 0, false);
        this.jumpUrl = jceInputStream.readString(1, false);
        this.packageName = jceInputStream.readString(2, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public String toString() {
        return "Content [contentType=" + this.bLY + ", jumpUrl=" + this.jumpUrl + ", packageName=" + this.packageName + "]";
    }
}
