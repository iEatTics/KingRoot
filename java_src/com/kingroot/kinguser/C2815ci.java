package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ci */
/* loaded from: classes.dex */
public final class C2815ci extends JceStruct {

    /* renamed from: lR */
    public String f2339lR = "";

    /* renamed from: lS */
    public int f2340lS = 1;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2339lR, 0);
        if (this.f2340lS != 1) {
            jceOutputStream.write(this.f2340lS, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2339lR = jceInputStream.readString(0, true);
        this.f2340lS = jceInputStream.read(this.f2340lS, 1, false);
    }
}
