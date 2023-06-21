package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ab */
/* loaded from: classes.dex */
public final class C0625ab extends JceStruct {

    /* renamed from: gH */
    public int f1299gH = 0;

    /* renamed from: gI */
    public int f1300gI = 0;

    /* renamed from: gJ */
    public String f1301gJ = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1299gH != 0) {
            jceOutputStream.write(this.f1299gH, 0);
        }
        jceOutputStream.write(this.f1300gI, 1);
        if (this.f1301gJ != null) {
            jceOutputStream.write(this.f1301gJ, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1299gH = jceInputStream.read(this.f1299gH, 0, false);
        this.f1300gI = jceInputStream.read(this.f1300gI, 1, false);
        this.f1301gJ = jceInputStream.readString(2, false);
    }
}
