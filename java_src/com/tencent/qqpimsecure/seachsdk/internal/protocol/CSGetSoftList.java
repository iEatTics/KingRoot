package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class CSGetSoftList extends JceStruct {
    static ArrayList<SoftListReq> bPM = new ArrayList<>();
    public ArrayList<SoftListReq> vecSoftListReq = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new CSGetSoftList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.vecSoftListReq, 0);
    }

    static {
        bPM.add(new SoftListReq());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.vecSoftListReq = (ArrayList) jceInputStream.read((JceInputStream) bPM, 0, true);
    }
}
