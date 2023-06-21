package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.bo */
/* loaded from: classes.dex */
public final class C2537bo extends JceStruct {

    /* renamed from: kH */
    static ArrayList<C2859df> f1800kH;

    /* renamed from: kF */
    public String f1801kF = "";
    public int product = 0;
    public int isbuildin = 0;
    public String token = "";

    /* renamed from: kG */
    public ArrayList<C2859df> f1802kG = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f1801kF, 0);
        if (this.product != 0) {
            jceOutputStream.write(this.product, 1);
        }
        if (this.isbuildin != 0) {
            jceOutputStream.write(this.isbuildin, 2);
        }
        if (this.token != null) {
            jceOutputStream.write(this.token, 3);
        }
        if (this.f1802kG != null) {
            jceOutputStream.write((Collection) this.f1802kG, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f1801kF = jceInputStream.readString(0, true);
        this.product = jceInputStream.read(this.product, 1, false);
        this.isbuildin = jceInputStream.read(this.isbuildin, 2, false);
        this.token = jceInputStream.readString(3, false);
        if (f1800kH == null) {
            f1800kH = new ArrayList<>();
            f1800kH.add(new C2859df());
        }
        this.f1802kG = (ArrayList) jceInputStream.read((JceInputStream) f1800kH, 4, false);
    }
}
