package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CSGetSearchSuggest extends JceStruct {
    public String keyWord = "";
    public byte type = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGetSearchSuggest();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.keyWord, 0);
        if (this.type != 0) {
            jceOutputStream.write(this.type, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.keyWord = jceInputStream.readString(0, true);
        this.type = jceInputStream.read(this.type, 1, false);
    }
}
