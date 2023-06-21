package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SoftSearchInfo extends JceStruct {
    public long searchNum = 0;
    public String searchWords = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftSearchInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.searchNum != 0) {
            jceOutputStream.write(this.searchNum, 0);
        }
        if (this.searchWords != null) {
            jceOutputStream.write(this.searchWords, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.searchNum = jceInputStream.read(this.searchNum, 0, false);
        this.searchWords = jceInputStream.readString(1, false);
    }
}
