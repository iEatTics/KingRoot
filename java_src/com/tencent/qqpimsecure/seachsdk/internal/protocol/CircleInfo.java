package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CircleInfo extends JceStruct {
    public int circleType = 0;
    public int circlePeriod = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CircleInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.circleType, 0);
        if (this.circlePeriod != 0) {
            jceOutputStream.write(this.circlePeriod, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.circleType = jceInputStream.read(this.circleType, 0, true);
        this.circlePeriod = jceInputStream.read(this.circlePeriod, 1, false);
    }
}
