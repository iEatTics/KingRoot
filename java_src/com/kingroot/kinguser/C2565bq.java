package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.bq */
/* loaded from: classes.dex */
public final class C2565bq extends JceStruct {

    /* renamed from: kM */
    public String f2002kM = "";

    /* renamed from: kN */
    public String f2003kN = "";

    /* renamed from: kO */
    public String f2004kO = "";

    /* renamed from: kP */
    public String f2005kP = "";

    /* renamed from: kQ */
    public String f2006kQ = "";

    /* renamed from: kR */
    public String f2007kR = "";

    /* renamed from: kS */
    public String f2008kS = "";

    /* renamed from: kT */
    public String f2009kT = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2002kM != null) {
            jceOutputStream.write(this.f2002kM, 0);
        }
        if (this.f2003kN != null) {
            jceOutputStream.write(this.f2003kN, 1);
        }
        if (this.f2004kO != null) {
            jceOutputStream.write(this.f2004kO, 3);
        }
        if (this.f2005kP != null) {
            jceOutputStream.write(this.f2005kP, 4);
        }
        if (this.f2006kQ != null) {
            jceOutputStream.write(this.f2006kQ, 5);
        }
        if (this.f2007kR != null) {
            jceOutputStream.write(this.f2007kR, 6);
        }
        if (this.f2008kS != null) {
            jceOutputStream.write(this.f2008kS, 7);
        }
        if (this.f2009kT != null) {
            jceOutputStream.write(this.f2009kT, 8);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2002kM = jceInputStream.readString(0, false);
        this.f2003kN = jceInputStream.readString(1, false);
        this.f2004kO = jceInputStream.readString(3, false);
        this.f2005kP = jceInputStream.readString(4, false);
        this.f2006kQ = jceInputStream.readString(5, false);
        this.f2007kR = jceInputStream.readString(6, false);
        this.f2008kS = jceInputStream.readString(7, false);
        this.f2009kT = jceInputStream.readString(8, false);
    }
}
