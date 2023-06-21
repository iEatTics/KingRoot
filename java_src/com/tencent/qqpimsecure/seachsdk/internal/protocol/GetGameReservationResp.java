package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class GetGameReservationResp extends JceStruct {
    public int busiRetCode = 0;
    public String activityId = "";
    public int reservationType = 0;

    /* renamed from: qq */
    public String f4909qq = "";
    public String openid = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new GetGameReservationResp();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.busiRetCode != 0) {
            jceOutputStream.write(this.busiRetCode, 0);
        }
        if (this.activityId != null) {
            jceOutputStream.write(this.activityId, 1);
        }
        if (this.reservationType != 0) {
            jceOutputStream.write(this.reservationType, 2);
        }
        if (this.f4909qq != null) {
            jceOutputStream.write(this.f4909qq, 3);
        }
        if (this.openid != null) {
            jceOutputStream.write(this.openid, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.busiRetCode = jceInputStream.read(this.busiRetCode, 0, false);
        this.activityId = jceInputStream.readString(1, false);
        this.reservationType = jceInputStream.read(this.reservationType, 2, false);
        this.f4909qq = jceInputStream.readString(3, false);
        this.openid = jceInputStream.readString(4, false);
    }
}
