package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.de */
/* loaded from: classes.dex */
public final class C2858de extends JceStruct {

    /* renamed from: lw */
    static C2859df f2434lw;

    /* renamed from: ne */
    static ArrayList<C2847cu> f2435ne;

    /* renamed from: nf */
    static ArrayList<String> f2436nf;

    /* renamed from: ng */
    static ArrayList<C2608bs> f2437ng;

    /* renamed from: nh */
    static ArrayList<String> f2438nh;

    /* renamed from: ni */
    static ArrayList<String> f2439ni;

    /* renamed from: nj */
    static byte[] f2440nj;
    public C2859df softkey = null;
    public String short_desc = "";
    public String description = "";
    public String type = "";
    public String softclass = "";
    public ArrayList<C2847cu> procinfo = null;
    public int smsmonitor = 0;
    public int phonemonitor = 0;
    public int netaccess = 0;
    public int autostart = 0;
    public int asopt = 0;
    public String nick_name = "";
    public int reportFeature = 0;
    public String logourl = "";
    public int filesize = 0;
    public String publishtime = "";
    public int downloadtimes = 0;
    public String function = "";
    public String fileurl = "";
    public ArrayList<String> picurls = null;
    public int official = 0;
    public int update = 0;
    public int score = 0;
    public int suser = 0;
    public int softDescTimestamp = 0;
    public int iProductID = 0;
    public int iSoftID = 0;
    public int iFileID = 0;
    public int feetype = 0;
    public float fee = 0.0f;
    public String pname = "";
    public String hprice = "";
    public ArrayList<C2608bs> comments = null;
    public ArrayList<String> logourls = null;
    public String pageurl = "";
    public float lfee = 0.0f;
    public int isoftclass = 0;
    public float cn_fee = 0.0f;
    public float cn_lfee = 0.0f;
    public ArrayList<String> srcpicurls = null;
    public byte[] expand = null;
    public String strSource = "";
    public String strLinkContent = "";
    public String strLinkUrl = "";
    public String break_fileurl = "";
    public String version_break = "";
    public String break_mini_os = "";
    public String diffFileUrl = "";
    public long diffFileSizeByte = 0;
    public String apkFileMd5 = "";
    public int plugintype = 0;
    public int sign = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 0);
        if (this.short_desc != null) {
            jceOutputStream.write(this.short_desc, 1);
        }
        if (this.description != null) {
            jceOutputStream.write(this.description, 2);
        }
        if (this.type != null) {
            jceOutputStream.write(this.type, 3);
        }
        if (this.softclass != null) {
            jceOutputStream.write(this.softclass, 4);
        }
        if (this.procinfo != null) {
            jceOutputStream.write((Collection) this.procinfo, 5);
        }
        if (this.smsmonitor != 0) {
            jceOutputStream.write(this.smsmonitor, 6);
        }
        if (this.phonemonitor != 0) {
            jceOutputStream.write(this.phonemonitor, 7);
        }
        if (this.netaccess != 0) {
            jceOutputStream.write(this.netaccess, 8);
        }
        if (this.autostart != 0) {
            jceOutputStream.write(this.autostart, 9);
        }
        if (this.asopt != 0) {
            jceOutputStream.write(this.asopt, 10);
        }
        if (this.nick_name != null) {
            jceOutputStream.write(this.nick_name, 11);
        }
        if (this.reportFeature != 0) {
            jceOutputStream.write(this.reportFeature, 12);
        }
        if (this.logourl != null) {
            jceOutputStream.write(this.logourl, 13);
        }
        if (this.filesize != 0) {
            jceOutputStream.write(this.filesize, 14);
        }
        if (this.publishtime != null) {
            jceOutputStream.write(this.publishtime, 15);
        }
        if (this.downloadtimes != 0) {
            jceOutputStream.write(this.downloadtimes, 16);
        }
        if (this.function != null) {
            jceOutputStream.write(this.function, 17);
        }
        if (this.fileurl != null) {
            jceOutputStream.write(this.fileurl, 18);
        }
        if (this.picurls != null) {
            jceOutputStream.write((Collection) this.picurls, 19);
        }
        if (this.official != 0) {
            jceOutputStream.write(this.official, 20);
        }
        if (this.update != 0) {
            jceOutputStream.write(this.update, 21);
        }
        if (this.score != 0) {
            jceOutputStream.write(this.score, 22);
        }
        if (this.suser != 0) {
            jceOutputStream.write(this.suser, 23);
        }
        if (this.softDescTimestamp != 0) {
            jceOutputStream.write(this.softDescTimestamp, 24);
        }
        if (this.iProductID != 0) {
            jceOutputStream.write(this.iProductID, 25);
        }
        if (this.iSoftID != 0) {
            jceOutputStream.write(this.iSoftID, 26);
        }
        if (this.iFileID != 0) {
            jceOutputStream.write(this.iFileID, 27);
        }
        if (this.feetype != 0) {
            jceOutputStream.write(this.feetype, 28);
        }
        if (this.fee != 0.0f) {
            jceOutputStream.write(this.fee, 29);
        }
        if (this.pname != null) {
            jceOutputStream.write(this.pname, 30);
        }
        if (this.hprice != null) {
            jceOutputStream.write(this.hprice, 31);
        }
        if (this.comments != null) {
            jceOutputStream.write((Collection) this.comments, 32);
        }
        if (this.logourls != null) {
            jceOutputStream.write((Collection) this.logourls, 33);
        }
        if (this.pageurl != null) {
            jceOutputStream.write(this.pageurl, 34);
        }
        if (this.lfee != 0.0f) {
            jceOutputStream.write(this.lfee, 35);
        }
        if (this.isoftclass != 0) {
            jceOutputStream.write(this.isoftclass, 36);
        }
        if (this.cn_fee != 0.0f) {
            jceOutputStream.write(this.cn_fee, 37);
        }
        if (this.cn_lfee != 0.0f) {
            jceOutputStream.write(this.cn_lfee, 38);
        }
        if (this.srcpicurls != null) {
            jceOutputStream.write((Collection) this.srcpicurls, 39);
        }
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 40);
        }
        if (this.strSource != null) {
            jceOutputStream.write(this.strSource, 41);
        }
        if (this.strLinkContent != null) {
            jceOutputStream.write(this.strLinkContent, 42);
        }
        if (this.strLinkUrl != null) {
            jceOutputStream.write(this.strLinkUrl, 43);
        }
        if (this.break_fileurl != null) {
            jceOutputStream.write(this.break_fileurl, 44);
        }
        if (this.version_break != null) {
            jceOutputStream.write(this.version_break, 45);
        }
        if (this.break_mini_os != null) {
            jceOutputStream.write(this.break_mini_os, 46);
        }
        if (this.diffFileUrl != null) {
            jceOutputStream.write(this.diffFileUrl, 47);
        }
        if (this.diffFileSizeByte != 0) {
            jceOutputStream.write(this.diffFileSizeByte, 48);
        }
        if (this.apkFileMd5 != null) {
            jceOutputStream.write(this.apkFileMd5, 49);
        }
        jceOutputStream.write(this.plugintype, 50);
        if (this.sign != 0) {
            jceOutputStream.write(this.sign, 51);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2434lw == null) {
            f2434lw = new C2859df();
        }
        this.softkey = (C2859df) jceInputStream.read((JceStruct) f2434lw, 0, true);
        this.short_desc = jceInputStream.readString(1, false);
        this.description = jceInputStream.readString(2, false);
        this.type = jceInputStream.readString(3, false);
        this.softclass = jceInputStream.readString(4, false);
        if (f2435ne == null) {
            f2435ne = new ArrayList<>();
            f2435ne.add(new C2847cu());
        }
        this.procinfo = (ArrayList) jceInputStream.read((JceInputStream) f2435ne, 5, false);
        this.smsmonitor = jceInputStream.read(this.smsmonitor, 6, false);
        this.phonemonitor = jceInputStream.read(this.phonemonitor, 7, false);
        this.netaccess = jceInputStream.read(this.netaccess, 8, false);
        this.autostart = jceInputStream.read(this.autostart, 9, false);
        this.asopt = jceInputStream.read(this.asopt, 10, false);
        this.nick_name = jceInputStream.readString(11, false);
        this.reportFeature = jceInputStream.read(this.reportFeature, 12, false);
        this.logourl = jceInputStream.readString(13, false);
        this.filesize = jceInputStream.read(this.filesize, 14, false);
        this.publishtime = jceInputStream.readString(15, false);
        this.downloadtimes = jceInputStream.read(this.downloadtimes, 16, false);
        this.function = jceInputStream.readString(17, false);
        this.fileurl = jceInputStream.readString(18, false);
        if (f2436nf == null) {
            f2436nf = new ArrayList<>();
            f2436nf.add("");
        }
        this.picurls = (ArrayList) jceInputStream.read((JceInputStream) f2436nf, 19, false);
        this.official = jceInputStream.read(this.official, 20, false);
        this.update = jceInputStream.read(this.update, 21, false);
        this.score = jceInputStream.read(this.score, 22, false);
        this.suser = jceInputStream.read(this.suser, 23, false);
        this.softDescTimestamp = jceInputStream.read(this.softDescTimestamp, 24, false);
        this.iProductID = jceInputStream.read(this.iProductID, 25, false);
        this.iSoftID = jceInputStream.read(this.iSoftID, 26, false);
        this.iFileID = jceInputStream.read(this.iFileID, 27, false);
        this.feetype = jceInputStream.read(this.feetype, 28, false);
        this.fee = jceInputStream.read(this.fee, 29, false);
        this.pname = jceInputStream.readString(30, false);
        this.hprice = jceInputStream.readString(31, false);
        if (f2437ng == null) {
            f2437ng = new ArrayList<>();
            f2437ng.add(new C2608bs());
        }
        this.comments = (ArrayList) jceInputStream.read((JceInputStream) f2437ng, 32, false);
        if (f2438nh == null) {
            f2438nh = new ArrayList<>();
            f2438nh.add("");
        }
        this.logourls = (ArrayList) jceInputStream.read((JceInputStream) f2438nh, 33, false);
        this.pageurl = jceInputStream.readString(34, false);
        this.lfee = jceInputStream.read(this.lfee, 35, false);
        this.isoftclass = jceInputStream.read(this.isoftclass, 36, false);
        this.cn_fee = jceInputStream.read(this.cn_fee, 37, false);
        this.cn_lfee = jceInputStream.read(this.cn_lfee, 38, false);
        if (f2439ni == null) {
            f2439ni = new ArrayList<>();
            f2439ni.add("");
        }
        this.srcpicurls = (ArrayList) jceInputStream.read((JceInputStream) f2439ni, 39, false);
        if (f2440nj == null) {
            f2440nj = new byte[1];
            f2440nj[0] = 0;
        }
        this.expand = jceInputStream.read(f2440nj, 40, false);
        this.strSource = jceInputStream.readString(41, false);
        this.strLinkContent = jceInputStream.readString(42, false);
        this.strLinkUrl = jceInputStream.readString(43, false);
        this.break_fileurl = jceInputStream.readString(44, false);
        this.version_break = jceInputStream.readString(45, false);
        this.break_mini_os = jceInputStream.readString(46, false);
        this.diffFileUrl = jceInputStream.readString(47, false);
        this.diffFileSizeByte = jceInputStream.read(this.diffFileSizeByte, 48, false);
        this.apkFileMd5 = jceInputStream.readString(49, false);
        this.plugintype = jceInputStream.read(this.plugintype, 50, false);
        this.sign = jceInputStream.read(this.sign, 51, false);
    }
}
