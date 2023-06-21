package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.af */
/* loaded from: classes.dex */
public final class C0799af extends JceStruct {

    /* renamed from: gR */
    static ArrayList<C3871x> f1410gR;

    /* renamed from: gQ */
    public ArrayList<C3871x> f1411gQ = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1411gQ != null) {
            jceOutputStream.write((Collection) this.f1411gQ, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f1410gR == null) {
            f1410gR = new ArrayList<>();
            f1410gR.add(new C3871x());
        }
        this.f1411gQ = (ArrayList) jceInputStream.read((JceInputStream) f1410gR, 0, false);
    }
}
