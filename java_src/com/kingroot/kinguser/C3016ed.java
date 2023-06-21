package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ed */
/* loaded from: classes.dex */
public final class C3016ed extends JceStruct {

    /* renamed from: oA */
    static ArrayList<C3009dx> f2536oA;

    /* renamed from: oB */
    static C3013ea f2537oB;

    /* renamed from: oC */
    static C3014eb f2538oC;

    /* renamed from: oD */
    static C3006du f2539oD;

    /* renamed from: oE */
    static C3019eg f2540oE;

    /* renamed from: id */
    public int f2541id = 0;
    public String pkgName = "";
    public int version = 0;
    public String versionName = "";
    public String name = "";

    /* renamed from: of */
    public String f2543of = "";

    /* renamed from: og */
    public int f2544og = 0;

    /* renamed from: oh */
    public ArrayList<C3009dx> f2545oh = null;
    public int level = 0;
    public String iconUrl = "";

    /* renamed from: oi */
    public String f2546oi = "";

    /* renamed from: oj */
    public int f2547oj = 0;

    /* renamed from: ok */
    public String f2548ok = "";

    /* renamed from: ol */
    public long f2549ol = 0;

    /* renamed from: om */
    public boolean f2550om = true;

    /* renamed from: on */
    public int f2551on = 0;

    /* renamed from: oo */
    public int f2552oo = 0;

    /* renamed from: op */
    public C3013ea f2553op = null;

    /* renamed from: oq */
    public C3014eb f2554oq = null;

    /* renamed from: or */
    public boolean f2555or = true;
    public int groupId = 0;

    /* renamed from: os */
    public boolean f2556os = true;

    /* renamed from: ot */
    public int f2557ot = 0;

    /* renamed from: ou */
    public boolean f2558ou = true;
    public int initOrder = 0;

    /* renamed from: ov */
    public C3006du f2559ov = null;

    /* renamed from: ow */
    public C3019eg f2560ow = null;

    /* renamed from: nW */
    public int f2542nW = 0;

    /* renamed from: ox */
    public long f2561ox = 0;

    /* renamed from: oy */
    public int f2562oy = 0;

    /* renamed from: oz */
    public String f2563oz = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2541id, 0);
        jceOutputStream.write(this.pkgName, 1);
        jceOutputStream.write(this.version, 2);
        jceOutputStream.write(this.versionName, 3);
        jceOutputStream.write(this.name, 4);
        jceOutputStream.write(this.f2543of, 5);
        jceOutputStream.write(this.f2544og, 6);
        jceOutputStream.write((Collection) this.f2545oh, 7);
        jceOutputStream.write(this.level, 8);
        jceOutputStream.write(this.iconUrl, 9);
        jceOutputStream.write(this.f2546oi, 10);
        jceOutputStream.write(this.f2547oj, 11);
        jceOutputStream.write(this.f2548ok, 12);
        jceOutputStream.write(this.f2549ol, 13);
        jceOutputStream.write(this.f2550om, 14);
        jceOutputStream.write(this.f2551on, 15);
        jceOutputStream.write(this.f2552oo, 16);
        if (this.f2553op != null) {
            jceOutputStream.write((JceStruct) this.f2553op, 17);
        }
        if (this.f2554oq != null) {
            jceOutputStream.write((JceStruct) this.f2554oq, 18);
        }
        if (!this.f2555or) {
            jceOutputStream.write(this.f2555or, 19);
        }
        if (this.groupId != 0) {
            jceOutputStream.write(this.groupId, 20);
        }
        if (!this.f2556os) {
            jceOutputStream.write(this.f2556os, 21);
        }
        jceOutputStream.write(this.f2557ot, 22);
        if (!this.f2558ou) {
            jceOutputStream.write(this.f2558ou, 23);
        }
        if (this.initOrder != 0) {
            jceOutputStream.write(this.initOrder, 24);
        }
        if (this.f2559ov != null) {
            jceOutputStream.write((JceStruct) this.f2559ov, 25);
        }
        if (this.f2560ow != null) {
            jceOutputStream.write((JceStruct) this.f2560ow, 26);
        }
        jceOutputStream.write(this.f2542nW, 27);
        if (this.f2561ox != 0) {
            jceOutputStream.write(this.f2561ox, 28);
        }
        jceOutputStream.write(this.f2562oy, 29);
        if (this.f2563oz != null) {
            jceOutputStream.write(this.f2563oz, 30);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2541id = jceInputStream.read(this.f2541id, 0, true);
        this.pkgName = jceInputStream.readString(1, true);
        this.version = jceInputStream.read(this.version, 2, true);
        this.versionName = jceInputStream.readString(3, true);
        this.name = jceInputStream.readString(4, true);
        this.f2543of = jceInputStream.readString(5, true);
        this.f2544og = jceInputStream.read(this.f2544og, 6, true);
        if (f2536oA == null) {
            f2536oA = new ArrayList<>();
            f2536oA.add(new C3009dx());
        }
        this.f2545oh = (ArrayList) jceInputStream.read((JceInputStream) f2536oA, 7, true);
        this.level = jceInputStream.read(this.level, 8, true);
        this.iconUrl = jceInputStream.readString(9, true);
        this.f2546oi = jceInputStream.readString(10, true);
        this.f2547oj = jceInputStream.read(this.f2547oj, 11, true);
        this.f2548ok = jceInputStream.readString(12, true);
        this.f2549ol = jceInputStream.read(this.f2549ol, 13, true);
        this.f2550om = jceInputStream.read(this.f2550om, 14, true);
        this.f2551on = jceInputStream.read(this.f2551on, 15, false);
        this.f2552oo = jceInputStream.read(this.f2552oo, 16, false);
        if (f2537oB == null) {
            f2537oB = new C3013ea();
        }
        this.f2553op = (C3013ea) jceInputStream.read((JceStruct) f2537oB, 17, false);
        if (f2538oC == null) {
            f2538oC = new C3014eb();
        }
        this.f2554oq = (C3014eb) jceInputStream.read((JceStruct) f2538oC, 18, false);
        this.f2555or = jceInputStream.read(this.f2555or, 19, false);
        this.groupId = jceInputStream.read(this.groupId, 20, false);
        this.f2556os = jceInputStream.read(this.f2556os, 21, false);
        this.f2557ot = jceInputStream.read(this.f2557ot, 22, false);
        this.f2558ou = jceInputStream.read(this.f2558ou, 23, false);
        this.initOrder = jceInputStream.read(this.initOrder, 24, false);
        if (f2539oD == null) {
            f2539oD = new C3006du();
        }
        this.f2559ov = (C3006du) jceInputStream.read((JceStruct) f2539oD, 25, false);
        if (f2540oE == null) {
            f2540oE = new C3019eg();
        }
        this.f2560ow = (C3019eg) jceInputStream.read((JceStruct) f2540oE, 26, false);
        this.f2542nW = jceInputStream.read(this.f2542nW, 27, false);
        this.f2561ox = jceInputStream.read(this.f2561ox, 28, false);
        this.f2562oy = jceInputStream.read(this.f2562oy, 29, false);
        this.f2563oz = jceInputStream.readString(30, false);
    }
}
