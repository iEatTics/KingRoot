package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.dg */
/* loaded from: classes.dex */
public final class C2860dg extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2442lo;

    /* renamed from: lw */
    static C2859df f2443lw;
    public C2859df softkey = null;

    static {
        f2442lo = !C2860dg.class.desiredAssertionStatus();
    }

    /* renamed from: a */
    public void m4203a(C2859df c2859df) {
        this.softkey = c2859df;
    }

    public C2860dg() {
        m4203a(this.softkey);
    }

    public C2860dg(C2859df c2859df) {
        m4203a(c2859df);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.softkey, ((C2860dg) obj).softkey);
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
            if (f2442lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write((JceStruct) this.softkey, 1);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        if (f2443lw == null) {
            f2443lw = new C2859df();
        }
        m4203a((C2859df) jceInputStream.read((JceStruct) f2443lw, 1, true));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        new JceDisplayer(sb, i).display((JceStruct) this.softkey, "softkey");
    }
}
