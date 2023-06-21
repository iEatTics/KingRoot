package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bg */
/* loaded from: classes.dex */
public final class C2235bg extends JceStruct {

    /* renamed from: kb */
    static byte[] f1667kb;

    /* renamed from: kl */
    static C2165bf f1668kl = new C2165bf();
    public int cmd = 0;
    public int seqNo = 0;

    /* renamed from: jX */
    public int f1669jX = 0;
    public int retCode = 0;

    /* renamed from: jZ */
    public int f1670jZ = 0;
    public byte[] data = null;

    /* renamed from: kk */
    public C2165bf f1671kk = null;
    public int flag = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2235bg();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.cmd, 0);
        if (this.seqNo != 0) {
            jceOutputStream.write(this.seqNo, 1);
        }
        if (this.f1669jX != 0) {
            jceOutputStream.write(this.f1669jX, 2);
        }
        jceOutputStream.write(this.retCode, 3);
        if (this.f1670jZ != 0) {
            jceOutputStream.write(this.f1670jZ, 4);
        }
        if (this.data != null) {
            jceOutputStream.write(this.data, 5);
        }
        if (this.f1671kk != null) {
            jceOutputStream.write((JceStruct) this.f1671kk, 6);
        }
        if (this.flag != 0) {
            jceOutputStream.write(this.flag, 7);
        }
    }

    static {
        f1667kb = r0;
        byte[] bArr = {0};
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.cmd = jceInputStream.read(this.cmd, 0, true);
        this.seqNo = jceInputStream.read(this.seqNo, 1, false);
        this.f1669jX = jceInputStream.read(this.f1669jX, 2, false);
        this.retCode = jceInputStream.read(this.retCode, 3, false);
        this.f1670jZ = jceInputStream.read(this.f1670jZ, 4, false);
        this.data = jceInputStream.read(f1667kb, 5, false);
        this.f1671kk = (C2165bf) jceInputStream.read((JceStruct) f1668kl, 6, false);
        this.flag = jceInputStream.read(this.flag, 7, false);
    }
}
