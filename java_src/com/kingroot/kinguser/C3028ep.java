package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ep */
/* loaded from: classes.dex */
public final class C3028ep extends JceStruct {
    public String packageName = "";
    public String cert = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.packageName, 0);
        jceOutputStream.write(this.cert, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.packageName = jceInputStream.readString(0, true);
        this.cert = jceInputStream.readString(1, true);
    }
}
