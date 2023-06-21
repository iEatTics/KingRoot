package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ai */
/* loaded from: classes.dex */
public final class C0951ai extends JceStruct {

    /* renamed from: ga */
    public int f1439ga = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1439ga != 0) {
            jceOutputStream.write(this.f1439ga, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1439ga = jceInputStream.read(this.f1439ga, 0, false);
    }
}
