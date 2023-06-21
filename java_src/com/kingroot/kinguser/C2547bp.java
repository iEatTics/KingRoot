package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bp */
/* loaded from: classes.dex */
public final class C2547bp extends JceStruct {
    public String packageName = "";
    public String certMD5 = "";

    /* renamed from: kI */
    public int f1869kI = 0;

    /* renamed from: kJ */
    public int f1870kJ = 0;

    /* renamed from: kK */
    public boolean f1871kK = true;

    /* renamed from: kL */
    public int f1872kL = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.packageName, 0);
        jceOutputStream.write(this.certMD5, 1);
        if (this.f1869kI != 0) {
            jceOutputStream.write(this.f1869kI, 2);
        }
        if (this.f1870kJ != 0) {
            jceOutputStream.write(this.f1870kJ, 3);
        }
        if (!this.f1871kK) {
            jceOutputStream.write(this.f1871kK, 4);
        }
        jceOutputStream.write(this.f1872kL, 5);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.packageName = jceInputStream.readString(0, true);
        this.certMD5 = jceInputStream.readString(1, true);
        this.f1869kI = jceInputStream.read(this.f1869kI, 2, false);
        this.f1870kJ = jceInputStream.read(this.f1870kJ, 3, false);
        this.f1871kK = jceInputStream.read(this.f1871kK, 4, false);
        this.f1872kL = jceInputStream.read(this.f1872kL, 5, false);
    }
}
