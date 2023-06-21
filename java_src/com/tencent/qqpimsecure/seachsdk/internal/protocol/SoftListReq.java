package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SoftListReq extends JceStruct {
    public long categoryId = 0;
    public long groupId = -1;
    public int pageSize = 30;
    public int beginPos = 0;
    public String queryKeyWord = "";
    public String pkgName = "";
    public long sourceId = 0;
    public long tagId = -1;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftListReq();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.categoryId != 0) {
            jceOutputStream.write(this.categoryId, 0);
        }
        if (this.groupId != -1) {
            jceOutputStream.write(this.groupId, 1);
        }
        if (this.pageSize != 30) {
            jceOutputStream.write(this.pageSize, 2);
        }
        if (this.beginPos != 0) {
            jceOutputStream.write(this.beginPos, 3);
        }
        if (this.queryKeyWord != null) {
            jceOutputStream.write(this.queryKeyWord, 4);
        }
        if (this.pkgName != null) {
            jceOutputStream.write(this.pkgName, 5);
        }
        if (this.sourceId != 0) {
            jceOutputStream.write(this.sourceId, 6);
        }
        if (this.tagId != -1) {
            jceOutputStream.write(this.tagId, 7);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.categoryId = jceInputStream.read(this.categoryId, 0, false);
        this.groupId = jceInputStream.read(this.groupId, 1, false);
        this.pageSize = jceInputStream.read(this.pageSize, 2, false);
        this.beginPos = jceInputStream.read(this.beginPos, 3, false);
        this.queryKeyWord = jceInputStream.readString(4, false);
        this.pkgName = jceInputStream.readString(5, false);
        this.sourceId = jceInputStream.read(this.sourceId, 6, false);
        this.tagId = jceInputStream.read(this.tagId, 7, false);
    }
}
