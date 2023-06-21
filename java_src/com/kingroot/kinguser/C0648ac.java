package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.ac */
/* loaded from: classes.dex */
public final class C0648ac extends JceStruct {

    /* renamed from: gL */
    static ArrayList<String> f1383gL;

    /* renamed from: gK */
    public ArrayList<String> f1384gK = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1384gK != null) {
            jceOutputStream.write((Collection) this.f1384gK, 0);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f1383gL == null) {
            f1383gL = new ArrayList<>();
            f1383gL.add("");
        }
        this.f1384gK = (ArrayList) jceInputStream.read((JceInputStream) f1383gL, 0, false);
    }
}
