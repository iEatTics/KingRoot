package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.da */
/* loaded from: classes.dex */
public final class C2854da extends JceStruct {

    /* renamed from: mQ */
    static ArrayList<Integer> f2411mQ;

    /* renamed from: mR */
    static C2844cr f2412mR;

    /* renamed from: id */
    public int f2414id = 0;

    /* renamed from: fY */
    public int f2413fY = 0;
    public String desc = "";

    /* renamed from: mN */
    public ArrayList<Integer> f2415mN = null;

    /* renamed from: mO */
    public String f2416mO = "";

    /* renamed from: mP */
    public C2844cr f2417mP = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2414id, 0);
        jceOutputStream.write(this.f2413fY, 1);
        jceOutputStream.write(this.desc, 2);
        if (this.f2415mN != null) {
            jceOutputStream.write((Collection) this.f2415mN, 3);
        }
        if (this.f2416mO != null) {
            jceOutputStream.write(this.f2416mO, 4);
        }
        if (this.f2417mP != null) {
            jceOutputStream.write((JceStruct) this.f2417mP, 5);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2414id = jceInputStream.read(this.f2414id, 0, true);
        this.f2413fY = jceInputStream.read(this.f2413fY, 1, true);
        this.desc = jceInputStream.readString(2, true);
        if (f2411mQ == null) {
            f2411mQ = new ArrayList<>();
            f2411mQ.add(0);
        }
        this.f2415mN = (ArrayList) jceInputStream.read((JceInputStream) f2411mQ, 3, false);
        this.f2416mO = jceInputStream.readString(4, false);
        if (f2412mR == null) {
            f2412mR = new C2844cr();
        }
        this.f2417mP = (C2844cr) jceInputStream.read((JceStruct) f2412mR, 5, false);
    }
}
