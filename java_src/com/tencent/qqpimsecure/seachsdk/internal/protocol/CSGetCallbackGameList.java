package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CSGetCallbackGameList extends JceStruct {
    public String reserve = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGetCallbackGameList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.reserve != null) {
            jceOutputStream.write(this.reserve, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.reserve = jceInputStream.readString(0, false);
    }
}
