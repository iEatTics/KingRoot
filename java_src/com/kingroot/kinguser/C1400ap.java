package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ap */
/* loaded from: classes.dex */
public final class C1400ap extends JceStruct {

    /* renamed from: ht */
    static C1216am f1509ht;

    /* renamed from: ig */
    static ArrayList<Integer> f1510ig = new ArrayList<>();

    /* renamed from: ih */
    static ArrayList<C1235an> f1511ih;

    /* renamed from: hr */
    public int f1515hr = 0;

    /* renamed from: hX */
    public int f1512hX = 0;

    /* renamed from: hY */
    public ArrayList<Integer> f1513hY = null;

    /* renamed from: hZ */
    public ArrayList<C1235an> f1514hZ = null;

    /* renamed from: ia */
    public int f1517ia = 0;

    /* renamed from: ib */
    public boolean f1518ib = true;

    /* renamed from: ic */
    public boolean f1519ic = true;

    /* renamed from: ie */
    public int f1520ie = 120;

    /* renamed from: if */
    public int f1521if = 10;

    /* renamed from: hs */
    public C1216am f1516hs = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public final JceStruct newInit() {
        return new C1400ap();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1515hr, 0);
        if (this.f1512hX != 0) {
            jceOutputStream.write(this.f1512hX, 1);
        }
        if (this.f1513hY != null) {
            jceOutputStream.write((Collection) this.f1513hY, 2);
        }
        if (this.f1514hZ != null) {
            jceOutputStream.write((Collection) this.f1514hZ, 3);
        }
        if (this.f1517ia != 0) {
            jceOutputStream.write(this.f1517ia, 4);
        }
        jceOutputStream.write(this.f1518ib, 5);
        jceOutputStream.write(this.f1519ic, 6);
        if (this.f1520ie != 120) {
            jceOutputStream.write(this.f1520ie, 7);
        }
        if (this.f1521if != 10) {
            jceOutputStream.write(this.f1521if, 8);
        }
        if (this.f1516hs != null) {
            jceOutputStream.write((JceStruct) this.f1516hs, 9);
        }
    }

    static {
        f1510ig.add(0);
        f1511ih = new ArrayList<>();
        f1511ih.add(new C1235an());
        f1509ht = new C1216am();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public final void readFrom(JceInputStream jceInputStream) {
        this.f1515hr = jceInputStream.read(this.f1515hr, 0, true);
        this.f1512hX = jceInputStream.read(this.f1512hX, 1, false);
        this.f1513hY = (ArrayList) jceInputStream.read((JceInputStream) f1510ig, 2, false);
        this.f1514hZ = (ArrayList) jceInputStream.read((JceInputStream) f1511ih, 3, false);
        this.f1517ia = jceInputStream.read(this.f1517ia, 4, false);
        this.f1518ib = jceInputStream.read(this.f1518ib, 5, false);
        this.f1519ic = jceInputStream.read(this.f1519ic, 6, false);
        this.f1520ie = jceInputStream.read(this.f1520ie, 7, false);
        this.f1521if = jceInputStream.read(this.f1521if, 8, false);
        this.f1516hs = (C1216am) jceInputStream.read((JceStruct) f1509ht, 9, false);
    }
}
