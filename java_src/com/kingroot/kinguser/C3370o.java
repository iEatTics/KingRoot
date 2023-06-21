package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.o */
/* loaded from: classes.dex */
public final class C3370o extends JceStruct {

    /* renamed from: fY */
    public int f3232fY = 0;

    /* renamed from: fZ */
    public boolean f3233fZ = true;

    /* renamed from: ga */
    public int f3234ga = 0;

    /* renamed from: gb */
    public int f3235gb = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f3232fY, 0);
        jceOutputStream.write(this.f3233fZ, 1);
        if (this.f3234ga != 0) {
            jceOutputStream.write(this.f3234ga, 2);
        }
        if (this.f3235gb != 0) {
            jceOutputStream.write(this.f3235gb, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3232fY = jceInputStream.read(this.f3232fY, 0, true);
        this.f3233fZ = jceInputStream.read(this.f3233fZ, 1, true);
        this.f3234ga = jceInputStream.read(this.f3234ga, 2, false);
        this.f3235gb = jceInputStream.read(this.f3235gb, 3, false);
    }
}
