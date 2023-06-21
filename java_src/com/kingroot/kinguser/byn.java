package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class byn extends JceStruct {
    public String bUC = "";
    public int bDs = 0;
    public String version = "";

    /* renamed from: lc */
    public String f2166lc = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUC, 0);
        jceOutputStream.write(this.bDs, 1);
        jceOutputStream.write(this.version, 2);
        jceOutputStream.write(this.f2166lc, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUC = jceInputStream.readString(0, true);
        this.bDs = jceInputStream.read(this.bDs, 1, true);
        this.version = jceInputStream.readString(2, true);
        this.f2166lc = jceInputStream.readString(3, true);
    }
}
