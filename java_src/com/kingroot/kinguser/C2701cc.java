package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cc */
/* loaded from: classes.dex */
public final class C2701cc extends JceStruct {

    /* renamed from: lx */
    public int f2245lx = 0;

    /* renamed from: iI */
    public int f2244iI = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2245lx != 0) {
            jceOutputStream.write(this.f2245lx, 0);
        }
        if (this.f2244iI != 0) {
            jceOutputStream.write(this.f2244iI, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2245lx = jceInputStream.read(this.f2245lx, 0, false);
        this.f2244iI = jceInputStream.read(this.f2244iI, 1, false);
    }
}
