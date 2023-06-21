package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.k */
/* loaded from: classes.dex */
public final class C3235k extends JceStruct {

    /* renamed from: ex */
    static ArrayList<C3267l> f2921ex;

    /* renamed from: ev */
    public int f2922ev = 0;

    /* renamed from: ew */
    public ArrayList<C3267l> f2923ew = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2922ev, 0);
        jceOutputStream.write((Collection) this.f2923ew, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2922ev = jceInputStream.read(this.f2922ev, 0, true);
        if (f2921ex == null) {
            f2921ex = new ArrayList<>();
            f2921ex.add(new C3267l());
        }
        this.f2923ew = (ArrayList) jceInputStream.read((JceInputStream) f2921ex, 1, true);
    }
}
