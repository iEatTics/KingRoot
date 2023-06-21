package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SoftListResp extends JceStruct {
    static ArrayList<SoftDetail> bQy = new ArrayList<>();
    static ShowDetail bQz;
    public int retCode = 0;
    public long categoryId = 0;
    public boolean hasNextPage = false;
    public int nextBeginPos = 0;
    public ArrayList<SoftDetail> vecSoftDetail = null;
    public ShowDetail showDetail = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftListResp();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.categoryId != 0) {
            jceOutputStream.write(this.categoryId, 1);
        }
        jceOutputStream.write(this.hasNextPage, 2);
        if (this.nextBeginPos != 0) {
            jceOutputStream.write(this.nextBeginPos, 3);
        }
        if (this.vecSoftDetail != null) {
            jceOutputStream.write((Collection) this.vecSoftDetail, 4);
        }
        if (this.showDetail != null) {
            jceOutputStream.write((JceStruct) this.showDetail, 5);
        }
    }

    static {
        bQy.add(new SoftDetail());
        bQz = new ShowDetail();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.categoryId = jceInputStream.read(this.categoryId, 1, false);
        this.hasNextPage = jceInputStream.read(this.hasNextPage, 2, false);
        this.nextBeginPos = jceInputStream.read(this.nextBeginPos, 3, false);
        this.vecSoftDetail = (ArrayList) jceInputStream.read((JceInputStream) bQy, 4, false);
        this.showDetail = (ShowDetail) jceInputStream.read((JceStruct) bQz, 5, false);
    }
}
