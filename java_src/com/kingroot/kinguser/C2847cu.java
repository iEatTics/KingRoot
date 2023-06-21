package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.cu */
/* loaded from: classes.dex */
public final class C2847cu extends JceStruct {
    public String file = "";
    public String desc = "";
    public String uid = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.file, 0);
        if (this.desc != null) {
            jceOutputStream.write(this.desc, 1);
        }
        if (this.uid != null) {
            jceOutputStream.write(this.uid, 2);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.file = jceInputStream.readString(0, true);
        this.desc = jceInputStream.readString(1, false);
        this.uid = jceInputStream.readString(2, false);
    }
}
