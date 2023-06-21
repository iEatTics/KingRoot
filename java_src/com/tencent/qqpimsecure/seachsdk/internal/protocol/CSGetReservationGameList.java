package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class CSGetReservationGameList extends JceStruct {
    public long categoryId = 0;
    public int pageSize = 30;
    public int beginPos = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGetReservationGameList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.categoryId != 0) {
            jceOutputStream.write(this.categoryId, 0);
        }
        if (this.pageSize != 30) {
            jceOutputStream.write(this.pageSize, 1);
        }
        if (this.beginPos != 0) {
            jceOutputStream.write(this.beginPos, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.categoryId = jceInputStream.read(this.categoryId, 0, false);
        this.pageSize = jceInputStream.read(this.pageSize, 1, false);
        this.beginPos = jceInputStream.read(this.beginPos, 2, false);
    }
}
