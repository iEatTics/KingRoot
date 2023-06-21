package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.an */
/* loaded from: classes.dex */
public final class C1235an extends JceStruct {

    /* renamed from: hv */
    public int f1488hv = 0;

    /* renamed from: hC */
    public int f1486hC = 0;

    /* renamed from: hD */
    public int f1487hD = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1235an();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1488hv != 0) {
            jceOutputStream.write(this.f1488hv, 0);
        }
        if (this.f1486hC != 0) {
            jceOutputStream.write(this.f1486hC, 1);
        }
        if (this.f1487hD != 0) {
            jceOutputStream.write(this.f1487hD, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1488hv = jceInputStream.read(this.f1488hv, 0, false);
        this.f1486hC = jceInputStream.read(this.f1486hC, 1, false);
        this.f1487hD = jceInputStream.read(this.f1487hD, 2, false);
    }
}
