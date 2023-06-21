package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.eg */
/* loaded from: classes.dex */
public final class C3019eg extends JceStruct {

    /* renamed from: pf */
    public int f2592pf = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2592pf, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2592pf = jceInputStream.read(this.f2592pf, 0, false);
    }
}
