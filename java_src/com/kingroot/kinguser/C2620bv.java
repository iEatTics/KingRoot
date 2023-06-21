package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bv */
/* loaded from: classes.dex */
public final class C2620bv extends JceStruct {

    /* renamed from: lk */
    static ArrayList<C2619bu> f2118lk;

    /* renamed from: lj */
    public ArrayList<C2619bu> f2119lj = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2119lj, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2118lk == null) {
            f2118lk = new ArrayList<>();
            f2118lk.add(new C2619bu());
        }
        this.f2119lj = (ArrayList) jceInputStream.read((JceInputStream) f2118lk, 0, true);
    }
}
