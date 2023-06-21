package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SoftDetail extends JceStruct {
    static SoftKeyV2 bPK = new SoftKeyV2();
    static SoftCommon bQv = new SoftCommon();
    static ArrayList<SnapShotPic> bQw = new ArrayList<>();
    static SoftSearchInfo bQx;
    public SoftKeyV2 softKey = null;
    public SoftCommon softCommon = null;
    public String publishTime = "";
    public ArrayList<SnapShotPic> snapShotUrls = null;
    public float averageRating = 0.0f;
    public long ratingCount = 0;
    public String description = "";
    public String newFeature = "";
    public String authorName = "";
    public SoftSearchInfo softSearchInfo = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SoftDetail();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softKey, 0);
        if (this.softCommon != null) {
            jceOutputStream.write((JceStruct) this.softCommon, 1);
        }
        if (this.publishTime != null) {
            jceOutputStream.write(this.publishTime, 2);
        }
        if (this.snapShotUrls != null) {
            jceOutputStream.write((Collection) this.snapShotUrls, 3);
        }
        if (this.averageRating != 0.0f) {
            jceOutputStream.write(this.averageRating, 4);
        }
        if (this.ratingCount != 0) {
            jceOutputStream.write(this.ratingCount, 5);
        }
        if (this.description != null) {
            jceOutputStream.write(this.description, 6);
        }
        if (this.newFeature != null) {
            jceOutputStream.write(this.newFeature, 7);
        }
        if (this.authorName != null) {
            jceOutputStream.write(this.authorName, 8);
        }
        if (this.softSearchInfo != null) {
            jceOutputStream.write((JceStruct) this.softSearchInfo, 9);
        }
    }

    static {
        bQw.add(new SnapShotPic());
        bQx = new SoftSearchInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.softKey = (SoftKeyV2) jceInputStream.read((JceStruct) bPK, 0, true);
        this.softCommon = (SoftCommon) jceInputStream.read((JceStruct) bQv, 1, false);
        this.publishTime = jceInputStream.readString(2, false);
        this.snapShotUrls = (ArrayList) jceInputStream.read((JceInputStream) bQw, 3, false);
        this.averageRating = jceInputStream.read(this.averageRating, 4, false);
        this.ratingCount = jceInputStream.read(this.ratingCount, 5, false);
        this.description = jceInputStream.readString(6, false);
        this.newFeature = jceInputStream.readString(7, false);
        this.authorName = jceInputStream.readString(8, false);
        this.softSearchInfo = (SoftSearchInfo) jceInputStream.read((JceStruct) bQx, 9, false);
    }
}
