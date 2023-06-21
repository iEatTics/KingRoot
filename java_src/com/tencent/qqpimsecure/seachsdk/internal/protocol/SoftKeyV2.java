package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SoftKeyV2 extends JceStruct {
    public String pkgName = "";
    public String versionName = "";
    public int versionCode = 0;
    public String softName = "";
    public String certMd5 = "";
    public String manifestMd5 = "";
    public String channelId = "";
    public long categoryId = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftKeyV2();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.pkgName, 0);
        if (this.versionName != null) {
            jceOutputStream.write(this.versionName, 1);
        }
        if (this.versionCode != 0) {
            jceOutputStream.write(this.versionCode, 2);
        }
        if (this.softName != null) {
            jceOutputStream.write(this.softName, 3);
        }
        if (this.certMd5 != null) {
            jceOutputStream.write(this.certMd5, 4);
        }
        if (this.manifestMd5 != null) {
            jceOutputStream.write(this.manifestMd5, 5);
        }
        if (this.channelId != null) {
            jceOutputStream.write(this.channelId, 6);
        }
        if (this.categoryId != 0) {
            jceOutputStream.write(this.categoryId, 7);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.pkgName = jceInputStream.readString(0, true);
        this.versionName = jceInputStream.readString(1, false);
        this.versionCode = jceInputStream.read(this.versionCode, 2, false);
        this.softName = jceInputStream.readString(3, false);
        this.certMd5 = jceInputStream.readString(4, false);
        this.manifestMd5 = jceInputStream.readString(5, false);
        this.channelId = jceInputStream.readString(6, false);
        this.categoryId = jceInputStream.read(this.categoryId, 7, false);
    }
}
