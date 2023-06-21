package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bs */
/* loaded from: classes.dex */
public final class C2608bs extends JceStruct {
    public String title = "";
    public String comment = "";
    public String user = "";
    public int score = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.title, 0);
        jceOutputStream.write(this.comment, 1);
        jceOutputStream.write(this.user, 2);
        jceOutputStream.write(this.score, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.title = jceInputStream.readString(0, true);
        this.comment = jceInputStream.readString(1, true);
        this.user = jceInputStream.readString(2, true);
        this.score = jceInputStream.read(this.score, 3, true);
    }
}
