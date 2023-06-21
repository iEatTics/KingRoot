package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class ReminderHelperTips extends JceStruct {
    static PictureUrl bQi = new PictureUrl();
    public String mainTitle = "";
    public String buttonWording = "";
    public String buttonWordingMini = "";
    public PictureUrl picUrl = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new ReminderHelperTips();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.mainTitle != null) {
            jceOutputStream.write(this.mainTitle, 0);
        }
        if (this.buttonWording != null) {
            jceOutputStream.write(this.buttonWording, 1);
        }
        if (this.buttonWordingMini != null) {
            jceOutputStream.write(this.buttonWordingMini, 2);
        }
        if (this.picUrl != null) {
            jceOutputStream.write((JceStruct) this.picUrl, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.mainTitle = jceInputStream.readString(0, false);
        this.buttonWording = jceInputStream.readString(1, false);
        this.buttonWordingMini = jceInputStream.readString(2, false);
        this.picUrl = (PictureUrl) jceInputStream.read((JceStruct) bQi, 3, false);
    }
}
