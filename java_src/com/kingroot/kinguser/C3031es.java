package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.es */
/* loaded from: classes.dex */
public final class C3031es extends JceStruct {
    public String appName = "";

    /* renamed from: px */
    public int f2621px = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.appName, 0);
        jceOutputStream.write(this.f2621px, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.appName = jceInputStream.readString(0, true);
        this.f2621px = jceInputStream.read(this.f2621px, 1, true);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
