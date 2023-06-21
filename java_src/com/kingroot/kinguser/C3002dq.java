package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dq */
/* loaded from: classes.dex */
public final class C3002dq extends JceStruct {
    public String name = "";

    /* renamed from: nC */
    public int f2497nC = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.name, 0);
        jceOutputStream.write(this.f2497nC, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.name = jceInputStream.readString(0, true);
        this.f2497nC = jceInputStream.read(this.f2497nC, 1, true);
    }
}
