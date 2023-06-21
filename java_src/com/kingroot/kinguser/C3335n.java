package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.n */
/* loaded from: classes.dex */
public final class C3335n extends JceStruct {

    /* renamed from: fT */
    public int f3172fT = 0;

    /* renamed from: fU */
    public int f3173fU = 0;

    /* renamed from: fV */
    public int f3174fV = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f3172fT, 1);
        jceOutputStream.write(this.f3173fU, 2);
        jceOutputStream.write(this.f3174fV, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3172fT = jceInputStream.read(this.f3172fT, 1, true);
        this.f3173fU = jceInputStream.read(this.f3173fU, 2, true);
        this.f3174fV = jceInputStream.read(this.f3174fV, 3, true);
    }
}
