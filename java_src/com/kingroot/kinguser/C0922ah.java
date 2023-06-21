package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
/* renamed from: com.kingroot.kinguser.ah */
/* loaded from: classes.dex */
public final class C0922ah extends JceStruct {

    /* renamed from: hd */
    static C3335n f1423hd;

    /* renamed from: ho */
    static C0838ag f1424ho;

    /* renamed from: hp */
    static C3909y f1425hp;
    public String url = "";

    /* renamed from: gT */
    public int f1426gT = 0;

    /* renamed from: gU */
    public C3335n f1427gU = null;

    /* renamed from: gV */
    public int f1428gV = 0;
    public int newVersionCode = 0;

    /* renamed from: gW */
    public int f1429gW = 0;
    public String newFeature = "";

    /* renamed from: gX */
    public String f1430gX = "";

    /* renamed from: gY */
    public boolean f1431gY = true;

    /* renamed from: gZ */
    public C0838ag f1432gZ = null;

    /* renamed from: ha */
    public boolean f1433ha = true;

    /* renamed from: hb */
    public C3909y f1434hb = null;

    /* renamed from: hc */
    public int f1435hc = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.url != null) {
            jceOutputStream.write(this.url, 0);
        }
        if (this.f1426gT != 0) {
            jceOutputStream.write(this.f1426gT, 1);
        }
        if (this.f1427gU != null) {
            jceOutputStream.write((JceStruct) this.f1427gU, 2);
        }
        if (this.f1428gV != 0) {
            jceOutputStream.write(this.f1428gV, 3);
        }
        if (this.newVersionCode != 0) {
            jceOutputStream.write(this.newVersionCode, 4);
        }
        if (this.f1429gW != 0) {
            jceOutputStream.write(this.f1429gW, 5);
        }
        if (this.newFeature != null) {
            jceOutputStream.write(this.newFeature, 6);
        }
        if (this.f1430gX != null) {
            jceOutputStream.write(this.f1430gX, 7);
        }
        if (!this.f1431gY) {
            jceOutputStream.write(this.f1431gY, 8);
        }
        if (this.f1432gZ != null) {
            jceOutputStream.write((JceStruct) this.f1432gZ, 9);
        }
        if (!this.f1433ha) {
            jceOutputStream.write(this.f1433ha, 10);
        }
        if (this.f1434hb != null) {
            jceOutputStream.write((JceStruct) this.f1434hb, 11);
        }
        if (this.f1435hc != 0) {
            jceOutputStream.write(this.f1435hc, 12);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.url = jceInputStream.readString(0, false);
        this.f1426gT = jceInputStream.read(this.f1426gT, 1, false);
        if (f1423hd == null) {
            f1423hd = new C3335n();
        }
        this.f1427gU = (C3335n) jceInputStream.read((JceStruct) f1423hd, 2, false);
        this.f1428gV = jceInputStream.read(this.f1428gV, 3, false);
        this.newVersionCode = jceInputStream.read(this.newVersionCode, 4, false);
        this.f1429gW = jceInputStream.read(this.f1429gW, 5, false);
        this.newFeature = jceInputStream.readString(6, false);
        this.f1430gX = jceInputStream.readString(7, false);
        this.f1431gY = jceInputStream.read(this.f1431gY, 8, false);
        if (f1424ho == null) {
            f1424ho = new C0838ag();
        }
        this.f1432gZ = (C0838ag) jceInputStream.read((JceStruct) f1424ho, 9, false);
        this.f1433ha = jceInputStream.read(this.f1433ha, 10, false);
        if (f1425hp == null) {
            f1425hp = new C3909y();
        }
        this.f1434hb = (C3909y) jceInputStream.read((JceStruct) f1425hp, 11, false);
        this.f1435hc = jceInputStream.read(this.f1435hc, 12, false);
    }
}
