package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class ShowDetail extends JceStruct {
    static PictureUrl bQs = new PictureUrl();
    static CircleInfo bPR = new CircleInfo();
    public long groupId = 0;
    public String title = "";
    public String subTitle = "";
    public PictureUrl groupPicUrl = null;
    public int showType = 0;
    public CircleInfo groupCircleInfo = null;
    public int buttonNextAction = 0;
    public long tagId = -1;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new ShowDetail();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.groupId != 0) {
            jceOutputStream.write(this.groupId, 0);
        }
        if (this.title != null) {
            jceOutputStream.write(this.title, 1);
        }
        if (this.subTitle != null) {
            jceOutputStream.write(this.subTitle, 2);
        }
        if (this.groupPicUrl != null) {
            jceOutputStream.write((JceStruct) this.groupPicUrl, 3);
        }
        jceOutputStream.write(this.showType, 4);
        if (this.groupCircleInfo != null) {
            jceOutputStream.write((JceStruct) this.groupCircleInfo, 5);
        }
        if (this.buttonNextAction != 0) {
            jceOutputStream.write(this.buttonNextAction, 6);
        }
        if (this.tagId != -1) {
            jceOutputStream.write(this.tagId, 7);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.groupId = jceInputStream.read(this.groupId, 0, false);
        this.title = jceInputStream.readString(1, false);
        this.subTitle = jceInputStream.readString(2, false);
        this.groupPicUrl = (PictureUrl) jceInputStream.read((JceStruct) bQs, 3, false);
        this.showType = jceInputStream.read(this.showType, 4, false);
        this.groupCircleInfo = (CircleInfo) jceInputStream.read((JceStruct) bPR, 5, false);
        this.buttonNextAction = jceInputStream.read(this.buttonNextAction, 6, false);
        this.tagId = jceInputStream.read(this.tagId, 7, false);
    }
}
