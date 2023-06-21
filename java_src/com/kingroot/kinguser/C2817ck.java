package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ck */
/* loaded from: classes.dex */
public final class C2817ck extends JceStruct {

    /* renamed from: lJ */
    public int f2341lJ = 0;

    /* renamed from: lT */
    public int f2342lT = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2341lJ, 0);
        jceOutputStream.write(this.f2342lT, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2341lJ = jceInputStream.read(this.f2341lJ, 0, false);
        this.f2342lT = jceInputStream.read(this.f2342lT, 1, false);
    }
}
