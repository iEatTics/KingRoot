package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.eu */
/* loaded from: classes.dex */
public final class C3033eu extends JceStruct {

    /* renamed from: pA */
    static ArrayList<C3032et> f2630pA;

    /* renamed from: pz */
    public ArrayList<C3032et> f2631pz = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2631pz, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2630pA == null) {
            f2630pA = new ArrayList<>();
            f2630pA.add(new C3032et());
        }
        this.f2631pz = (ArrayList) jceInputStream.read((JceInputStream) f2630pA, 0, true);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
