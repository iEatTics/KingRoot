package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cl */
/* loaded from: classes.dex */
public final class C2818cl extends JceStruct implements Cloneable {

    /* renamed from: gc */
    public String f2343gc = "";
    public int retCode = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2343gc != null) {
            jceOutputStream.write(this.f2343gc, 0);
        }
        if (this.retCode != 0) {
            jceOutputStream.write(this.retCode, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2343gc = jceInputStream.readString(0, false);
        this.retCode = jceInputStream.read(this.retCode, 1, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
