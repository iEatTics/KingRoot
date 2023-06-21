package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.at */
/* loaded from: classes.dex */
public final class C1509at extends JceStruct {

    /* renamed from: iv */
    public String f1547iv = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1509at();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1547iv != null) {
            jceOutputStream.write(this.f1547iv, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1547iv = jceInputStream.readString(0, false);
    }
}
