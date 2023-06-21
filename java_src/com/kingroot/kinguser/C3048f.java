package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.f */
/* loaded from: classes.dex */
public final class C3048f extends JceStruct {

    /* renamed from: ea */
    static byte[] f2646ea;
    public int fileId = 0;

    /* renamed from: dX */
    public byte[] f2647dX = null;
    public int timestamp = 0;

    /* renamed from: dY */
    public int f2648dY = 0;

    /* renamed from: dZ */
    public int f2649dZ = 0;
    public int version = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.fileId, 0);
        jceOutputStream.write(this.f2647dX, 1);
        jceOutputStream.write(this.timestamp, 2);
        if (this.f2648dY != 0) {
            jceOutputStream.write(this.f2648dY, 3);
        }
        if (this.f2649dZ != 0) {
            jceOutputStream.write(this.f2649dZ, 4);
        }
        if (this.version != 0) {
            jceOutputStream.write(this.version, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.fileId = jceInputStream.read(this.fileId, 0, true);
        if (f2646ea == null) {
            f2646ea = new byte[1];
            f2646ea[0] = 0;
        }
        this.f2647dX = jceInputStream.read(f2646ea, 1, true);
        this.timestamp = jceInputStream.read(this.timestamp, 2, true);
        this.f2648dY = jceInputStream.read(this.f2648dY, 3, false);
        this.f2649dZ = jceInputStream.read(this.f2649dZ, 4, false);
        this.version = jceInputStream.read(this.version, 5, false);
    }
}
