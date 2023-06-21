package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dl */
/* loaded from: classes.dex */
public final class C2997dl extends JceStruct implements Cloneable {

    /* renamed from: fY */
    public int f2461fY = 0;

    /* renamed from: fZ */
    public boolean f2462fZ = true;

    /* renamed from: ga */
    public int f2463ga = 0;

    /* renamed from: gb */
    public int f2464gb = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2461fY, 0);
        jceOutputStream.write(this.f2462fZ, 1);
        if (this.f2463ga != 0) {
            jceOutputStream.write(this.f2463ga, 2);
        }
        if (this.f2464gb != 0) {
            jceOutputStream.write(this.f2464gb, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2461fY = jceInputStream.read(this.f2461fY, 0, true);
        this.f2462fZ = jceInputStream.read(this.f2462fZ, 1, true);
        this.f2463ga = jceInputStream.read(this.f2463ga, 2, false);
        this.f2464gb = jceInputStream.read(this.f2464gb, 3, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
