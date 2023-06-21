package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.aa */
/* loaded from: classes.dex */
public final class C0605aa extends JceStruct {

    /* renamed from: gG */
    static C3335n f1207gG;

    /* renamed from: gD */
    public int f1208gD = 0;
    public String url = "";

    /* renamed from: gE */
    public C3335n f1209gE = null;
    public String pkgName = "";
    public String certMd5 = "";

    /* renamed from: gF */
    public int f1210gF = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1208gD, 0);
        jceOutputStream.write(this.url, 1);
        if (this.f1209gE != null) {
            jceOutputStream.write((JceStruct) this.f1209gE, 2);
        }
        if (this.pkgName != null) {
            jceOutputStream.write(this.pkgName, 3);
        }
        if (this.certMd5 != null) {
            jceOutputStream.write(this.certMd5, 4);
        }
        if (this.f1210gF != 0) {
            jceOutputStream.write(this.f1210gF, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1208gD = jceInputStream.read(this.f1208gD, 0, true);
        this.url = jceInputStream.readString(1, true);
        if (f1207gG == null) {
            f1207gG = new C3335n();
        }
        this.f1209gE = (C3335n) jceInputStream.read((JceStruct) f1207gG, 2, false);
        this.pkgName = jceInputStream.readString(3, false);
        this.certMd5 = jceInputStream.readString(4, false);
        this.f1210gF = jceInputStream.read(this.f1210gF, 5, false);
    }
}
