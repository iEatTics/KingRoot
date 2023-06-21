package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class RelatedSoftListItem extends JceStruct {
    static SoftListResp bQh = new SoftListResp();
    public long index = 0;
    public SoftListResp softListResp = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new RelatedSoftListItem();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.index != 0) {
            jceOutputStream.write(this.index, 0);
        }
        if (this.softListResp != null) {
            jceOutputStream.write((JceStruct) this.softListResp, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.index = jceInputStream.read(this.index, 0, false);
        this.softListResp = (SoftListResp) jceInputStream.read((JceStruct) bQh, 1, false);
    }
}
