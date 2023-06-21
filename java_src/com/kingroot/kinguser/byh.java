package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class byh extends JceStruct {
    static ArrayList<byj> bTV;
    public int bTT = 0;
    public ArrayList<byj> bTU = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bTT, 0);
        jceOutputStream.write((Collection) this.bTU, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bTT = jceInputStream.read(this.bTT, 0, true);
        if (bTV == null) {
            bTV = new ArrayList<>();
            bTV.add(new byj());
        }
        this.bTU = (ArrayList) jceInputStream.read((JceInputStream) bTV, 1, true);
    }
}
