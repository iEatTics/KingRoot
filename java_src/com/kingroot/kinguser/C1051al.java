package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.al */
/* loaded from: classes.dex */
public final class C1051al extends JceStruct {

    /* renamed from: ht */
    static C1216am f1467ht = new C1216am();

    /* renamed from: hr */
    public int f1468hr = 0;

    /* renamed from: hs */
    public C1216am f1469hs = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1051al();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1468hr, 0);
        if (this.f1469hs != null) {
            jceOutputStream.write((JceStruct) this.f1469hs, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1468hr = jceInputStream.read(this.f1468hr, 0, true);
        this.f1469hs = (C1216am) jceInputStream.read((JceStruct) f1467ht, 1, false);
    }
}
