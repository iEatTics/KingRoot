package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.cp */
/* loaded from: classes.dex */
public final class C2842cp extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2380lo;

    /* renamed from: mt */
    public String f2381mt = "";

    /* renamed from: mu */
    public int f2382mu = 0;

    static {
        f2380lo = !C2842cp.class.desiredAssertionStatus();
    }

    /* renamed from: aa */
    public String m4224aa() {
        return this.f2381mt;
    }

    /* renamed from: G */
    public void m4225G(String str) {
        this.f2381mt = str;
    }

    /* renamed from: ab */
    public int m4223ab() {
        return this.f2382mu;
    }

    /* renamed from: o */
    public void m4222o(int i) {
        this.f2382mu = i;
    }

    public C2842cp() {
        m4225G(this.f2381mt);
        m4222o(this.f2382mu);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2842cp c2842cp = (C2842cp) obj;
        return JceUtil.equals(this.f2381mt, c2842cp.f2381mt) && JceUtil.equals(this.f2382mu, c2842cp.f2382mu);
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
            if (f2380lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2381mt, 0);
        jceOutputStream.write(this.f2382mu, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m4225G(jceInputStream.readString(0, true));
        m4222o(jceInputStream.read(this.f2382mu, 1, true));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.f2381mt, "strsoftname");
        jceDisplayer.display(this.f2382mu, "nstatus");
    }
}
