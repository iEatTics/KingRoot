package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ei */
/* loaded from: classes.dex */
public final class C3021ei extends JceStruct {

    /* renamed from: ph */
    static ArrayList<C3024el> f2594ph;

    /* renamed from: mw */
    public int f2595mw = 0;

    /* renamed from: nO */
    public int f2596nO = 0;

    /* renamed from: pg */
    public ArrayList<C3024el> f2597pg = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2595mw, 0);
        jceOutputStream.write(this.f2596nO, 1);
        jceOutputStream.write((Collection) this.f2597pg, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2595mw = jceInputStream.read(this.f2595mw, 0, true);
        this.f2596nO = jceInputStream.read(this.f2596nO, 1, true);
        if (f2594ph == null) {
            f2594ph = new ArrayList<>();
            f2594ph.add(new C3024el());
        }
        this.f2597pg = (ArrayList) jceInputStream.read((JceInputStream) f2594ph, 2, true);
    }
}
