package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.as */
/* loaded from: classes.dex */
public final class C1471as extends JceStruct {

    /* renamed from: iD */
    static byte[] f1544iD;

    /* renamed from: iC */
    public byte[] f1545iC = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1471as();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1545iC != null) {
            jceOutputStream.write(this.f1545iC, 0);
        }
    }

    static {
        f1544iD = r0;
        byte[] bArr = {0};
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1545iC = jceInputStream.read(f1544iD, 0, false);
    }
}
