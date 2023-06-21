package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.et */
/* loaded from: classes.dex */
public final class C3032et extends JceStruct {
    public String appName = "";

    /* renamed from: py */
    public String f2629py = "";

    /* renamed from: kO */
    public String f2622kO = "";

    /* renamed from: kP */
    public String f2623kP = "";

    /* renamed from: kQ */
    public String f2624kQ = "";

    /* renamed from: kR */
    public String f2625kR = "";

    /* renamed from: kS */
    public String f2626kS = "";

    /* renamed from: kT */
    public String f2627kT = "";

    /* renamed from: px */
    public int f2628px = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.appName, 0);
        jceOutputStream.write(this.f2629py, 1);
        jceOutputStream.write(this.f2622kO, 2);
        jceOutputStream.write(this.f2623kP, 3);
        jceOutputStream.write(this.f2624kQ, 4);
        if (this.f2625kR != null) {
            jceOutputStream.write(this.f2625kR, 5);
        }
        if (this.f2626kS != null) {
            jceOutputStream.write(this.f2626kS, 6);
        }
        if (this.f2627kT != null) {
            jceOutputStream.write(this.f2627kT, 7);
        }
        if (this.f2628px != 0) {
            jceOutputStream.write(this.f2628px, 8);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.appName = jceInputStream.readString(0, true);
        this.f2629py = jceInputStream.readString(1, true);
        this.f2622kO = jceInputStream.readString(2, true);
        this.f2623kP = jceInputStream.readString(3, true);
        this.f2624kQ = jceInputStream.readString(4, true);
        this.f2625kR = jceInputStream.readString(5, false);
        this.f2626kS = jceInputStream.readString(6, false);
        this.f2627kT = jceInputStream.readString(7, false);
        this.f2628px = jceInputStream.read(this.f2628px, 8, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
