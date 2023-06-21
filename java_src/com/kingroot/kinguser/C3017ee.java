package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ee */
/* loaded from: classes.dex */
public final class C3017ee extends JceStruct {
    public int pluginId = 0;
    public int versionCode = 0;

    /* renamed from: oF */
    public long f2564oF = 0;

    /* renamed from: oG */
    public int f2565oG = 0;

    /* renamed from: oH */
    public int f2566oH = 0;
    public String tipsWording = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pluginId, 0);
        jceOutputStream.write(this.versionCode, 1);
        jceOutputStream.write(this.f2564oF, 2);
        jceOutputStream.write(this.f2565oG, 3);
        jceOutputStream.write(this.f2566oH, 4);
        if (this.tipsWording != null) {
            jceOutputStream.write(this.tipsWording, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.pluginId = jceInputStream.read(this.pluginId, 0, true);
        this.versionCode = jceInputStream.read(this.versionCode, 1, true);
        this.f2564oF = jceInputStream.read(this.f2564oF, 2, true);
        this.f2565oG = jceInputStream.read(this.f2565oG, 3, true);
        this.f2566oH = jceInputStream.read(this.f2566oH, 4, false);
        this.tipsWording = jceInputStream.readString(5, false);
    }
}
