package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dd */
/* loaded from: classes.dex */
public final class C2857dd extends JceStruct {

    /* renamed from: nd */
    static C2547bp f2428nd;

    /* renamed from: mW */
    public C2547bp f2429mW = null;

    /* renamed from: mZ */
    public int f2430mZ = 0;

    /* renamed from: na */
    public long f2431na = 0;

    /* renamed from: nb */
    public long f2432nb = 0;

    /* renamed from: nc */
    public String f2433nc = "";
    public int clearAction = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.f2429mW, 0);
        jceOutputStream.write(this.f2430mZ, 1);
        if (this.f2431na != 0) {
            jceOutputStream.write(this.f2431na, 2);
        }
        if (this.f2432nb != 0) {
            jceOutputStream.write(this.f2432nb, 3);
        }
        if (this.f2433nc != null) {
            jceOutputStream.write(this.f2433nc, 4);
        }
        jceOutputStream.write(this.clearAction, 5);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2428nd == null) {
            f2428nd = new C2547bp();
        }
        this.f2429mW = (C2547bp) jceInputStream.read((JceStruct) f2428nd, 0, true);
        this.f2430mZ = jceInputStream.read(this.f2430mZ, 1, true);
        this.f2431na = jceInputStream.read(this.f2431na, 2, false);
        this.f2432nb = jceInputStream.read(this.f2432nb, 3, false);
        this.f2433nc = jceInputStream.readString(4, false);
        this.clearAction = jceInputStream.read(this.clearAction, 5, false);
    }
}
