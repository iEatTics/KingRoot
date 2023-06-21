package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.am */
/* loaded from: classes.dex */
public final class C1216am extends JceStruct {

    /* renamed from: et */
    public long f1482et = 0;

    /* renamed from: hu */
    public long f1483hu = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1216am();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1482et != 0) {
            jceOutputStream.write(this.f1482et, 0);
        }
        if (this.f1483hu != 0) {
            jceOutputStream.write(this.f1483hu, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1482et = jceInputStream.read(this.f1482et, 0, false);
        this.f1483hu = jceInputStream.read(this.f1483hu, 1, false);
    }
}
