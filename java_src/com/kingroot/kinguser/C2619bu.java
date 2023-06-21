package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bu */
/* loaded from: classes.dex */
public final class C2619bu extends JceStruct {
    public String filename = "";
    public String checksum = "";
    public int timestamp = 0;

    /* renamed from: lh */
    public int f2115lh = 0;

    /* renamed from: li */
    public int f2116li = 0;
    public int version = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.filename, 0);
        jceOutputStream.write(this.checksum, 1);
        jceOutputStream.write(this.timestamp, 2);
        if (this.f2115lh != 0) {
            jceOutputStream.write(this.f2115lh, 3);
        }
        if (this.f2116li != 0) {
            jceOutputStream.write(this.f2116li, 4);
        }
        if (this.version != 0) {
            jceOutputStream.write(this.version, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.filename = jceInputStream.readString(0, true);
        this.checksum = jceInputStream.readString(1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.f2115lh = jceInputStream.read(this.f2115lh, 3, false);
        this.f2116li = jceInputStream.read(this.f2116li, 4, false);
        this.version = jceInputStream.read(this.version, 5, false);
    }
}
