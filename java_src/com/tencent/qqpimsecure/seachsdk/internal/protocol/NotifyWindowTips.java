package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class NotifyWindowTips extends JceStruct {
    public String mainTitle = "";
    public String subTitle = "";
    public String buttonWording = "";
    public String ticketWording = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new NotifyWindowTips();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.mainTitle != null) {
            jceOutputStream.write(this.mainTitle, 0);
        }
        if (this.subTitle != null) {
            jceOutputStream.write(this.subTitle, 1);
        }
        if (this.buttonWording != null) {
            jceOutputStream.write(this.buttonWording, 2);
        }
        if (this.ticketWording != null) {
            jceOutputStream.write(this.ticketWording, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.mainTitle = jceInputStream.readString(0, false);
        this.subTitle = jceInputStream.readString(1, false);
        this.buttonWording = jceInputStream.readString(2, false);
        this.ticketWording = jceInputStream.readString(3, false);
    }
}
