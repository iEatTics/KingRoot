package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.g */
/* loaded from: classes.dex */
public final class C3075g extends JceStruct {

    /* renamed from: eg */
    static C3370o f2688eg;

    /* renamed from: eh */
    static C3401p f2689eh;

    /* renamed from: ej */
    static C3401p f2690ej;

    /* renamed from: ek */
    static ArrayList<C3144h> f2691ek;

    /* renamed from: eb */
    public String f2692eb = "";

    /* renamed from: ec */
    public C3370o f2693ec = null;

    /* renamed from: ed */
    public C3401p f2694ed = null;

    /* renamed from: ee */
    public C3401p f2695ee = null;

    /* renamed from: ef */
    public ArrayList<C3144h> f2696ef = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2692eb, 0);
        if (this.f2693ec != null) {
            jceOutputStream.write((JceStruct) this.f2693ec, 1);
        }
        if (this.f2694ed != null) {
            jceOutputStream.write((JceStruct) this.f2694ed, 2);
        }
        if (this.f2695ee != null) {
            jceOutputStream.write((JceStruct) this.f2695ee, 3);
        }
        if (this.f2696ef != null) {
            jceOutputStream.write((Collection) this.f2696ef, 4);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2692eb = jceInputStream.readString(0, true);
        if (f2688eg == null) {
            f2688eg = new C3370o();
        }
        this.f2693ec = (C3370o) jceInputStream.read((JceStruct) f2688eg, 1, false);
        if (f2689eh == null) {
            f2689eh = new C3401p();
        }
        this.f2694ed = (C3401p) jceInputStream.read((JceStruct) f2689eh, 2, false);
        if (f2690ej == null) {
            f2690ej = new C3401p();
        }
        this.f2695ee = (C3401p) jceInputStream.read((JceStruct) f2690ej, 3, false);
        if (f2691ek == null) {
            f2691ek = new ArrayList<>();
            f2691ek.add(new C3144h());
        }
        this.f2696ef = (ArrayList) jceInputStream.read((JceInputStream) f2691ek, 4, false);
    }
}
