package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cs */
/* loaded from: classes.dex */
public final class C2845cs extends JceStruct {
    public int product = 0;

    /* renamed from: my */
    public String f2389my = "";

    /* renamed from: it */
    public String f2388it = "";

    /* renamed from: iE */
    public String f2387iE = "";

    /* renamed from: mz */
    public String f2390mz = "";
    public int filesize = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.product, 0);
        jceOutputStream.write(this.f2389my, 1);
        jceOutputStream.write(this.f2388it, 2);
        jceOutputStream.write(this.f2387iE, 3);
        if (this.f2390mz != null) {
            jceOutputStream.write(this.f2390mz, 4);
        }
        if (this.filesize != 0) {
            jceOutputStream.write(this.filesize, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.product = jceInputStream.read(this.product, 0, true);
        this.f2389my = jceInputStream.readString(1, true);
        this.f2388it = jceInputStream.readString(2, true);
        this.f2387iE = jceInputStream.readString(3, true);
        this.f2390mz = jceInputStream.readString(4, false);
        this.filesize = jceInputStream.read(this.filesize, 5, false);
    }
}
