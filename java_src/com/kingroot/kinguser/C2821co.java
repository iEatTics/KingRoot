package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingroot.kinguser.co */
/* loaded from: classes.dex */
public final class C2821co extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2371lo;

    /* renamed from: mr */
    static C2658bx f2372mr;

    /* renamed from: ms */
    static ArrayList<C2842cp> f2373ms;

    /* renamed from: mp */
    public C2658bx f2374mp = null;

    /* renamed from: mq */
    public ArrayList<C2842cp> f2375mq = null;

    static {
        f2371lo = !C2821co.class.desiredAssertionStatus();
    }

    /* renamed from: Z */
    public C2658bx m4291Z() {
        return this.f2374mp;
    }

    /* renamed from: a */
    public void m4290a(C2658bx c2658bx) {
        this.f2374mp = c2658bx;
    }

    /* renamed from: c */
    public void m4289c(ArrayList<C2842cp> arrayList) {
        this.f2375mq = arrayList;
    }

    public C2821co() {
        m4290a(this.f2374mp);
        m4289c(this.f2375mq);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2821co c2821co = (C2821co) obj;
        return JceUtil.equals(this.f2374mp, c2821co.f2374mp) && JceUtil.equals(this.f2375mq, c2821co.f2375mq);
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
            if (f2371lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.f2374mp, 0);
        if (this.f2375mq != null) {
            jceOutputStream.write((Collection) this.f2375mq, 1);
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2372mr == null) {
            f2372mr = new C2658bx();
        }
        m4290a((C2658bx) jceInputStream.read((JceStruct) f2372mr, 0, true));
        if (f2373ms == null) {
            f2373ms = new ArrayList<>();
            f2373ms.add(new C2842cp());
        }
        m4289c((ArrayList) jceInputStream.read((JceInputStream) f2373ms, 1, false));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display((JceStruct) this.f2374mp, "header");
        jceDisplayer.display((Collection) this.f2375mq, "vecnamelist");
    }
}
