package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class BannerDetail extends JceStruct {
    static PictureUrl bPJ = new PictureUrl();
    static SoftKeyV2 bPK = new SoftKeyV2();
    public long bannerId = 0;
    public int jumpType = 0;
    public PictureUrl pictureUrl = null;
    public SoftKeyV2 softKey = null;
    public String jumpUrl = "";
    public long categoryId = 0;
    public long expireTime = 0;
    public int showType = 0;
    public String activityId = "";
    public int bannerShowType = 0;
    public long groupId = -1;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new BannerDetail();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.bannerId, 0);
        jceOutputStream.write(this.jumpType, 1);
        jceOutputStream.write((JceStruct) this.pictureUrl, 2);
        if (this.softKey != null) {
            jceOutputStream.write((JceStruct) this.softKey, 3);
        }
        if (this.jumpUrl != null) {
            jceOutputStream.write(this.jumpUrl, 4);
        }
        if (this.categoryId != 0) {
            jceOutputStream.write(this.categoryId, 5);
        }
        if (this.expireTime != 0) {
            jceOutputStream.write(this.expireTime, 6);
        }
        if (this.showType != 0) {
            jceOutputStream.write(this.showType, 7);
        }
        if (this.activityId != null) {
            jceOutputStream.write(this.activityId, 8);
        }
        jceOutputStream.write(this.bannerShowType, 9);
        if (this.groupId != -1) {
            jceOutputStream.write(this.groupId, 10);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.bannerId = jceInputStream.read(this.bannerId, 0, true);
        this.jumpType = jceInputStream.read(this.jumpType, 1, true);
        this.pictureUrl = (PictureUrl) jceInputStream.read((JceStruct) bPJ, 2, true);
        this.softKey = (SoftKeyV2) jceInputStream.read((JceStruct) bPK, 3, false);
        this.jumpUrl = jceInputStream.readString(4, false);
        this.categoryId = jceInputStream.read(this.categoryId, 5, false);
        this.expireTime = jceInputStream.read(this.expireTime, 6, false);
        this.showType = jceInputStream.read(this.showType, 7, false);
        this.activityId = jceInputStream.readString(8, false);
        this.bannerShowType = jceInputStream.read(this.bannerShowType, 9, false);
        this.groupId = jceInputStream.read(this.groupId, 10, false);
    }
}
