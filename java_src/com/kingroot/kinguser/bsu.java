package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class bsu extends JceStruct {
    static ArrayList<bsr> bMp = new ArrayList<>();
    public ArrayList<bsr> bMn = null;
    public boolean bMo = false;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsu();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMn != null) {
            jceOutputStream.write((Collection) this.bMn, 0);
        }
        jceOutputStream.write(this.bMo, 1);
    }

    static {
        bMp.add(new bsr());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMn = (ArrayList) jceInputStream.read((JceInputStream) bMp, 0, false);
        this.bMo = jceInputStream.read(this.bMo, 1, false);
    }
}
