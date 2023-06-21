package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class bta extends JceStruct {
    static ArrayList<btb> bMy = new ArrayList<>();
    public ArrayList<btb> bMx = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bta();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMx != null) {
            jceOutputStream.write((Collection) this.bMx, 0);
        }
    }

    static {
        bMy.add(new btb());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMx = (ArrayList) jceInputStream.read((JceInputStream) bMy, 0, false);
    }
}
