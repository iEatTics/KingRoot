package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.q */
/* loaded from: classes.dex */
public final class C3448q extends JceStruct {

    /* renamed from: gf */
    static ArrayList<C3746v> f3345gf;

    /* renamed from: ge */
    public ArrayList<C3746v> f3346ge = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3346ge != null) {
            jceOutputStream.write((Collection) this.f3346ge, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f3345gf == null) {
            f3345gf = new ArrayList<>();
            f3345gf.add(new C3746v());
        }
        this.f3346ge = (ArrayList) jceInputStream.read((JceInputStream) f3345gf, 0, false);
    }
}
