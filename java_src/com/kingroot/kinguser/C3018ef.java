package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ef */
/* loaded from: classes.dex */
public final class C3018ef extends JceStruct {

    /* renamed from: oV */
    static ArrayList<C3016ed> f2567oV;

    /* renamed from: oW */
    static ArrayList<C3016ed> f2568oW;

    /* renamed from: oX */
    static ArrayList<C3015ec> f2569oX;

    /* renamed from: oY */
    static ArrayList<C3016ed> f2570oY;

    /* renamed from: oZ */
    static ArrayList<C3016ed> f2571oZ;

    /* renamed from: pa */
    static ArrayList<C3016ed> f2572pa;

    /* renamed from: pb */
    static ArrayList<C3017ee> f2573pb;

    /* renamed from: pc */
    static ArrayList<C3008dw> f2574pc;

    /* renamed from: pd */
    static C3011dz f2575pd;

    /* renamed from: pe */
    static C3020eh f2576pe;

    /* renamed from: mw */
    public int f2577mw = 0;

    /* renamed from: nO */
    public int f2578nO = 0;

    /* renamed from: oI */
    public int f2579oI = 0;

    /* renamed from: oJ */
    public ArrayList<C3016ed> f2580oJ = null;

    /* renamed from: oK */
    public ArrayList<C3016ed> f2581oK = null;

    /* renamed from: oL */
    public ArrayList<C3015ec> f2582oL = null;

    /* renamed from: oM */
    public int f2583oM = 0;

    /* renamed from: oN */
    public ArrayList<C3016ed> f2584oN = null;

    /* renamed from: oO */
    public ArrayList<C3016ed> f2585oO = null;

    /* renamed from: oP */
    public ArrayList<C3016ed> f2586oP = null;

    /* renamed from: oQ */
    public ArrayList<C3017ee> f2587oQ = null;

    /* renamed from: oR */
    public ArrayList<C3008dw> f2588oR = null;

    /* renamed from: oS */
    public C3011dz f2589oS = null;

    /* renamed from: oT */
    public C3020eh f2590oT = null;

    /* renamed from: oU */
    public long f2591oU = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2577mw, 0);
        jceOutputStream.write(this.f2578nO, 1);
        jceOutputStream.write(this.f2579oI, 2);
        jceOutputStream.write((Collection) this.f2580oJ, 3);
        jceOutputStream.write((Collection) this.f2581oK, 4);
        jceOutputStream.write((Collection) this.f2582oL, 5);
        if (this.f2583oM != 0) {
            jceOutputStream.write(this.f2583oM, 6);
        }
        if (this.f2584oN != null) {
            jceOutputStream.write((Collection) this.f2584oN, 7);
        }
        if (this.f2585oO != null) {
            jceOutputStream.write((Collection) this.f2585oO, 8);
        }
        if (this.f2586oP != null) {
            jceOutputStream.write((Collection) this.f2586oP, 9);
        }
        if (this.f2587oQ != null) {
            jceOutputStream.write((Collection) this.f2587oQ, 10);
        }
        if (this.f2588oR != null) {
            jceOutputStream.write((Collection) this.f2588oR, 11);
        }
        if (this.f2589oS != null) {
            jceOutputStream.write((JceStruct) this.f2589oS, 12);
        }
        if (this.f2590oT != null) {
            jceOutputStream.write((JceStruct) this.f2590oT, 13);
        }
        if (this.f2591oU != 0) {
            jceOutputStream.write(this.f2591oU, 14);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2577mw = jceInputStream.read(this.f2577mw, 0, true);
        this.f2578nO = jceInputStream.read(this.f2578nO, 1, true);
        this.f2579oI = jceInputStream.read(this.f2579oI, 2, true);
        if (f2567oV == null) {
            f2567oV = new ArrayList<>();
            f2567oV.add(new C3016ed());
        }
        this.f2580oJ = (ArrayList) jceInputStream.read((JceInputStream) f2567oV, 3, true);
        if (f2568oW == null) {
            f2568oW = new ArrayList<>();
            f2568oW.add(new C3016ed());
        }
        this.f2581oK = (ArrayList) jceInputStream.read((JceInputStream) f2568oW, 4, true);
        if (f2569oX == null) {
            f2569oX = new ArrayList<>();
            f2569oX.add(new C3015ec());
        }
        this.f2582oL = (ArrayList) jceInputStream.read((JceInputStream) f2569oX, 5, true);
        this.f2583oM = jceInputStream.read(this.f2583oM, 6, false);
        if (f2570oY == null) {
            f2570oY = new ArrayList<>();
            f2570oY.add(new C3016ed());
        }
        this.f2584oN = (ArrayList) jceInputStream.read((JceInputStream) f2570oY, 7, false);
        if (f2571oZ == null) {
            f2571oZ = new ArrayList<>();
            f2571oZ.add(new C3016ed());
        }
        this.f2585oO = (ArrayList) jceInputStream.read((JceInputStream) f2571oZ, 8, false);
        if (f2572pa == null) {
            f2572pa = new ArrayList<>();
            f2572pa.add(new C3016ed());
        }
        this.f2586oP = (ArrayList) jceInputStream.read((JceInputStream) f2572pa, 9, false);
        if (f2573pb == null) {
            f2573pb = new ArrayList<>();
            f2573pb.add(new C3017ee());
        }
        this.f2587oQ = (ArrayList) jceInputStream.read((JceInputStream) f2573pb, 10, false);
        if (f2574pc == null) {
            f2574pc = new ArrayList<>();
            f2574pc.add(new C3008dw());
        }
        this.f2588oR = (ArrayList) jceInputStream.read((JceInputStream) f2574pc, 11, false);
        if (f2575pd == null) {
            f2575pd = new C3011dz();
        }
        this.f2589oS = (C3011dz) jceInputStream.read((JceStruct) f2575pd, 12, false);
        if (f2576pe == null) {
            f2576pe = new C3020eh();
        }
        this.f2590oT = (C3020eh) jceInputStream.read((JceStruct) f2576pe, 13, false);
        this.f2591oU = jceInputStream.read(this.f2591oU, 14, false);
    }
}
