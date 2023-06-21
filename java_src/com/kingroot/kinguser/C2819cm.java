package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cm */
/* loaded from: classes.dex */
public final class C2819cm extends JceStruct {

    /* renamed from: gD */
    public int f2344gD = 0;
    public String uid = "";

    /* renamed from: lU */
    public int f2345lU = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2344gD, 0);
        jceOutputStream.write(this.uid, 1);
        if (this.f2345lU != 0) {
            jceOutputStream.write(this.f2345lU, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2344gD = jceInputStream.read(this.f2344gD, 0, true);
        this.uid = jceInputStream.readString(1, true);
        this.f2345lU = jceInputStream.read(this.f2345lU, 2, false);
    }
}
