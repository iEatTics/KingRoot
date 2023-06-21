package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.dc */
/* loaded from: classes.dex */
public final class C2856dc extends JceStruct implements Cloneable {

    /* renamed from: hT */
    public int f2423hT = 2;

    /* renamed from: ii */
    public int f2424ii = 0;

    /* renamed from: it */
    public String f2425it = "";

    /* renamed from: iu */
    public String f2426iu = "";

    /* renamed from: iv */
    public String f2427iv = "";

    /* renamed from: dS */
    public int f2422dS = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.f2423hT, "phonetype");
        jceDisplayer.display(this.f2424ii, "authType");
        jceDisplayer.display(this.f2425it, "guid");
        jceDisplayer.display(this.f2426iu, "ext1");
        jceDisplayer.display(this.f2427iv, "sessionId");
        jceDisplayer.display(this.f2422dS, "buildno");
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2423hT, 0);
        jceOutputStream.write(this.f2424ii, 1);
        if (this.f2425it != null) {
            jceOutputStream.write(this.f2425it, 2);
        }
        if (this.f2426iu != null) {
            jceOutputStream.write(this.f2426iu, 3);
        }
        if (this.f2427iv != null) {
            jceOutputStream.write(this.f2427iv, 4);
        }
        if (this.f2422dS != 0) {
            jceOutputStream.write(this.f2422dS, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2423hT = jceInputStream.read(this.f2423hT, 0, true);
        this.f2424ii = jceInputStream.read(this.f2424ii, 1, true);
        this.f2425it = jceInputStream.readString(2, false);
        this.f2426iu = jceInputStream.readString(3, false);
        this.f2427iv = jceInputStream.readString(4, false);
        this.f2422dS = jceInputStream.read(this.f2422dS, 5, false);
    }
}
