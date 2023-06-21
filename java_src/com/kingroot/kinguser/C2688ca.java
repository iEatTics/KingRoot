package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ca */
/* loaded from: classes.dex */
public final class C2688ca extends JceStruct {

    /* renamed from: lw */
    static C2859df f2198lw;
    public int nProductId = 0;
    public int nSoftId = 0;
    public int nFileId = 0;
    public byte nSuccess = 0;
    public int nDownSize = 0;
    public int nUsedTime = 0;
    public int nMaxSpeed = 0;
    public int nAvgSpeed = 0;
    public int nRetryTimes = 0;
    public byte nDownType = 0;
    public C2859df softkey = null;
    public int categoryid = 0;
    public int pos = 0;
    public String url = "";
    public int errorcode = 0;
    public int downnettype = 0;
    public String downnetname = "";
    public int reportnettype = 0;
    public String reportnetname = "";
    public String errormsg = "";
    public int rssi = -1;
    public int sdcardstatus = -1;
    public int filesize = 0;
    public String hostaddress = "";
    public int isvalid = -1;
    public int Networkstandard = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.nProductId, 0);
        jceOutputStream.write(this.nSoftId, 1);
        jceOutputStream.write(this.nFileId, 2);
        jceOutputStream.write(this.nSuccess, 3);
        jceOutputStream.write(this.nDownSize, 4);
        jceOutputStream.write(this.nUsedTime, 5);
        jceOutputStream.write(this.nMaxSpeed, 6);
        jceOutputStream.write(this.nAvgSpeed, 7);
        jceOutputStream.write(this.nRetryTimes, 8);
        jceOutputStream.write(this.nDownType, 9);
        jceOutputStream.write((JceStruct) this.softkey, 10);
        if (this.categoryid != 0) {
            jceOutputStream.write(this.categoryid, 11);
        }
        if (this.pos != 0) {
            jceOutputStream.write(this.pos, 12);
        }
        if (this.url != null) {
            jceOutputStream.write(this.url, 13);
        }
        if (this.errorcode != 0) {
            jceOutputStream.write(this.errorcode, 14);
        }
        if (this.downnettype != 0) {
            jceOutputStream.write(this.downnettype, 15);
        }
        if (this.downnetname != null) {
            jceOutputStream.write(this.downnetname, 16);
        }
        if (this.reportnettype != 0) {
            jceOutputStream.write(this.reportnettype, 17);
        }
        if (this.reportnetname != null) {
            jceOutputStream.write(this.reportnetname, 18);
        }
        if (this.errormsg != null) {
            jceOutputStream.write(this.errormsg, 19);
        }
        if (this.rssi != -1) {
            jceOutputStream.write(this.rssi, 20);
        }
        if (this.sdcardstatus != -1) {
            jceOutputStream.write(this.sdcardstatus, 21);
        }
        if (this.filesize != 0) {
            jceOutputStream.write(this.filesize, 22);
        }
        if (this.hostaddress != null) {
            jceOutputStream.write(this.hostaddress, 23);
        }
        if (this.isvalid != -1) {
            jceOutputStream.write(this.isvalid, 24);
        }
        if (this.Networkstandard != 0) {
            jceOutputStream.write(this.Networkstandard, 25);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.nProductId = jceInputStream.read(this.nProductId, 0, true);
        this.nSoftId = jceInputStream.read(this.nSoftId, 1, true);
        this.nFileId = jceInputStream.read(this.nFileId, 2, true);
        this.nSuccess = jceInputStream.read(this.nSuccess, 3, true);
        this.nDownSize = jceInputStream.read(this.nDownSize, 4, true);
        this.nUsedTime = jceInputStream.read(this.nUsedTime, 5, true);
        this.nMaxSpeed = jceInputStream.read(this.nMaxSpeed, 6, true);
        this.nAvgSpeed = jceInputStream.read(this.nAvgSpeed, 7, true);
        this.nRetryTimes = jceInputStream.read(this.nRetryTimes, 8, true);
        this.nDownType = jceInputStream.read(this.nDownType, 9, true);
        if (f2198lw == null) {
            f2198lw = new C2859df();
        }
        this.softkey = (C2859df) jceInputStream.read((JceStruct) f2198lw, 10, true);
        this.categoryid = jceInputStream.read(this.categoryid, 11, false);
        this.pos = jceInputStream.read(this.pos, 12, false);
        this.url = jceInputStream.readString(13, false);
        this.errorcode = jceInputStream.read(this.errorcode, 14, false);
        this.downnettype = jceInputStream.read(this.downnettype, 15, false);
        this.downnetname = jceInputStream.readString(16, false);
        this.reportnettype = jceInputStream.read(this.reportnettype, 17, false);
        this.reportnetname = jceInputStream.readString(18, false);
        this.errormsg = jceInputStream.readString(19, false);
        this.rssi = jceInputStream.read(this.rssi, 20, false);
        this.sdcardstatus = jceInputStream.read(this.sdcardstatus, 21, false);
        this.filesize = jceInputStream.read(this.filesize, 22, false);
        this.hostaddress = jceInputStream.readString(23, false);
        this.isvalid = jceInputStream.read(this.isvalid, 24, false);
        this.Networkstandard = jceInputStream.read(this.Networkstandard, 25, false);
    }
}
