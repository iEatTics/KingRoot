package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.cy */
/* loaded from: classes.dex */
public final class C2851cy extends JceStruct {

    /* renamed from: kC */
    static ArrayList<C3028ep> f2407kC;

    /* renamed from: kB */
    public ArrayList<C3028ep> f2408kB = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2408kB != null) {
            jceOutputStream.write((Collection) this.f2408kB, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2407kC == null) {
            f2407kC = new ArrayList<>();
            f2407kC.add(new C3028ep());
        }
        this.f2408kB = (ArrayList) jceInputStream.read((JceInputStream) f2407kC, 0, false);
    }
}
