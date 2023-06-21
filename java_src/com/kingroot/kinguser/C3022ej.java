package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ej */
/* loaded from: classes.dex */
public final class C3022ej extends JceStruct {

    /* renamed from: kF */
    public String f2598kF = "";
    public String value = "";
    public long time = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2598kF, 0);
        jceOutputStream.write(this.value, 1);
        jceOutputStream.write(this.time, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2598kF = jceInputStream.readString(0, true);
        this.value = jceInputStream.readString(1, true);
        this.time = jceInputStream.read(this.time, 2, true);
    }
}
