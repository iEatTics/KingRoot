package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.aq */
/* loaded from: classes.dex */
public final class C1459aq extends JceStruct {

    /* renamed from: hT */
    public int f1530hT = 2;

    /* renamed from: ii */
    public int f1531ii = 0;

    /* renamed from: it */
    public String f1532it = "";

    /* renamed from: iu */
    public String f1533iu = "";

    /* renamed from: iv */
    public String f1534iv = "";

    /* renamed from: dS */
    public int f1529dS = 0;

    /* renamed from: iw */
    public int f1535iw = 0;

    /* renamed from: ix */
    public long f1536ix = 0;

    /* renamed from: iy */
    public int f1537iy = 0;

    /* renamed from: iz */
    public String f1538iz = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1459aq();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1530hT, 0);
        jceOutputStream.write(this.f1531ii, 1);
        if (this.f1532it != null) {
            jceOutputStream.write(this.f1532it, 2);
        }
        if (this.f1533iu != null) {
            jceOutputStream.write(this.f1533iu, 3);
        }
        if (this.f1534iv != null) {
            jceOutputStream.write(this.f1534iv, 4);
        }
        if (this.f1529dS != 0) {
            jceOutputStream.write(this.f1529dS, 5);
        }
        if (this.f1535iw != 0) {
            jceOutputStream.write(this.f1535iw, 6);
        }
        if (this.f1536ix != 0) {
            jceOutputStream.write(this.f1536ix, 7);
        }
        if (this.f1537iy != 0) {
            jceOutputStream.write(this.f1537iy, 8);
        }
        if (this.f1538iz != null) {
            jceOutputStream.write(this.f1538iz, 9);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1530hT = jceInputStream.read(this.f1530hT, 0, true);
        this.f1531ii = jceInputStream.read(this.f1531ii, 1, true);
        this.f1532it = jceInputStream.readString(2, false);
        this.f1533iu = jceInputStream.readString(3, false);
        this.f1534iv = jceInputStream.readString(4, false);
        this.f1529dS = jceInputStream.read(this.f1529dS, 5, false);
        this.f1535iw = jceInputStream.read(this.f1535iw, 6, false);
        this.f1536ix = jceInputStream.read(this.f1536ix, 7, false);
        this.f1537iy = jceInputStream.read(this.f1537iy, 8, false);
        this.f1538iz = jceInputStream.readString(9, false);
    }
}
