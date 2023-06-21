package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dy */
/* loaded from: classes.dex */
public final class C3010dy extends JceStruct {

    /* renamed from: id */
    public int f2520id = 0;
    public int version = 0;
    public int level = 0;
    public String pkgName = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2520id, 0);
        jceOutputStream.write(this.version, 1);
        jceOutputStream.write(this.level, 2);
        if (this.pkgName != null) {
            jceOutputStream.write(this.pkgName, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2520id = jceInputStream.read(this.f2520id, 0, true);
        this.version = jceInputStream.read(this.version, 1, true);
        this.level = jceInputStream.read(this.level, 2, true);
        this.pkgName = jceInputStream.readString(3, false);
    }
}
