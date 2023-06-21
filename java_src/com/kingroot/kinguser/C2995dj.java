package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.dj */
/* loaded from: classes.dex */
public final class C2995dj extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2454lo;

    /* renamed from: nk */
    public String f2455nk = "";

    /* renamed from: nl */
    public long f2456nl = 0;

    /* renamed from: nm */
    public long f2457nm = 0;

    /* renamed from: nn */
    public long f2458nn = 0;

    static {
        f2454lo = !C2995dj.class.desiredAssertionStatus();
    }

    /* renamed from: O */
    public void m3923O(String str) {
        this.f2455nk = str;
    }

    /* renamed from: m */
    public void m3922m(long j) {
        this.f2456nl = j;
    }

    /* renamed from: n */
    public void m3921n(long j) {
        this.f2457nm = j;
    }

    /* renamed from: o */
    public void m3920o(long j) {
        this.f2458nn = j;
    }

    public C2995dj() {
        m3923O(this.f2455nk);
        m3922m(this.f2456nl);
        m3921n(this.f2457nm);
        m3920o(this.f2458nn);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2995dj c2995dj = (C2995dj) obj;
        return JceUtil.equals(this.f2455nk, c2995dj.f2455nk) && JceUtil.equals(this.f2456nl, c2995dj.f2456nl) && JceUtil.equals(this.f2457nm, c2995dj.f2457nm) && JceUtil.equals(this.f2458nn, c2995dj.f2458nn);
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
            if (f2454lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2455nk, 0);
        jceOutputStream.write(this.f2456nl, 1);
        jceOutputStream.write(this.f2457nm, 2);
        jceOutputStream.write(this.f2458nn, 3);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m3923O(jceInputStream.readString(0, true));
        m3922m(jceInputStream.read(this.f2456nl, 1, false));
        m3921n(jceInputStream.read(this.f2457nm, 2, false));
        m3920o(jceInputStream.read(this.f2458nn, 3, false));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        JceDisplayer jceDisplayer = new JceDisplayer(sb, i);
        jceDisplayer.display(this.f2455nk, "strSoftName");
        jceDisplayer.display(this.f2456nl, "nAllow");
        jceDisplayer.display(this.f2457nm, "nRefuse");
        jceDisplayer.display(this.f2458nn, "nDefault");
    }
}
