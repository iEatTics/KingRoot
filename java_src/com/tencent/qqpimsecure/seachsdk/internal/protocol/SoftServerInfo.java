package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public final class SoftServerInfo extends JceStruct {

    /* renamed from: nj */
    static byte[] f4924nj;
    public int status = 0;
    public byte[] expand = null;
    public int servertime = 0;
    public int softupdate_tips = 1;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.status, 0);
        if (this.expand != null) {
            jceOutputStream.write(this.expand, 1);
        }
        jceOutputStream.write(this.servertime, 2);
        jceOutputStream.write(this.softupdate_tips, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.status = jceInputStream.read(this.status, 0, true);
        if (f4924nj == null) {
            f4924nj = new byte[1];
            f4924nj[0] = 0;
        }
        this.expand = jceInputStream.read(f4924nj, 1, false);
        this.servertime = jceInputStream.read(this.servertime, 2, false);
        this.softupdate_tips = jceInputStream.read(this.softupdate_tips, 3, false);
    }
}
