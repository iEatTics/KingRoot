package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ay */
/* loaded from: classes.dex */
public final class C1997ay extends JceStruct {

    /* renamed from: jW */
    public long f1634jW = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1997ay();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1634jW != 0) {
            jceOutputStream.write(this.f1634jW, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1634jW = jceInputStream.read(this.f1634jW, 0, false);
    }
}
