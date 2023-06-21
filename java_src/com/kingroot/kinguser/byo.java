package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class byo extends JceStruct {
    public String bTX = "";
    public int bUD = 0;
    public float bUE = 0.0f;
    public String bUe = "";
    public String bUF = "";
    public String reserved = "";
    public long bTW = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bTX, 0);
        jceOutputStream.write(this.bUD, 1);
        jceOutputStream.write(this.bUE, 2);
        if (this.bUe != null) {
            jceOutputStream.write(this.bUe, 3);
        }
        if (this.bUF != null) {
            jceOutputStream.write(this.bUF, 4);
        }
        if (this.reserved != null) {
            jceOutputStream.write(this.reserved, 5);
        }
        if (this.bTW != 0) {
            jceOutputStream.write(this.bTW, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bTX = jceInputStream.readString(0, true);
        this.bUD = jceInputStream.read(this.bUD, 1, true);
        this.bUE = jceInputStream.read(this.bUE, 2, true);
        this.bUe = jceInputStream.readString(3, false);
        this.bUF = jceInputStream.readString(4, false);
        this.reserved = jceInputStream.readString(5, false);
        this.bTW = jceInputStream.read(this.bTW, 6, false);
    }
}
