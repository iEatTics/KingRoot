package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SoftCommon extends JceStruct {
    static PictureUrl bQt;
    static ArrayList<VideoInfo> bQu;

    /* renamed from: nL */
    static byte[] f4916nL = new byte[1];

    /* renamed from: nM */
    static byte[] f4917nM;
    public String logoUrl = "";
    public long downloadTimes = 0;
    public String fileUrl = "";
    public long fileSize = 0;
    public String fileMd5 = "";
    public long flag = 0;
    public String softTitle = "";
    public String shortDesc = "";
    public int parentCategory = 0;
    public String subCategoryName = "";
    public int jumptype = 0;
    public int businessType = 0;
    public byte[] backendExtendInfo = null;
    public byte[] frontendExtendInfo = null;
    public PictureUrl softBackgroundPic = null;
    public boolean ifSelected = false;
    public ArrayList<VideoInfo> videoInfo = null;
    public String jumpUrl = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftCommon();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.logoUrl != null) {
            jceOutputStream.write(this.logoUrl, 0);
        }
        if (this.downloadTimes != 0) {
            jceOutputStream.write(this.downloadTimes, 1);
        }
        if (this.fileUrl != null) {
            jceOutputStream.write(this.fileUrl, 2);
        }
        if (this.fileSize != 0) {
            jceOutputStream.write(this.fileSize, 3);
        }
        if (this.fileMd5 != null) {
            jceOutputStream.write(this.fileMd5, 4);
        }
        if (this.flag != 0) {
            jceOutputStream.write(this.flag, 5);
        }
        if (this.softTitle != null) {
            jceOutputStream.write(this.softTitle, 6);
        }
        if (this.shortDesc != null) {
            jceOutputStream.write(this.shortDesc, 7);
        }
        if (this.parentCategory != 0) {
            jceOutputStream.write(this.parentCategory, 8);
        }
        if (this.subCategoryName != null) {
            jceOutputStream.write(this.subCategoryName, 9);
        }
        if (this.jumptype != 0) {
            jceOutputStream.write(this.jumptype, 10);
        }
        if (this.businessType != 0) {
            jceOutputStream.write(this.businessType, 11);
        }
        if (this.backendExtendInfo != null) {
            jceOutputStream.write(this.backendExtendInfo, 12);
        }
        if (this.frontendExtendInfo != null) {
            jceOutputStream.write(this.frontendExtendInfo, 13);
        }
        if (this.softBackgroundPic != null) {
            jceOutputStream.write((JceStruct) this.softBackgroundPic, 14);
        }
        jceOutputStream.write(this.ifSelected, 15);
        if (this.videoInfo != null) {
            jceOutputStream.write((Collection) this.videoInfo, 16);
        }
        if (this.jumpUrl != null) {
            jceOutputStream.write(this.jumpUrl, 17);
        }
    }

    static {
        f4916nL[0] = 0;
        f4917nM = new byte[1];
        f4917nM[0] = 0;
        bQt = new PictureUrl();
        bQu = new ArrayList<>();
        bQu.add(new VideoInfo());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.logoUrl = jceInputStream.readString(0, false);
        this.downloadTimes = jceInputStream.read(this.downloadTimes, 1, false);
        this.fileUrl = jceInputStream.readString(2, false);
        this.fileSize = jceInputStream.read(this.fileSize, 3, false);
        this.fileMd5 = jceInputStream.readString(4, false);
        this.flag = jceInputStream.read(this.flag, 5, false);
        this.softTitle = jceInputStream.readString(6, false);
        this.shortDesc = jceInputStream.readString(7, false);
        this.parentCategory = jceInputStream.read(this.parentCategory, 8, false);
        this.subCategoryName = jceInputStream.readString(9, false);
        this.jumptype = jceInputStream.read(this.jumptype, 10, false);
        this.businessType = jceInputStream.read(this.businessType, 11, false);
        this.backendExtendInfo = jceInputStream.read(f4916nL, 12, false);
        this.frontendExtendInfo = jceInputStream.read(f4917nM, 13, false);
        this.softBackgroundPic = (PictureUrl) jceInputStream.read((JceStruct) bQt, 14, false);
        this.ifSelected = jceInputStream.read(this.ifSelected, 15, false);
        this.videoInfo = (ArrayList) jceInputStream.read((JceInputStream) bQu, 16, false);
        this.jumpUrl = jceInputStream.readString(17, false);
    }
}
