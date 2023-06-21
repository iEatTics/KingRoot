package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.r */
/* loaded from: classes.dex */
public final class C3498r extends JceStruct {

    /* renamed from: gf */
    static ArrayList<C3820w> f3459gf;

    /* renamed from: ge */
    public ArrayList<C3820w> f3460ge = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f3460ge != null) {
            jceOutputStream.write((Collection) this.f3460ge, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f3459gf == null) {
            f3459gf = new ArrayList<>();
            f3459gf.add(new C3820w());
        }
        this.f3460ge = (ArrayList) jceInputStream.read((JceInputStream) f3459gf, 0, false);
    }
}
