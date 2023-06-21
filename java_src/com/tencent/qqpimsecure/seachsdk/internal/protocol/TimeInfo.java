package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class TimeInfo extends JceStruct {
    public long startTime = 0;
    public long finishTime = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new TimeInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.startTime != 0) {
            jceOutputStream.write(this.startTime, 0);
        }
        if (this.finishTime != 0) {
            jceOutputStream.write(this.finishTime, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.startTime = jceInputStream.read(this.startTime, 0, false);
        this.finishTime = jceInputStream.read(this.finishTime, 1, false);
    }
}
