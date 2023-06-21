package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SoftSimpleInfo extends JceStruct {
    static SoftKey bPZ = new SoftKey();

    /* renamed from: nj */
    static byte[] f4925nj = new byte[1];
    public SoftKey softkey = null;
    public String type = "";
    public String softclass = "";
    public String nick_name = "";
    public String logourl = "";
    public int filesize = 0;
    public String publishtime = "";
    public int downloadtimes = 0;
    public String fileurl = "";
    public int score = 0;
    public int suser = 0;
    public int iProductID = 0;
    public int iSoftID = 0;
    public int iFileID = 0;
    public int feetype = 0;
    public float fee = 0.0f;
    public String pname = "";
    public String pageurl = "";
    public float lfee = 0.0f;
    public float cn_fee = 0.0f;
    public float cn_lfee = 0.0f;
    public byte[] expand = null;
    public int safeType = 0;
    public String strSource = "";
    public String break_fileurl = "";
    public String break_mini_os = "";
    public int sign = 0;
    public int updatetime = 0;
    public int topsign = 0;
    public String diffFileUrl = "";
    public long diffFileSizeByte = 0;
    public String apkFileMd5 = "";
    public int plugintype = 0;
    public String likepercent = "";
    public String channelId = "";
    public String short_desc = "";
    public String softTitle = "";
    public String subSoftTitle = "";
    public int jumptype = 0;
    public int appParentCategory = 0;
    public String appSubCategoryName = "";
    public String strExtend = "";
    public int position = 0;
    public int businessType = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftSimpleInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        if (this.type != null) {
            jceOutputStream.write(this.type, 1);
        }
        if (this.softclass != null) {
            jceOutputStream.write(this.softclass, 2);
        }
        if (this.nick_name != null) {
            jceOutputStream.write(this.nick_name, 3);
        }
        if (this.logourl != null) {
            jceOutputStream.write(this.logourl, 4);
        }
        if (this.filesize != 0) {
            jceOutputStream.write(this.filesize, 5);
        }
        if (this.publishtime != null) {
            jceOutputStream.write(this.publishtime, 6);
        }
        if (this.downloadtimes != 0) {
            jceOutputStream.write(this.downloadtimes, 7);
        }
        if (this.fileurl != null) {
            jceOutputStream.write(this.fileurl, 8);
        }
        if (this.score != 0) {
            jceOutputStream.write(this.score, 9);
        }
        if (this.suser != 0) {
            jceOutputStream.write(this.suser, 10);
        }
        if (this.iProductID != 0) {
            jceOutputStream.write(this.iProductID, 11);
        }
        if (this.iSoftID != 0) {
            jceOutputStream.write(this.iSoftID, 12);
        }
        if (this.iFileID != 0) {
            jceOutputStream.write(this.iFileID, 13);
        }
        if (this.feetype != 0) {
            jceOutputStream.write(this.feetype, 14);
        }
        if (this.fee != 0.0f) {
            jceOutputStream.write(this.fee, 15);
        }
        if (this.pname != null) {
            jceOutputStream.write(this.pname, 16);
        }
        if (this.pageurl != null) {
            jceOutputStream.write(this.pageurl, 17);
        }
        if (this.lfee != 0.0f) {
            jceOutputStream.write(this.lfee, 18);
        }
        if (this.cn_fee != 0.0f) {
            jceOutputStream.write(this.cn_fee, 19);
        }
        if (this.cn_lfee != 0.0f) {
            jceOutputStream.write(this.cn_lfee, 20);
        }
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 21);
        }
        jceOutputStream.write(this.safeType, 22);
        if (this.strSource != null) {
            jceOutputStream.write(this.strSource, 23);
        }
        if (this.break_fileurl != null) {
            jceOutputStream.write(this.break_fileurl, 24);
        }
        if (this.break_mini_os != null) {
            jceOutputStream.write(this.break_mini_os, 25);
        }
        if (this.sign != 0) {
            jceOutputStream.write(this.sign, 26);
        }
        if (this.updatetime != 0) {
            jceOutputStream.write(this.updatetime, 27);
        }
        if (this.topsign != 0) {
            jceOutputStream.write(this.topsign, 28);
        }
        if (this.diffFileUrl != null) {
            jceOutputStream.write(this.diffFileUrl, 29);
        }
        if (this.diffFileSizeByte != 0) {
            jceOutputStream.write(this.diffFileSizeByte, 30);
        }
        if (this.apkFileMd5 != null) {
            jceOutputStream.write(this.apkFileMd5, 31);
        }
        jceOutputStream.write(this.plugintype, 32);
        if (this.likepercent != null) {
            jceOutputStream.write(this.likepercent, 33);
        }
        if (this.channelId != null) {
            jceOutputStream.write(this.channelId, 34);
        }
        if (this.short_desc != null) {
            jceOutputStream.write(this.short_desc, 35);
        }
        if (this.softTitle != null) {
            jceOutputStream.write(this.softTitle, 36);
        }
        if (this.subSoftTitle != null) {
            jceOutputStream.write(this.subSoftTitle, 37);
        }
        if (this.jumptype != 0) {
            jceOutputStream.write(this.jumptype, 38);
        }
        jceOutputStream.write(this.appParentCategory, 39);
        if (this.appSubCategoryName != null) {
            jceOutputStream.write(this.appSubCategoryName, 40);
        }
        if (this.strExtend != null) {
            jceOutputStream.write(this.strExtend, 41);
        }
        if (this.position != 0) {
            jceOutputStream.write(this.position, 42);
        }
        if (this.businessType != 0) {
            jceOutputStream.write(this.businessType, 43);
        }
    }

    static {
        f4925nj[0] = 0;
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.softkey = (SoftKey) jceInputStream.read((JceStruct) bPZ, 0, true);
        this.type = jceInputStream.readString(1, false);
        this.softclass = jceInputStream.readString(2, false);
        this.nick_name = jceInputStream.readString(3, false);
        this.logourl = jceInputStream.readString(4, false);
        this.filesize = jceInputStream.read(this.filesize, 5, false);
        this.publishtime = jceInputStream.readString(6, false);
        this.downloadtimes = jceInputStream.read(this.downloadtimes, 7, false);
        this.fileurl = jceInputStream.readString(8, false);
        this.score = jceInputStream.read(this.score, 9, false);
        this.suser = jceInputStream.read(this.suser, 10, false);
        this.iProductID = jceInputStream.read(this.iProductID, 11, false);
        this.iSoftID = jceInputStream.read(this.iSoftID, 12, false);
        this.iFileID = jceInputStream.read(this.iFileID, 13, false);
        this.feetype = jceInputStream.read(this.feetype, 14, false);
        this.fee = jceInputStream.read(this.fee, 15, false);
        this.pname = jceInputStream.readString(16, false);
        this.pageurl = jceInputStream.readString(17, false);
        this.lfee = jceInputStream.read(this.lfee, 18, false);
        this.cn_fee = jceInputStream.read(this.cn_fee, 19, false);
        this.cn_lfee = jceInputStream.read(this.cn_lfee, 20, false);
        this.expand = jceInputStream.read(f4925nj, 21, false);
        this.safeType = jceInputStream.read(this.safeType, 22, false);
        this.strSource = jceInputStream.readString(23, false);
        this.break_fileurl = jceInputStream.readString(24, false);
        this.break_mini_os = jceInputStream.readString(25, false);
        this.sign = jceInputStream.read(this.sign, 26, false);
        this.updatetime = jceInputStream.read(this.updatetime, 27, false);
        this.topsign = jceInputStream.read(this.topsign, 28, false);
        this.diffFileUrl = jceInputStream.readString(29, false);
        this.diffFileSizeByte = jceInputStream.read(this.diffFileSizeByte, 30, false);
        this.apkFileMd5 = jceInputStream.readString(31, false);
        this.plugintype = jceInputStream.read(this.plugintype, 32, false);
        this.likepercent = jceInputStream.readString(33, false);
        this.channelId = jceInputStream.readString(34, false);
        this.short_desc = jceInputStream.readString(35, false);
        this.softTitle = jceInputStream.readString(36, false);
        this.subSoftTitle = jceInputStream.readString(37, false);
        this.jumptype = jceInputStream.read(this.jumptype, 38, false);
        this.appParentCategory = jceInputStream.read(this.appParentCategory, 39, false);
        this.appSubCategoryName = jceInputStream.readString(40, false);
        this.strExtend = jceInputStream.readString(41, false);
        this.position = jceInputStream.read(this.position, 42, false);
        this.businessType = jceInputStream.read(this.businessType, 43, false);
    }
}
