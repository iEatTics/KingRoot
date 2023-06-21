package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CallbackGame extends JceStruct {
    static SoftDetail bPN = new SoftDetail();
    static TipsInfo bPO = new TipsInfo();
    static TimeInfo bPP = new TimeInfo();
    public long orderId = 0;
    public SoftDetail softDetail = null;
    public long tipsPos = 0;
    public TipsInfo tipsInfo = null;
    public TimeInfo validTime = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CallbackGame();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.orderId != 0) {
            jceOutputStream.write(this.orderId, 0);
        }
        if (this.softDetail != null) {
            jceOutputStream.write((JceStruct) this.softDetail, 1);
        }
        if (this.tipsPos != 0) {
            jceOutputStream.write(this.tipsPos, 2);
        }
        if (this.tipsInfo != null) {
            jceOutputStream.write((JceStruct) this.tipsInfo, 3);
        }
        if (this.validTime != null) {
            jceOutputStream.write((JceStruct) this.validTime, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.orderId = jceInputStream.read(this.orderId, 0, false);
        this.softDetail = (SoftDetail) jceInputStream.read((JceStruct) bPN, 1, false);
        this.tipsPos = jceInputStream.read(this.tipsPos, 2, false);
        this.tipsInfo = (TipsInfo) jceInputStream.read((JceStruct) bPO, 3, false);
        this.validTime = (TimeInfo) jceInputStream.read((JceStruct) bPP, 4, false);
    }
}
