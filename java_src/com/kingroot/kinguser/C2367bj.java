package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bj */
/* loaded from: classes.dex */
public final class C2367bj extends JceStruct {

    /* renamed from: kv */
    static C2843cq f1691kv;

    /* renamed from: ko */
    public String f1692ko = "";

    /* renamed from: kp */
    public String f1693kp = "";

    /* renamed from: ks */
    public String f1694ks = "";

    /* renamed from: kt */
    public String f1695kt = "";

    /* renamed from: ku */
    public C2843cq f1696ku = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1692ko != null) {
            jceOutputStream.write(this.f1692ko, 0);
        }
        if (this.f1693kp != null) {
            jceOutputStream.write(this.f1693kp, 1);
        }
        if (this.f1694ks != null) {
            jceOutputStream.write(this.f1694ks, 2);
        }
        if (this.f1695kt != null) {
            jceOutputStream.write(this.f1695kt, 3);
        }
        if (this.f1696ku != null) {
            jceOutputStream.write((JceStruct) this.f1696ku, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1692ko = jceInputStream.readString(0, false);
        this.f1693kp = jceInputStream.readString(1, false);
        this.f1694ks = jceInputStream.readString(2, false);
        this.f1695kt = jceInputStream.readString(3, false);
        if (f1691kv == null) {
            f1691kv = new C2843cq();
        }
        this.f1696ku = (C2843cq) jceInputStream.read((JceStruct) f1691kv, 4, false);
    }
}
