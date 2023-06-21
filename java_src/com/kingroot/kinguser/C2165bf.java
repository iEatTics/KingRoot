package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bf */
/* loaded from: classes.dex */
public final class C2165bf extends JceStruct {

    /* renamed from: jW */
    public long f1664jW = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2165bf();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1664jW != 0) {
            jceOutputStream.write(this.f1664jW, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1664jW = jceInputStream.read(this.f1664jW, 0, false);
    }
}
