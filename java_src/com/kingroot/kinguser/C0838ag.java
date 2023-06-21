package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ag */
/* loaded from: classes.dex */
public final class C0838ag extends JceStruct {
    public String title = "";

    /* renamed from: gc */
    public String f1417gc = "";
    public int type = 0;

    /* renamed from: gS */
    public int f1416gS = 0;
    public String url = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.title != null) {
            jceOutputStream.write(this.title, 0);
        }
        if (this.f1417gc != null) {
            jceOutputStream.write(this.f1417gc, 1);
        }
        if (this.type != 0) {
            jceOutputStream.write(this.type, 2);
        }
        if (this.f1416gS != 0) {
            jceOutputStream.write(this.f1416gS, 3);
        }
        if (this.url != null) {
            jceOutputStream.write(this.url, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.title = jceInputStream.readString(0, false);
        this.f1417gc = jceInputStream.readString(1, false);
        this.type = jceInputStream.read(this.type, 2, false);
        this.f1416gS = jceInputStream.read(this.f1416gS, 3, false);
        this.url = jceInputStream.readString(4, false);
    }
}
