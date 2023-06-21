package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.eo */
/* loaded from: classes.dex */
public final class C3027eo extends JceStruct {
    public int ret = 0;

    /* renamed from: pu */
    public int f2616pu = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.ret != 0) {
            jceOutputStream.write(this.ret, 0);
        }
        if (this.f2616pu != 0) {
            jceOutputStream.write(this.f2616pu, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.ret = jceInputStream.read(this.ret, 0, false);
        this.f2616pu = jceInputStream.read(this.f2616pu, 1, false);
    }
}
