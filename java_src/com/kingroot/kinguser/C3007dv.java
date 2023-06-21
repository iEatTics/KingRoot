package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.dv */
/* loaded from: classes.dex */
public final class C3007dv extends JceStruct {

    /* renamed from: nR */
    static ArrayList<C3010dy> f2510nR;

    /* renamed from: mw */
    public int f2511mw = 0;

    /* renamed from: nO */
    public int f2512nO = 0;

    /* renamed from: nP */
    public ArrayList<C3010dy> f2513nP = null;

    /* renamed from: nQ */
    public long f2514nQ = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2511mw, 0);
        jceOutputStream.write(this.f2512nO, 1);
        jceOutputStream.write((Collection) this.f2513nP, 3);
        jceOutputStream.write(this.f2514nQ, 4);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2511mw = jceInputStream.read(this.f2511mw, 0, true);
        this.f2512nO = jceInputStream.read(this.f2512nO, 1, true);
        if (f2510nR == null) {
            f2510nR = new ArrayList<>();
            f2510nR.add(new C3010dy());
        }
        this.f2513nP = (ArrayList) jceInputStream.read((JceInputStream) f2510nR, 3, true);
        this.f2514nQ = jceInputStream.read(this.f2514nQ, 4, true);
    }
}
