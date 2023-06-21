package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bi */
/* loaded from: classes.dex */
public final class C2295bi extends JceStruct {

    /* renamed from: ko */
    public String f1680ko = "";

    /* renamed from: kp */
    public String f1681kp = "";

    /* renamed from: kq */
    public long f1682kq = 0;

    /* renamed from: kr */
    public long f1683kr = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1680ko != null) {
            jceOutputStream.write(this.f1680ko, 0);
        }
        if (this.f1681kp != null) {
            jceOutputStream.write(this.f1681kp, 1);
        }
        if (this.f1682kq != 0) {
            jceOutputStream.write(this.f1682kq, 2);
        }
        if (this.f1683kr != 0) {
            jceOutputStream.write(this.f1683kr, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1680ko = jceInputStream.readString(0, false);
        this.f1681kp = jceInputStream.readString(1, false);
        this.f1682kq = jceInputStream.read(this.f1682kq, 2, false);
        this.f1683kr = jceInputStream.read(this.f1683kr, 3, false);
    }
}
