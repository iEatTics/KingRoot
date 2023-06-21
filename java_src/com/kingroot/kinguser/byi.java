package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class byi extends JceStruct {
    static ArrayList<byr> bUm;
    static byk bUn;
    static bym bUo;
    static byh bUp;
    static ArrayList<byl> bUq;
    public long bTW = 0;
    public String bTX = "";
    public ArrayList<byr> bTY = null;
    public int bTZ = 0;

    /* renamed from: lc */
    public String f2165lc = "";
    public int bUa = 0;
    public int bQZ = 0;
    public String bUb = "";

    /* renamed from: iE */
    public String f2159iE = "";

    /* renamed from: iF */
    public String f2160iF = "";

    /* renamed from: kp */
    public String f2164kp = "";

    /* renamed from: ko */
    public String f2163ko = "";
    public String bUc = "";
    public int bUd = 0;
    public int sdkVer = 0;
    public String bUe = "";

    /* renamed from: iI */
    public int f2161iI = 0;
    public String bUf = "";

    /* renamed from: kj */
    public String f2162kj = "";
    public int bUg = 0;
    public byk bUh = null;
    public bym bUi = null;
    public byh bUj = null;
    public int bUk = 0;
    public ArrayList<byl> bUl = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bTW, 0);
        jceOutputStream.write(this.bTX, 1);
        jceOutputStream.write((Collection) this.bTY, 2);
        jceOutputStream.write(this.bTZ, 3);
        jceOutputStream.write(this.f2165lc, 4);
        jceOutputStream.write(this.bUa, 5);
        jceOutputStream.write(this.bQZ, 6);
        jceOutputStream.write(this.bUb, 7);
        if (this.f2159iE != null) {
            jceOutputStream.write(this.f2159iE, 8);
        }
        if (this.f2160iF != null) {
            jceOutputStream.write(this.f2160iF, 9);
        }
        if (this.f2164kp != null) {
            jceOutputStream.write(this.f2164kp, 10);
        }
        if (this.f2163ko != null) {
            jceOutputStream.write(this.f2163ko, 11);
        }
        if (this.bUc != null) {
            jceOutputStream.write(this.bUc, 12);
        }
        if (this.bUd != 0) {
            jceOutputStream.write(this.bUd, 13);
        }
        if (this.sdkVer != 0) {
            jceOutputStream.write(this.sdkVer, 14);
        }
        if (this.bUe != null) {
            jceOutputStream.write(this.bUe, 15);
        }
        jceOutputStream.write(this.f2161iI, 16);
        if (this.bUf != null) {
            jceOutputStream.write(this.bUf, 17);
        }
        if (this.f2162kj != null) {
            jceOutputStream.write(this.f2162kj, 18);
        }
        if (this.bUg != 0) {
            jceOutputStream.write(this.bUg, 19);
        }
        if (this.bUh != null) {
            jceOutputStream.write((JceStruct) this.bUh, 20);
        }
        if (this.bUi != null) {
            jceOutputStream.write((JceStruct) this.bUi, 21);
        }
        if (this.bUj != null) {
            jceOutputStream.write((JceStruct) this.bUj, 22);
        }
        if (this.bUk != 0) {
            jceOutputStream.write(this.bUk, 23);
        }
        if (this.bUl != null) {
            jceOutputStream.write((Collection) this.bUl, 24);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bTW = jceInputStream.read(this.bTW, 0, true);
        this.bTX = jceInputStream.readString(1, true);
        if (bUm == null) {
            bUm = new ArrayList<>();
            bUm.add(new byr());
        }
        this.bTY = (ArrayList) jceInputStream.read((JceInputStream) bUm, 2, true);
        this.bTZ = jceInputStream.read(this.bTZ, 3, true);
        this.f2165lc = jceInputStream.readString(4, true);
        this.bUa = jceInputStream.read(this.bUa, 5, true);
        this.bQZ = jceInputStream.read(this.bQZ, 6, true);
        this.bUb = jceInputStream.readString(7, true);
        this.f2159iE = jceInputStream.readString(8, false);
        this.f2160iF = jceInputStream.readString(9, false);
        this.f2164kp = jceInputStream.readString(10, false);
        this.f2163ko = jceInputStream.readString(11, false);
        this.bUc = jceInputStream.readString(12, false);
        this.bUd = jceInputStream.read(this.bUd, 13, false);
        this.sdkVer = jceInputStream.read(this.sdkVer, 14, false);
        this.bUe = jceInputStream.readString(15, false);
        this.f2161iI = jceInputStream.read(this.f2161iI, 16, false);
        this.bUf = jceInputStream.readString(17, false);
        this.f2162kj = jceInputStream.readString(18, false);
        this.bUg = jceInputStream.read(this.bUg, 19, false);
        if (bUn == null) {
            bUn = new byk();
        }
        this.bUh = (byk) jceInputStream.read((JceStruct) bUn, 20, false);
        if (bUo == null) {
            bUo = new bym();
        }
        this.bUi = (bym) jceInputStream.read((JceStruct) bUo, 21, false);
        if (bUp == null) {
            bUp = new byh();
        }
        this.bUj = (byh) jceInputStream.read((JceStruct) bUp, 22, false);
        this.bUk = jceInputStream.read(this.bUk, 23, false);
        if (bUq == null) {
            bUq = new ArrayList<>();
            bUq.add(new byl());
        }
        this.bUl = (ArrayList) jceInputStream.read((JceInputStream) bUq, 24, false);
    }
}
