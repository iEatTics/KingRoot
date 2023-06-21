package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dw */
/* loaded from: classes.dex */
public final class C3008dw extends JceStruct {
    public int pluginId = 0;
    public int versionCode = 0;

    /* renamed from: nS */
    public long f2515nS = 0;

    /* renamed from: nT */
    public int f2516nT = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pluginId, 0);
        jceOutputStream.write(this.versionCode, 1);
        jceOutputStream.write(this.f2515nS, 2);
        jceOutputStream.write(this.f2516nT, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.pluginId = jceInputStream.read(this.pluginId, 0, true);
        this.versionCode = jceInputStream.read(this.versionCode, 1, true);
        this.f2515nS = jceInputStream.read(this.f2515nS, 2, true);
        this.f2516nT = jceInputStream.read(this.f2516nT, 3, true);
    }
}
