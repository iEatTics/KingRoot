package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cr */
/* loaded from: classes.dex */
public final class C2844cr extends JceStruct {

    /* renamed from: mw */
    public int f2385mw = 0;
    public int pluginId = 0;

    /* renamed from: mx */
    public int f2386mx = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2385mw != 0) {
            jceOutputStream.write(this.f2385mw, 0);
        }
        if (this.pluginId != 0) {
            jceOutputStream.write(this.pluginId, 1);
        }
        if (this.f2386mx != 0) {
            jceOutputStream.write(this.f2386mx, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2385mw = jceInputStream.read(this.f2385mw, 0, false);
        this.pluginId = jceInputStream.read(this.pluginId, 1, false);
        this.f2386mx = jceInputStream.read(this.f2386mx, 2, false);
    }
}
