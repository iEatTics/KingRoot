package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bt */
/* loaded from: classes.dex */
public final class C2614bt extends JceStruct {

    /* renamed from: lb */
    static C2490bl f2070lb;

    /* renamed from: ld */
    static C2997dl f2071ld;

    /* renamed from: le */
    static C2998dm f2072le;

    /* renamed from: lf */
    static C2998dm f2073lf;

    /* renamed from: lg */
    static ArrayList<C2642bw> f2074lg;

    /* renamed from: kW */
    public C2490bl f2075kW = null;

    /* renamed from: kX */
    public C2997dl f2076kX = null;

    /* renamed from: kY */
    public C2998dm f2077kY = null;

    /* renamed from: kZ */
    public C2998dm f2078kZ = null;

    /* renamed from: la */
    public ArrayList<C2642bw> f2079la = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.f2075kW, 0);
        if (this.f2076kX != null) {
            jceOutputStream.write((JceStruct) this.f2076kX, 1);
        }
        if (this.f2077kY != null) {
            jceOutputStream.write((JceStruct) this.f2077kY, 2);
        }
        if (this.f2078kZ != null) {
            jceOutputStream.write((JceStruct) this.f2078kZ, 3);
        }
        if (this.f2079la != null) {
            jceOutputStream.write((Collection) this.f2079la, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2070lb == null) {
            f2070lb = new C2490bl();
        }
        this.f2075kW = (C2490bl) jceInputStream.read((JceStruct) f2070lb, 0, true);
        if (f2071ld == null) {
            f2071ld = new C2997dl();
        }
        this.f2076kX = (C2997dl) jceInputStream.read((JceStruct) f2071ld, 1, false);
        if (f2072le == null) {
            f2072le = new C2998dm();
        }
        this.f2077kY = (C2998dm) jceInputStream.read((JceStruct) f2072le, 2, false);
        if (f2073lf == null) {
            f2073lf = new C2998dm();
        }
        this.f2078kZ = (C2998dm) jceInputStream.read((JceStruct) f2073lf, 3, false);
        if (f2074lg == null) {
            f2074lg = new ArrayList<>();
            f2074lg.add(new C2642bw());
        }
        this.f2079la = (ArrayList) jceInputStream.read((JceInputStream) f2074lg, 4, false);
    }
}
