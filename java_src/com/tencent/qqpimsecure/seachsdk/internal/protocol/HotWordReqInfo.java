package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class HotWordReqInfo extends JceStruct {
    public int version = 0;
    public int index = 0;
    public int num = 0;
    public long categoryId = 4000102;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new HotWordReqInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.version, 0);
        jceOutputStream.write(this.index, 1);
        jceOutputStream.write(this.num, 2);
        if (this.categoryId != 4000102) {
            jceOutputStream.write(this.categoryId, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.version = jceInputStream.read(this.version, 0, true);
        this.index = jceInputStream.read(this.index, 1, true);
        this.num = jceInputStream.read(this.num, 2, true);
        this.categoryId = jceInputStream.read(this.categoryId, 3, false);
    }
}
