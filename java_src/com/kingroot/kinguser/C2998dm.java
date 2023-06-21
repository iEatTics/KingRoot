package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dm */
/* loaded from: classes.dex */
public final class C2998dm extends JceStruct implements Cloneable {
    public String title = "";

    /* renamed from: gc */
    public String f2465gc = "";
    public int type = 0;

    /* renamed from: gd */
    public int f2466gd = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.f2465gc, 1);
        jceOutputStream.write(this.type, 2);
        jceOutputStream.write(this.f2466gd, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.title = jceInputStream.readString(0, true);
        this.f2465gc = jceInputStream.readString(1, true);
        this.type = jceInputStream.read(this.type, 2, true);
        this.f2466gd = jceInputStream.read(this.f2466gd, 3, true);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
