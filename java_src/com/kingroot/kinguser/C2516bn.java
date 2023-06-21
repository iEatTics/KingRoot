package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bn */
/* loaded from: classes.dex */
public final class C2516bn extends JceStruct {

    /* renamed from: kE */
    static ArrayList<C2547bp> f1755kE;

    /* renamed from: kD */
    public ArrayList<C2547bp> f1756kD = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1756kD != null) {
            jceOutputStream.write((Collection) this.f1756kD, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f1755kE == null) {
            f1755kE = new ArrayList<>();
            f1755kE.add(new C2547bp());
        }
        this.f1756kD = (ArrayList) jceInputStream.read((JceInputStream) f1755kE, 0, false);
    }
}
