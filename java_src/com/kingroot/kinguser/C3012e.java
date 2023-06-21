package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.e */
/* loaded from: classes.dex */
public final class C3012e extends JceStruct {

    /* renamed from: dW */
    static ArrayList<C3048f> f2522dW;

    /* renamed from: dU */
    public ArrayList<C3048f> f2523dU = null;

    /* renamed from: dV */
    public int f2524dV = 0;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2523dU, 0);
        if (this.f2524dV != 0) {
            jceOutputStream.write(this.f2524dV, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2522dW == null) {
            f2522dW = new ArrayList<>();
            f2522dW.add(new C3048f());
        }
        this.f2523dU = (ArrayList) jceInputStream.read((JceInputStream) f2522dW, 0, true);
        this.f2524dV = jceInputStream.read(this.f2524dV, 1, false);
    }
}
