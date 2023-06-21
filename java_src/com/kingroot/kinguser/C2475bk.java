package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bk */
/* loaded from: classes.dex */
public final class C2475bk extends JceStruct {

    /* renamed from: ky */
    static C2855db f1705ky;

    /* renamed from: kz */
    static ArrayList<C2295bi> f1706kz;

    /* renamed from: kw */
    public C2855db f1707kw = null;

    /* renamed from: kx */
    public ArrayList<C2295bi> f1708kx = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        if (this.f1707kw != null) {
            jceOutputStream.write((JceStruct) this.f1707kw, 0);
        }
        if (this.f1708kx != null) {
            jceOutputStream.write((Collection) this.f1708kx, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f1705ky == null) {
            f1705ky = new C2855db();
        }
        this.f1707kw = (C2855db) jceInputStream.read((JceStruct) f1705ky, 0, false);
        if (f1706kz == null) {
            f1706kz = new ArrayList<>();
            f1706kz.add(new C2295bi());
        }
        this.f1708kx = (ArrayList) jceInputStream.read((JceInputStream) f1706kz, 1, false);
    }
}
