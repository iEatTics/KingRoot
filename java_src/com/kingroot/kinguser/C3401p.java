package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.p */
/* loaded from: classes.dex */
public final class C3401p extends JceStruct {
    public String title = "";

    /* renamed from: gc */
    public String f3266gc = "";
    public int type = 0;

    /* renamed from: gd */
    public int f3267gd = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.f3266gc, 1);
        jceOutputStream.write(this.type, 2);
        jceOutputStream.write(this.f3267gd, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.title = jceInputStream.readString(0, true);
        this.f3266gc = jceInputStream.readString(1, true);
        this.type = jceInputStream.read(this.type, 2, true);
        this.f3267gd = jceInputStream.read(this.f3267gd, 3, true);
    }
}
