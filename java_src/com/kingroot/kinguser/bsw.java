package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class bsw extends JceStruct {
    public String bJr = "";
    public String bJs = "";
    public String bJt = "";
    public String bMq = "";
    public String bMr = "";
    public String bMs = "";
    public int bMt = 0;
    public String bJu = "";
    public String videoUrl = "";
    public String bJJ = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new bsw();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.bJr != null) {
            jceOutputStream.write(this.bJr, 0);
        }
        if (this.bJs != null) {
            jceOutputStream.write(this.bJs, 1);
        }
        if (this.bJt != null) {
            jceOutputStream.write(this.bJt, 2);
        }
        if (this.bMq != null) {
            jceOutputStream.write(this.bMq, 3);
        }
        if (this.bMr != null) {
            jceOutputStream.write(this.bMr, 4);
        }
        if (this.bMs != null) {
            jceOutputStream.write(this.bMs, 5);
        }
        if (this.bMt != 0) {
            jceOutputStream.write(this.bMt, 6);
        }
        if (this.bJu != null) {
            jceOutputStream.write(this.bJu, 7);
        }
        if (this.videoUrl != null) {
            jceOutputStream.write(this.videoUrl, 8);
        }
        if (this.bJJ != null) {
            jceOutputStream.write(this.bJJ, 9);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bJr = jceInputStream.readString(0, false);
        this.bJs = jceInputStream.readString(1, false);
        this.bJt = jceInputStream.readString(2, false);
        this.bMq = jceInputStream.readString(3, false);
        this.bMr = jceInputStream.readString(4, false);
        this.bMs = jceInputStream.readString(5, false);
        this.bMt = jceInputStream.read(this.bMt, 6, false);
        this.bJu = jceInputStream.readString(7, false);
        this.videoUrl = jceInputStream.readString(8, false);
        this.bJJ = jceInputStream.readString(9, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public String toString() {
        return "Display [text1=" + this.bJr + ", text2=" + this.bJs + ", text3=" + this.bJt + ", imgUrl1=" + this.bMq + ", imgUrl2=" + this.bMr + ", imgUrl3=" + this.bMs + ", positionFormatType=" + this.bMt + ", text4=" + this.bJu + ", videoUrl=" + this.videoUrl + ", zipUrl=" + this.bJJ + "]";
    }
}
