package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class bsr extends JceStruct {
    static ArrayList<Integer> bMc = new ArrayList<>();
    public int bJp = 0;
    public int bJL = 0;
    public ArrayList<Integer> bMb = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsr();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bJp != 0) {
            jceOutputStream.write(this.bJp, 0);
        }
        if (this.bJL != 0) {
            jceOutputStream.write(this.bJL, 1);
        }
        if (this.bMb != null) {
            jceOutputStream.write((Collection) this.bMb, 2);
        }
    }

    static {
        bMc.add(0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bJp = jceInputStream.read(this.bJp, 0, false);
        this.bJL = jceInputStream.read(this.bJL, 1, false);
        this.bMb = (ArrayList) jceInputStream.read((JceInputStream) bMc, 2, false);
    }
}
