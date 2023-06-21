package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SCGetSearchSuggest extends JceStruct {
    static ArrayList<String> bQo = new ArrayList<>();
    static ArrayList<SoftSimpleInfo> bQp;
    public ArrayList<String> keyWords = null;
    public ArrayList<SoftSimpleInfo> softInfos = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGetSearchSuggest();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.keyWords, 0);
        if (this.softInfos != null) {
            jceOutputStream.write((Collection) this.softInfos, 1);
        }
    }

    static {
        bQo.add("");
        bQp = new ArrayList<>();
        bQp.add(new SoftSimpleInfo());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.keyWords = (ArrayList) jceInputStream.read((JceInputStream) bQo, 0, true);
        this.softInfos = (ArrayList) jceInputStream.read((JceInputStream) bQp, 1, false);
    }
}
