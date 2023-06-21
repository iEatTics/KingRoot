package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class bss extends JceStruct {
    static bsx bMk;
    static bsw bMi = new bsw();
    static bsv bMj = new bsv();
    static byte[] bMa = new byte[1];
    public int bMd = 0;
    public bsw bMe = null;
    public bsv bMf = null;
    public byte[] bLn = null;
    public long bMg = 0;
    public bsx bMh = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bss();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bMd != 0) {
            jceOutputStream.write(this.bMd, 0);
        }
        if (this.bMe != null) {
            jceOutputStream.write((JceStruct) this.bMe, 1);
        }
        if (this.bMf != null) {
            jceOutputStream.write((JceStruct) this.bMf, 2);
        }
        if (this.bLn != null) {
            jceOutputStream.write(this.bLn, 3);
        }
        if (this.bMg != 0) {
            jceOutputStream.write(this.bMg, 4);
        }
        if (this.bMh != null) {
            jceOutputStream.write((JceStruct) this.bMh, 5);
        }
    }

    static {
        bMa[0] = 0;
        bMk = new bsx();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bMd = jceInputStream.read(this.bMd, 0, false);
        this.bMe = (bsw) jceInputStream.read((JceStruct) bMi, 1, false);
        this.bMf = (bsv) jceInputStream.read((JceStruct) bMj, 2, false);
        this.bLn = jceInputStream.read(bMa, 3, false);
        this.bMg = jceInputStream.read(this.bMg, 4, false);
        this.bMh = (bsx) jceInputStream.read((JceStruct) bMk, 5, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public String toString() {
        return "Advertise [expireTime=" + this.bMd + ", displayInfo=" + this.bMe + ", content=" + this.bMf + ", context=" + Arrays.toString(this.bLn) + ", advId=" + this.bMg + ", displayCtrl=" + this.bMh + "]";
    }
}
