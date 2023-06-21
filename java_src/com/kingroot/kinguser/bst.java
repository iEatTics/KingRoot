package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class bst extends JceStruct {
    static ArrayList<bsq> bMm = new ArrayList<>();
    public ArrayList<bsq> bMl = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bst();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMl != null) {
            jceOutputStream.write((Collection) this.bMl, 0);
        }
    }

    static {
        bMm.add(new bsq());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMl = (ArrayList) jceInputStream.read((JceInputStream) bMm, 0, false);
    }
}
