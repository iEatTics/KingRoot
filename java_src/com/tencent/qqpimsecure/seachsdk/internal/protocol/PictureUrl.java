package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class PictureUrl extends JceStruct {
    public String picture1 = "";
    public String picture2 = "";
    public String picture3 = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new PictureUrl();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.picture1 != null) {
            jceOutputStream.write(this.picture1, 0);
        }
        if (this.picture2 != null) {
            jceOutputStream.write(this.picture2, 1);
        }
        if (this.picture3 != null) {
            jceOutputStream.write(this.picture3, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.picture1 = jceInputStream.readString(0, false);
        this.picture2 = jceInputStream.readString(1, false);
        this.picture3 = jceInputStream.readString(2, false);
    }
}
