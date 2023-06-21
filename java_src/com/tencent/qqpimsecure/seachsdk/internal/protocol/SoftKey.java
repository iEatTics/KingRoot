package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* loaded from: classes.dex */
public final class SoftKey extends JceStruct implements Comparable<SoftKey> {
    public String uid = "";
    public String softname = "";
    public String version = "";
    public String producttime = "";
    public String cert = "";
    public int versioncode = 0;
    public String name = "";
    public int isbuildin = 0;
    public String newest_version = "";
    public int old_versioncode = 0;
    public int categorytype = 0;
    public int category = 0;
    public int break_flag = 0;
    public int source = 0;
    public int sdk_version = 0;
    public int appid = 0;
    public int filesize = 0;
    public String apkFileMd5 = "";
    public int partnerId = 0;
    public String channelId = "";

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(SoftKey softKey) {
        int[] iArr = {JceUtil.compareTo(this.uid, softKey.uid), JceUtil.compareTo(this.softname, softKey.softname), JceUtil.compareTo(this.version, softKey.version), JceUtil.compareTo(this.producttime, softKey.producttime)};
        for (int i = 0; i < iArr.length; i++) {
            if (iArr[i] != 0) {
                return iArr[i];
            }
        }
        return 0;
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftKey();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.uid, 0);
        jceOutputStream.write(this.softname, 1);
        jceOutputStream.write(this.version, 2);
        if (this.producttime != null) {
            jceOutputStream.write(this.producttime, 3);
        }
        if (this.cert != null) {
            jceOutputStream.write(this.cert, 4);
        }
        if (this.versioncode != 0) {
            jceOutputStream.write(this.versioncode, 5);
        }
        if (this.name != null) {
            jceOutputStream.write(this.name, 6);
        }
        if (this.isbuildin != 0) {
            jceOutputStream.write(this.isbuildin, 7);
        }
        if (this.newest_version != null) {
            jceOutputStream.write(this.newest_version, 8);
        }
        if (this.old_versioncode != 0) {
            jceOutputStream.write(this.old_versioncode, 9);
        }
        if (this.categorytype != 0) {
            jceOutputStream.write(this.categorytype, 10);
        }
        if (this.category != 0) {
            jceOutputStream.write(this.category, 11);
        }
        if (this.break_flag != 0) {
            jceOutputStream.write(this.break_flag, 12);
        }
        if (this.source != 0) {
            jceOutputStream.write(this.source, 13);
        }
        if (this.sdk_version != 0) {
            jceOutputStream.write(this.sdk_version, 14);
        }
        if (this.appid != 0) {
            jceOutputStream.write(this.appid, 15);
        }
        if (this.filesize != 0) {
            jceOutputStream.write(this.filesize, 16);
        }
        if (this.apkFileMd5 != null) {
            jceOutputStream.write(this.apkFileMd5, 17);
        }
        if (this.partnerId != 0) {
            jceOutputStream.write(this.partnerId, 18);
        }
        if (this.channelId != null) {
            jceOutputStream.write(this.channelId, 19);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.uid = jceInputStream.readString(0, true);
        this.softname = jceInputStream.readString(1, true);
        this.version = jceInputStream.readString(2, true);
        this.producttime = jceInputStream.readString(3, false);
        this.cert = jceInputStream.readString(4, false);
        this.versioncode = jceInputStream.read(this.versioncode, 5, false);
        this.name = jceInputStream.readString(6, false);
        this.isbuildin = jceInputStream.read(this.isbuildin, 7, false);
        this.newest_version = jceInputStream.readString(8, false);
        this.old_versioncode = jceInputStream.read(this.old_versioncode, 9, false);
        this.categorytype = jceInputStream.read(this.categorytype, 10, false);
        this.category = jceInputStream.read(this.category, 11, false);
        this.break_flag = jceInputStream.read(this.break_flag, 12, false);
        this.source = jceInputStream.read(this.source, 13, false);
        this.sdk_version = jceInputStream.read(this.sdk_version, 14, false);
        this.appid = jceInputStream.read(this.appid, 15, false);
        this.filesize = jceInputStream.read(this.filesize, 16, false);
        this.apkFileMd5 = jceInputStream.readString(17, false);
        this.partnerId = jceInputStream.read(this.partnerId, 18, false);
        this.channelId = jceInputStream.readString(19, false);
    }
}
