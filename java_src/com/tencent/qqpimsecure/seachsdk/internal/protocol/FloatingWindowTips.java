package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class FloatingWindowTips extends JceStruct {
    public String tipsWording = "";
    public String expandTip = "";
    public String expandIconTip = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new FloatingWindowTips();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.tipsWording != null) {
            jceOutputStream.write(this.tipsWording, 0);
        }
        if (this.expandTip != null) {
            jceOutputStream.write(this.expandTip, 1);
        }
        if (this.expandIconTip != null) {
            jceOutputStream.write(this.expandIconTip, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.tipsWording = jceInputStream.readString(0, false);
        this.expandTip = jceInputStream.readString(1, false);
        this.expandIconTip = jceInputStream.readString(2, false);
    }
}
