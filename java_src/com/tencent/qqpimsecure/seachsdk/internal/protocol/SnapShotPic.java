package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SnapShotPic extends JceStruct {
    public String rawUrl = "";
    public String miniUrl = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SnapShotPic();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.rawUrl != null) {
            jceOutputStream.write(this.rawUrl, 0);
        }
        if (this.miniUrl != null) {
            jceOutputStream.write(this.miniUrl, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.rawUrl = jceInputStream.readString(0, false);
        this.miniUrl = jceInputStream.readString(1, false);
    }
}
