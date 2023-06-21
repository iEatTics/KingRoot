package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bb */
/* loaded from: classes.dex */
public final class C2051bb extends JceStruct {

    /* renamed from: ki */
    public int f1653ki = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2051bb();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1653ki, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1653ki = jceInputStream.read(this.f1653ki, 0, true);
    }
}
