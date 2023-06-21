package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.cw */
/* loaded from: classes.dex */
public final class C2849cw extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2397lo;

    /* renamed from: mD */
    static ArrayList<C2860dg> f2398mD;

    /* renamed from: mC */
    public ArrayList<C2860dg> f2399mC = null;

    static {
        f2397lo = !C2849cw.class.desiredAssertionStatus();
    }

    /* renamed from: d */
    public void m4221d(ArrayList<C2860dg> arrayList) {
        this.f2399mC = arrayList;
    }

    public C2849cw() {
        m4221d(this.f2399mC);
    }

    public C2849cw(ArrayList<C2860dg> arrayList) {
        m4221d(arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.f2399mC, ((C2849cw) obj).f2399mC);
    }

    public int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            if (f2397lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((Collection) this.f2399mC, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2398mD == null) {
            f2398mD = new ArrayList<>();
            f2398mD.add(new C2860dg());
        }
        m4221d((ArrayList) jceInputStream.read((JceInputStream) f2398mD, 1, true));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        new JceDisplayer(sb, i).display((Collection) this.f2399mC, "vecReportSofts");
    }
}
