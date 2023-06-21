package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.br */
/* loaded from: classes.dex */
public final class C2585br extends JceStruct {

    /* renamed from: kV */
    static ArrayList<C2565bq> f2062kV;

    /* renamed from: kU */
    public ArrayList<C2565bq> f2063kU = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2063kU, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2062kV == null) {
            f2062kV = new ArrayList<>();
            f2062kV.add(new C2565bq());
        }
        this.f2063kU = (ArrayList) jceInputStream.read((JceInputStream) f2062kV, 0, true);
    }
}
