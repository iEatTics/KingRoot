package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.a */
/* loaded from: classes.dex */
public final class C0604a extends JceStruct {

    /* renamed from: dO */
    static ArrayList<C2037b> f1203dO;

    /* renamed from: dP */
    static C2687c f1204dP;

    /* renamed from: cb */
    public ArrayList<C2037b> f1205cb = null;

    /* renamed from: dG */
    public C2687c f1206dG = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f1205cb, 0);
        if (this.f1206dG != null) {
            jceOutputStream.write((JceStruct) this.f1206dG, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f1203dO == null) {
            f1203dO = new ArrayList<>();
            f1203dO.add(new C2037b());
        }
        this.f1205cb = (ArrayList) jceInputStream.read((JceInputStream) f1203dO, 0, true);
        if (f1204dP == null) {
            f1204dP = new C2687c();
        }
        this.f1206dG = (C2687c) jceInputStream.read((JceStruct) f1204dP, 1, false);
    }
}
