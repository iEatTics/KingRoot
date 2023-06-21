package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ax */
/* loaded from: classes.dex */
public final class C1754ax extends JceStruct {

    /* renamed from: jU */
    public int f1623jU = 0;

    /* renamed from: jV */
    public String f1624jV = "";

    /* renamed from: jP */
    public String f1622jP = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1754ax();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1623jU, 0);
        if (this.f1624jV != null) {
            jceOutputStream.write(this.f1624jV, 1);
        }
        if (this.f1622jP != null) {
            jceOutputStream.write(this.f1622jP, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1623jU = jceInputStream.read(this.f1623jU, 0, true);
        this.f1624jV = jceInputStream.readString(1, false);
        this.f1622jP = jceInputStream.readString(2, false);
    }
}
