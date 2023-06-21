package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.el */
/* loaded from: classes.dex */
public final class C3024el extends JceStruct {

    /* renamed from: po */
    static ArrayList<C3023ek> f2605po;

    /* renamed from: pp */
    static ArrayList<C3022ej> f2606pp;

    /* renamed from: id */
    public int f2607id = 0;
    public int version = 0;

    /* renamed from: pm */
    public ArrayList<C3023ek> f2608pm = null;

    /* renamed from: pn */
    public ArrayList<C3022ej> f2609pn = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2607id, 0);
        jceOutputStream.write(this.version, 1);
        if (this.f2608pm != null) {
            jceOutputStream.write((Collection) this.f2608pm, 2);
        }
        if (this.f2609pn != null) {
            jceOutputStream.write((Collection) this.f2609pn, 3);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2607id = jceInputStream.read(this.f2607id, 0, true);
        this.version = jceInputStream.read(this.version, 1, true);
        if (f2605po == null) {
            f2605po = new ArrayList<>();
            f2605po.add(new C3023ek());
        }
        this.f2608pm = (ArrayList) jceInputStream.read((JceInputStream) f2605po, 2, false);
        if (f2606pp == null) {
            f2606pp = new ArrayList<>();
            f2606pp.add(new C3022ej());
        }
        this.f2609pn = (ArrayList) jceInputStream.read((JceInputStream) f2606pp, 3, false);
    }
}
