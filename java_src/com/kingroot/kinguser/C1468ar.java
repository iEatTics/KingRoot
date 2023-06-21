package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ar */
/* loaded from: classes.dex */
public final class C1468ar extends JceStruct {

    /* renamed from: iB */
    static byte[] f1542iB;
    public int cmd = 0;

    /* renamed from: iA */
    public byte[] f1543iA = null;
    public int status = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1468ar();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.cmd, 0);
        if (this.f1543iA != null) {
            jceOutputStream.write(this.f1543iA, 1);
        }
        if (this.status != 0) {
            jceOutputStream.write(this.status, 2);
        }
    }

    static {
        f1542iB = r0;
        byte[] bArr = {0};
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.cmd = jceInputStream.read(this.cmd, 0, true);
        this.f1543iA = jceInputStream.read(f1542iB, 1, false);
        this.status = jceInputStream.read(this.status, 2, false);
    }
}
