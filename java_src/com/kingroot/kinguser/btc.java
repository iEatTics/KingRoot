package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class btc extends JceStruct {
    static bss bME = new bss();
    static ArrayList<bsy> bMF = new ArrayList<>();
    public bss bMB = null;
    public ArrayList<bsy> bMC = null;
    public int bJA = 0;
    public int bLT = -1;
    public int bLU = -1;
    public int bMD = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new btc();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMB != null) {
            jceOutputStream.write((JceStruct) this.bMB, 0);
        }
        if (this.bMC != null) {
            jceOutputStream.write((Collection) this.bMC, 1);
        }
        if (this.bJA != 0) {
            jceOutputStream.write(this.bJA, 2);
        }
        if (this.bLT != -1) {
            jceOutputStream.write(this.bLT, 3);
        }
        if (this.bLU != -1) {
            jceOutputStream.write(this.bLU, 4);
        }
        if (this.bMD != 0) {
            jceOutputStream.write(this.bMD, 5);
        }
    }

    static {
        bMF.add(new bsy());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMB = (bss) jceInputStream.read((JceStruct) bME, 0, false);
        this.bMC = (ArrayList) jceInputStream.read((JceInputStream) bMF, 1, false);
        this.bJA = jceInputStream.read(this.bJA, 2, false);
        this.bLT = jceInputStream.read(this.bLT, 3, false);
        this.bLU = jceInputStream.read(this.bLU, 4, false);
        this.bMD = jceInputStream.read(this.bMD, 5, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public String toString() {
        return "SecureAdvertise [advertise=" + this.bMB + ", vecNotifyBars=" + this.bMC + ", percentSpent=" + this.bJA + ", displayMaxTimes=" + this.bLT + ", clickMaxTimes=" + this.bLU + ", displayStartTime=" + this.bMD + "]";
    }
}
