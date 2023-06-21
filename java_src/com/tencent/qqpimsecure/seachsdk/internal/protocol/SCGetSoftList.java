package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SCGetSoftList extends JceStruct {
    static ArrayList<SoftListResp> bQq = new ArrayList<>();
    static ArrayList<RelatedSoftList> bQr;
    public int retCode = 0;
    public ArrayList<SoftListResp> vecSoftListResp = null;
    public ArrayList<RelatedSoftList> vecRelatedSoftList = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGetSoftList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.vecSoftListResp != null) {
            jceOutputStream.write((Collection) this.vecSoftListResp, 1);
        }
        if (this.vecRelatedSoftList != null) {
            jceOutputStream.write((Collection) this.vecRelatedSoftList, 2);
        }
    }

    static {
        bQq.add(new SoftListResp());
        bQr = new ArrayList<>();
        bQr.add(new RelatedSoftList());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.vecSoftListResp = (ArrayList) jceInputStream.read((JceInputStream) bQq, 1, false);
        this.vecRelatedSoftList = (ArrayList) jceInputStream.read((JceInputStream) bQr, 2, false);
    }
}
