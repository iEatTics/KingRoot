package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.c */
/* loaded from: classes.dex */
public final class C2687c extends JceStruct {

    /* renamed from: dR */
    public int f2194dR = 0;

    /* renamed from: lc */
    public String f2197lc = "";

    /* renamed from: dS */
    public int f2195dS = 0;

    /* renamed from: dT */
    public String f2196dT = "";
    public String version = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2194dR, 0);
        if (this.f2197lc != null) {
            jceOutputStream.write(this.f2197lc, 1);
        }
        if (this.f2195dS != 0) {
            jceOutputStream.write(this.f2195dS, 2);
        }
        if (this.f2196dT != null) {
            jceOutputStream.write(this.f2196dT, 3);
        }
        if (this.version != null) {
            jceOutputStream.write(this.version, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2194dR = jceInputStream.read(this.f2194dR, 0, true);
        this.f2197lc = jceInputStream.readString(1, false);
        this.f2195dS = jceInputStream.read(this.f2195dS, 2, false);
        this.f2196dT = jceInputStream.readString(3, false);
        this.version = jceInputStream.readString(4, false);
    }
}
