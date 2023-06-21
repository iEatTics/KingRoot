package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.cg */
/* loaded from: classes.dex */
public final class C2802cg extends JceStruct implements Cloneable {

    /* renamed from: lQ */
    static ArrayList<byte[]> f2309lQ;

    /* renamed from: lJ */
    public int f2310lJ = 0;

    /* renamed from: lK */
    public int f2311lK = 0;

    /* renamed from: lL */
    public int f2312lL = 0;

    /* renamed from: lM */
    public ArrayList<byte[]> f2313lM = null;

    /* renamed from: lN */
    public int f2314lN = 0;

    /* renamed from: lO */
    public boolean f2315lO = false;

    /* renamed from: lP */
    public int f2316lP = 0;

    /* renamed from: k */
    public void m4356k(int i) {
        this.f2310lJ = i;
    }

    /* renamed from: l */
    public void m4355l(int i) {
        this.f2311lK = i;
    }

    /* renamed from: m */
    public void m4354m(int i) {
        this.f2312lL = i;
    }

    /* renamed from: b */
    public void m4357b(ArrayList<byte[]> arrayList) {
        this.f2313lM = arrayList;
    }

    /* renamed from: n */
    public void m4353n(int i) {
        this.f2314lN = i;
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2310lJ, 0);
        jceOutputStream.write(this.f2311lK, 1);
        jceOutputStream.write(this.f2312lL, 2);
        jceOutputStream.write((Collection) this.f2313lM, 3);
        if (this.f2314lN != 0) {
            jceOutputStream.write(this.f2314lN, 4);
        }
        if (this.f2315lO) {
            jceOutputStream.write(this.f2315lO, 5);
        }
        if (this.f2316lP != 0) {
            jceOutputStream.write(this.f2316lP, 6);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2310lJ = jceInputStream.read(this.f2310lJ, 0, true);
        this.f2311lK = jceInputStream.read(this.f2311lK, 1, true);
        this.f2312lL = jceInputStream.read(this.f2312lL, 2, true);
        if (f2309lQ == null) {
            f2309lQ = new ArrayList<>();
            f2309lQ.add(new byte[]{0});
        }
        this.f2313lM = (ArrayList) jceInputStream.read((JceInputStream) f2309lQ, 3, true);
        this.f2314lN = jceInputStream.read(this.f2314lN, 4, false);
        this.f2315lO = jceInputStream.read(this.f2315lO, 5, false);
        this.f2316lP = jceInputStream.read(this.f2316lP, 6, false);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
