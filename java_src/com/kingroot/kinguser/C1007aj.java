package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.aj */
/* loaded from: classes.dex */
public final class C1007aj extends JceStruct {
    public String title = "";

    /* renamed from: gc */
    public String f1459gc = "";
    public int type = 0;

    /* renamed from: gS */
    public int f1458gS = 0;

    /* renamed from: hq */
    public int f1460hq = 0;
    public int bgColor = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.title != null) {
            jceOutputStream.write(this.title, 0);
        }
        if (this.f1459gc != null) {
            jceOutputStream.write(this.f1459gc, 1);
        }
        if (this.type != 0) {
            jceOutputStream.write(this.type, 2);
        }
        if (this.f1458gS != 0) {
            jceOutputStream.write(this.f1458gS, 3);
        }
        if (this.f1460hq != 0) {
            jceOutputStream.write(this.f1460hq, 4);
        }
        if (this.bgColor != 0) {
            jceOutputStream.write(this.bgColor, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.title = jceInputStream.readString(0, false);
        this.f1459gc = jceInputStream.readString(1, false);
        this.type = jceInputStream.read(this.type, 2, false);
        this.f1458gS = jceInputStream.read(this.f1458gS, 3, false);
        this.f1460hq = jceInputStream.read(this.f1460hq, 4, false);
        this.bgColor = jceInputStream.read(this.bgColor, 5, false);
    }
}
