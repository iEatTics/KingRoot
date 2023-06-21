package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ec */
/* loaded from: classes.dex */
public final class C3015ec extends JceStruct {

    /* renamed from: id */
    public int f2535id = 0;
    public String name = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2535id, 0);
        jceOutputStream.write(this.name, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2535id = jceInputStream.read(this.f2535id, 0, true);
        this.name = jceInputStream.readString(1, true);
    }
}
