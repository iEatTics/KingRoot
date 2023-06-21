package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.do */
/* loaded from: classes.dex */
public final class C3000do extends JceStruct {

    /* renamed from: nA */
    static ArrayList<C3003dr> f2489nA;

    /* renamed from: nB */
    static ArrayList<C3002dq> f2490nB;

    /* renamed from: ny */
    public ArrayList<C3003dr> f2494ny = null;

    /* renamed from: nz */
    public ArrayList<C3002dq> f2495nz = null;
    public String versionName = "";
    public int versionCode = 0;

    /* renamed from: it */
    public String f2492it = "";

    /* renamed from: iE */
    public String f2491iE = "";
    public int productId = 0;

    /* renamed from: lc */
    public String f2493lc = "";

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2494ny, 0);
        if (this.f2495nz != null) {
            jceOutputStream.write((Collection) this.f2495nz, 1);
        }
        if (this.versionName != null) {
            jceOutputStream.write(this.versionName, 2);
        }
        if (this.versionCode != 0) {
            jceOutputStream.write(this.versionCode, 3);
        }
        if (this.f2492it != null) {
            jceOutputStream.write(this.f2492it, 4);
        }
        if (this.f2491iE != null) {
            jceOutputStream.write(this.f2491iE, 5);
        }
        jceOutputStream.write(this.productId, 6);
        if (this.f2493lc != null) {
            jceOutputStream.write(this.f2493lc, 7);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2489nA == null) {
            f2489nA = new ArrayList<>();
            f2489nA.add(new C3003dr());
        }
        this.f2494ny = (ArrayList) jceInputStream.read((JceInputStream) f2489nA, 0, true);
        if (f2490nB == null) {
            f2490nB = new ArrayList<>();
            f2490nB.add(new C3002dq());
        }
        this.f2495nz = (ArrayList) jceInputStream.read((JceInputStream) f2490nB, 1, false);
        this.versionName = jceInputStream.readString(2, false);
        this.versionCode = jceInputStream.read(this.versionCode, 3, false);
        this.f2492it = jceInputStream.readString(4, false);
        this.f2491iE = jceInputStream.readString(5, false);
        this.productId = jceInputStream.read(this.productId, 6, false);
        this.f2493lc = jceInputStream.readString(7, false);
    }
}
