package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ad */
/* loaded from: classes.dex */
public final class C0708ad extends JceStruct {

    /* renamed from: gM */
    public String f1388gM = "";
    public int type = 0;
    public String content = "";

    /* renamed from: gN */
    public int f1389gN = 0;

    /* renamed from: gO */
    public String f1390gO = "";

    /* renamed from: gP */
    public String f1391gP = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1388gM != null) {
            jceOutputStream.write(this.f1388gM, 0);
        }
        if (this.type != 0) {
            jceOutputStream.write(this.type, 1);
        }
        if (this.content != null) {
            jceOutputStream.write(this.content, 2);
        }
        if (this.f1389gN != 0) {
            jceOutputStream.write(this.f1389gN, 3);
        }
        if (this.f1390gO != null) {
            jceOutputStream.write(this.f1390gO, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1388gM = jceInputStream.readString(0, false);
        this.type = jceInputStream.read(this.type, 1, false);
        this.content = jceInputStream.readString(2, false);
        this.f1389gN = jceInputStream.read(this.f1389gN, 3, false);
        this.f1390gO = jceInputStream.readString(4, false);
    }
}
