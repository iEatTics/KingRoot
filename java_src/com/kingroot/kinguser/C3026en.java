package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.en */
/* loaded from: classes.dex */
public final class C3026en extends JceStruct {

    /* renamed from: ks */
    public String f2612ks = "";

    /* renamed from: kt */
    public String f2613kt = "";

    /* renamed from: ps */
    public long f2614ps = 0;

    /* renamed from: pt */
    public String f2615pt = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2612ks != null) {
            jceOutputStream.write(this.f2612ks, 0);
        }
        if (this.f2613kt != null) {
            jceOutputStream.write(this.f2613kt, 1);
        }
        if (this.f2614ps != 0) {
            jceOutputStream.write(this.f2614ps, 2);
        }
        if (this.f2615pt != null) {
            jceOutputStream.write(this.f2615pt, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2612ks = jceInputStream.readString(0, false);
        this.f2613kt = jceInputStream.readString(1, false);
        this.f2614ps = jceInputStream.read(this.f2614ps, 2, false);
        this.f2615pt = jceInputStream.readString(3, false);
    }
}
