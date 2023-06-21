package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cq */
/* loaded from: classes.dex */
public final class C2843cq extends JceStruct {

    /* renamed from: mv */
    public int f2384mv = 0;

    /* renamed from: iJ */
    public int f2383iJ = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2384mv, 0);
        if (this.f2383iJ != 0) {
            jceOutputStream.write(this.f2383iJ, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2384mv = jceInputStream.read(this.f2384mv, 0, true);
        this.f2383iJ = jceInputStream.read(this.f2383iJ, 1, false);
    }
}
