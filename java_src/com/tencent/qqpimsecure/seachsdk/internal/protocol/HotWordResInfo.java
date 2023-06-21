package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class HotWordResInfo extends JceStruct {
    static ArrayList<HotwordInfo> bQe = new ArrayList<>();
    public int totalnum = 0;
    public ArrayList<HotwordInfo> hotwords = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new HotWordResInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.totalnum, 0);
        jceOutputStream.write((Collection) this.hotwords, 1);
    }

    static {
        bQe.add(new HotwordInfo());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.totalnum = jceInputStream.read(this.totalnum, 0, true);
        this.hotwords = (ArrayList) jceInputStream.read((JceInputStream) bQe, 1, true);
    }
}
