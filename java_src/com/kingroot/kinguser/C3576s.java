package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.s */
/* loaded from: classes.dex */
public final class C3576s extends JceStruct {

    /* renamed from: gg */
    public int f3513gg = 0;

    /* renamed from: gh */
    public int f3514gh = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3513gg != 0) {
            jceOutputStream.write(this.f3513gg, 0);
        }
        if (this.f3514gh != 0) {
            jceOutputStream.write(this.f3514gh, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f3513gg = jceInputStream.read(this.f3513gg, 0, false);
        this.f3514gh = jceInputStream.read(this.f3514gh, 1, false);
    }
}
