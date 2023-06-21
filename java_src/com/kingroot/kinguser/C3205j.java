package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.j */
/* loaded from: classes.dex */
public final class C3205j extends JceStruct {
    public int retCode = 0;

    /* renamed from: et */
    public long f2878et = 0;

    /* renamed from: eu */
    public int f2879eu = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        jceOutputStream.write(this.f2878et, 1);
        jceOutputStream.write(this.f2879eu, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.f2878et = jceInputStream.read(this.f2878et, 1, true);
        this.f2879eu = jceInputStream.read(this.f2879eu, 2, true);
    }
}
