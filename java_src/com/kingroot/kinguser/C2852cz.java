package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.cz */
/* loaded from: classes.dex */
public final class C2852cz extends JceStruct {

    /* renamed from: mM */
    static ArrayList<C2857dd> f2409mM;

    /* renamed from: mL */
    public ArrayList<C2857dd> f2410mL = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f2410mL != null) {
            jceOutputStream.write((Collection) this.f2410mL, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2409mM == null) {
            f2409mM = new ArrayList<>();
            f2409mM.add(new C2857dd());
        }
        this.f2410mL = (ArrayList) jceInputStream.read((JceInputStream) f2409mM, 0, false);
    }
}
