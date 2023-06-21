package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.aw */
/* loaded from: classes.dex */
public final class C1700aw extends JceStruct {

    /* renamed from: jT */
    static C1599au f1616jT = new C1599au();

    /* renamed from: jQ */
    public C1599au f1617jQ = null;

    /* renamed from: jR */
    public String f1618jR = "";

    /* renamed from: jS */
    public String f1619jS = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1700aw();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.f1617jQ, 0);
        jceOutputStream.write(this.f1618jR, 1);
        if (this.f1619jS != null) {
            jceOutputStream.write(this.f1619jS, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1617jQ = (C1599au) jceInputStream.read((JceStruct) f1616jT, 0, true);
        this.f1618jR = jceInputStream.readString(1, true);
        this.f1619jS = jceInputStream.readString(2, false);
    }
}
