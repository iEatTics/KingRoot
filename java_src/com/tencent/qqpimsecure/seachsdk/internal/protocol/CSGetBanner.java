package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CSGetBanner extends JceStruct {
    public long adsPosition = 0;
    public long adsId = -1;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGetBanner();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.adsPosition != 0) {
            jceOutputStream.write(this.adsPosition, 0);
        }
        if (this.adsId != -1) {
            jceOutputStream.write(this.adsId, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.adsPosition = jceInputStream.read(this.adsPosition, 0, false);
        this.adsId = jceInputStream.read(this.adsId, 1, false);
    }
}
