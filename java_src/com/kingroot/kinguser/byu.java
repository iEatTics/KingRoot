package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class byu extends JceStruct {
    static ArrayList<byv> bUV;
    public long bUT = 0;
    public int duration = 0;
    public ArrayList<byv> bUU = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bUT, 0);
        jceOutputStream.write(this.duration, 1);
        jceOutputStream.write((Collection) this.bUU, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bUT = jceInputStream.read(this.bUT, 0, true);
        this.duration = jceInputStream.read(this.duration, 1, true);
        if (bUV == null) {
            bUV = new ArrayList<>();
            bUV.add(new byv());
        }
        this.bUU = (ArrayList) jceInputStream.read((JceInputStream) bUV, 2, true);
    }
}
