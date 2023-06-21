package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CSGameReservation extends JceStruct {
    public String activityId = "";

    /* renamed from: qq */
    public String f4900qq = "";
    public String openid = "";
    public String pkgName = "";
    public int reqSource = 1000;
    public String versionName = "";

    /* renamed from: lc */
    public String f4899lc = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGameReservation();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.activityId != null) {
            jceOutputStream.write(this.activityId, 0);
        }
        if (this.f4900qq != null) {
            jceOutputStream.write(this.f4900qq, 1);
        }
        if (this.openid != null) {
            jceOutputStream.write(this.openid, 2);
        }
        if (this.pkgName != null) {
            jceOutputStream.write(this.pkgName, 3);
        }
        if (1000 != this.reqSource) {
            jceOutputStream.write(this.reqSource, 4);
        }
        if (this.versionName != null) {
            jceOutputStream.write(this.versionName, 5);
        }
        if (this.f4899lc != null) {
            jceOutputStream.write(this.f4899lc, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.activityId = jceInputStream.readString(0, false);
        this.f4900qq = jceInputStream.readString(1, false);
        this.openid = jceInputStream.readString(2, false);
        this.pkgName = jceInputStream.readString(3, false);
        this.reqSource = jceInputStream.read(this.reqSource, 4, false);
        this.versionName = jceInputStream.readString(5, false);
        this.f4899lc = jceInputStream.readString(6, false);
    }
}
