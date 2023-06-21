package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.t */
/* loaded from: classes.dex */
public final class C3616t extends JceStruct {

    /* renamed from: gi */
    public String f3539gi = "";

    /* renamed from: gj */
    public String f3540gj = "";

    /* renamed from: gk */
    public String f3541gk = "";

    /* renamed from: gl */
    public String f3542gl = "";

    /* renamed from: gm */
    public String f3543gm = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3539gi != null) {
            jceOutputStream.write(this.f3539gi, 0);
        }
        if (this.f3540gj != null) {
            jceOutputStream.write(this.f3540gj, 1);
        }
        if (this.f3541gk != null) {
            jceOutputStream.write(this.f3541gk, 2);
        }
        if (this.f3542gl != null) {
            jceOutputStream.write(this.f3542gl, 3);
        }
        if (this.f3543gm != null) {
            jceOutputStream.write(this.f3543gm, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3539gi = jceInputStream.readString(0, false);
        this.f3540gj = jceInputStream.readString(1, false);
        this.f3541gk = jceInputStream.readString(2, false);
        this.f3542gl = jceInputStream.readString(3, false);
        this.f3543gm = jceInputStream.readString(4, false);
    }
}
