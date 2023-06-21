package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class GetGameReservationReq extends JceStruct {
    public String activityId = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new GetGameReservationReq();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.activityId != null) {
            jceOutputStream.write(this.activityId, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.activityId = jceInputStream.readString(0, false);
    }
}
