package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bm */
/* loaded from: classes.dex */
public final class C2508bm extends JceStruct {

    /* renamed from: kC */
    static ArrayList<C3028ep> f1738kC;

    /* renamed from: kB */
    public ArrayList<C3028ep> f1739kB = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f1739kB, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f1738kC == null) {
            f1738kC = new ArrayList<>();
            f1738kC.add(new C3028ep());
        }
        this.f1739kB = (ArrayList) jceInputStream.read((JceInputStream) f1738kC, 0, true);
    }
}
