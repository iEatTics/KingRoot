package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ae */
/* loaded from: classes.dex */
public final class C0756ae extends JceStruct {

    /* renamed from: gR */
    static ArrayList<C3871x> f1399gR;

    /* renamed from: gv */
    public int f1401gv = 0;

    /* renamed from: gQ */
    public ArrayList<C3871x> f1400gQ = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1401gv != 0) {
            jceOutputStream.write(this.f1401gv, 0);
        }
        if (this.f1400gQ != null) {
            jceOutputStream.write((Collection) this.f1400gQ, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1401gv = jceInputStream.read(this.f1401gv, 0, false);
        if (f1399gR == null) {
            f1399gR = new ArrayList<>();
            f1399gR.add(new C3871x());
        }
        this.f1400gQ = (ArrayList) jceInputStream.read((JceInputStream) f1399gR, 1, false);
    }
}
