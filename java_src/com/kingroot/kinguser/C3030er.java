package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.er */
/* loaded from: classes.dex */
public final class C3030er extends JceStruct {

    /* renamed from: pw */
    static ArrayList<C3031es> f2619pw;

    /* renamed from: pv */
    public ArrayList<C3031es> f2620pv = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2620pv, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2619pw == null) {
            f2619pw = new ArrayList<>();
            f2619pw.add(new C3031es());
        }
        this.f2620pv = (ArrayList) jceInputStream.read((JceInputStream) f2619pw, 0, true);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
