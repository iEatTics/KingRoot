package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class VideoInfo extends JceStruct {
    public String title = "";
    public String videoId = "";
    public String videoUrl = "";
    public String videoImg = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new VideoInfo();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.videoId, 1);
        jceOutputStream.write(this.videoUrl, 2);
        jceOutputStream.write(this.videoImg, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.title = jceInputStream.readString(0, true);
        this.videoId = jceInputStream.readString(1, true);
        this.videoUrl = jceInputStream.readString(2, true);
        this.videoImg = jceInputStream.readString(3, true);
    }
}
