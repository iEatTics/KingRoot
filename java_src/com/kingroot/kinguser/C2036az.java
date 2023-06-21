package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.az */
/* loaded from: classes.dex */
public final class C2036az extends JceStruct {

    /* renamed from: kb */
    static byte[] f1639kb;

    /* renamed from: kc */
    static C1997ay f1640kc = new C1997ay();
    public int cmd = 0;
    public int seqNo = 0;

    /* renamed from: jX */
    public int f1641jX = 0;
    public byte[] data = null;

    /* renamed from: jY */
    public long f1642jY = 0;
    public int retCode = 0;

    /* renamed from: jZ */
    public int f1643jZ = 0;

    /* renamed from: ka */
    public C1997ay f1644ka = null;
    public int flag = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2036az();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.cmd, 0);
        if (this.seqNo != 0) {
            jceOutputStream.write(this.seqNo, 1);
        }
        if (this.f1641jX != 0) {
            jceOutputStream.write(this.f1641jX, 2);
        }
        if (this.data != null) {
            jceOutputStream.write(this.data, 3);
        }
        if (this.f1642jY != 0) {
            jceOutputStream.write(this.f1642jY, 4);
        }
        if (this.retCode != 0) {
            jceOutputStream.write(this.retCode, 5);
        }
        if (this.f1643jZ != 0) {
            jceOutputStream.write(this.f1643jZ, 6);
        }
        if (this.f1644ka != null) {
            jceOutputStream.write((JceStruct) this.f1644ka, 7);
        }
        if (this.flag != 0) {
            jceOutputStream.write(this.flag, 8);
        }
    }

    static {
        f1639kb = r0;
        byte[] bArr = {0};
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.cmd = jceInputStream.read(this.cmd, 0, true);
        this.seqNo = jceInputStream.read(this.seqNo, 1, false);
        this.f1641jX = jceInputStream.read(this.f1641jX, 2, false);
        this.data = jceInputStream.read(f1639kb, 3, false);
        this.f1642jY = jceInputStream.read(this.f1642jY, 4, false);
        this.retCode = jceInputStream.read(this.retCode, 5, false);
        this.f1643jZ = jceInputStream.read(this.f1643jZ, 6, false);
        this.f1644ka = (C1997ay) jceInputStream.read((JceStruct) f1640kc, 7, false);
        this.flag = jceInputStream.read(this.flag, 8, false);
    }
}
