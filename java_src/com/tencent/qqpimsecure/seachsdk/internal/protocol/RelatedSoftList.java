package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class RelatedSoftList extends JceStruct {
    static ArrayList<RelatedSoftListItem> bQg = new ArrayList<>();
    public long srcCategoryId = 0;
    public ArrayList<RelatedSoftListItem> vecRelatedSoftListItem = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new RelatedSoftList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.srcCategoryId != 0) {
            jceOutputStream.write(this.srcCategoryId, 0);
        }
        if (this.vecRelatedSoftListItem != null) {
            jceOutputStream.write((Collection) this.vecRelatedSoftListItem, 1);
        }
    }

    static {
        bQg.add(new RelatedSoftListItem());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.srcCategoryId = jceInputStream.read(this.srcCategoryId, 0, false);
        this.vecRelatedSoftListItem = (ArrayList) jceInputStream.read((JceInputStream) bQg, 1, false);
    }
}
