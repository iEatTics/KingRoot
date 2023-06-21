package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cv */
/* loaded from: classes.dex */
public final class C2848cv extends JceStruct {

    /* renamed from: fT */
    public int f2394fT = 0;

    /* renamed from: fU */
    public int f2395fU = 0;

    /* renamed from: fV */
    public int f2396fV = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2394fT, 1);
        jceOutputStream.write(this.f2395fU, 2);
        jceOutputStream.write(this.f2396fV, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2394fT = jceInputStream.read(this.f2394fT, 1, true);
        this.f2395fU = jceInputStream.read(this.f2395fU, 2, true);
        this.f2396fV = jceInputStream.read(this.f2396fV, 3, true);
    }
}
