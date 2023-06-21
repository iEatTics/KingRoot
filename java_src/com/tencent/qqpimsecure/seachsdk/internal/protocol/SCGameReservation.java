package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SCGameReservation extends JceStruct {
    public int retCode = 0;
    public int reservationType = 0;
    public String activityId = "";

    /* renamed from: qq */
    public String f4915qq = "";
    public String openid = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGameReservation();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.reservationType != 0) {
            jceOutputStream.write(this.reservationType, 1);
        }
        if (this.activityId != null) {
            jceOutputStream.write(this.activityId, 2);
        }
        if (this.f4915qq != null) {
            jceOutputStream.write(this.f4915qq, 3);
        }
        if (this.openid != null) {
            jceOutputStream.write(this.openid, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.reservationType = jceInputStream.read(this.reservationType, 1, false);
        this.activityId = jceInputStream.readString(2, false);
        this.f4915qq = jceInputStream.readString(3, false);
        this.openid = jceInputStream.readString(4, false);
    }
}
