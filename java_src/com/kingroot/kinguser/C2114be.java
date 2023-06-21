package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.be */
/* loaded from: classes.dex */
public final class C2114be extends JceStruct {

    /* renamed from: kj */
    public String f1662kj = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C2114be();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1662kj, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1662kj = jceInputStream.readString(0, true);
    }
}
