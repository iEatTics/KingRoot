package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceDisplayer;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.eq */
/* loaded from: classes.dex */
public final class C3029eq extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2617lo;

    /* renamed from: nk */
    public String f2618nk = "";

    static {
        f2617lo = !C3029eq.class.desiredAssertionStatus();
    }

    /* renamed from: O */
    public void m3899O(String str) {
        this.f2618nk = str;
    }

    public C3029eq() {
        m3899O(this.f2618nk);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.f2618nk, ((C3029eq) obj).f2618nk);
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
            if (f2617lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2618nk, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m3899O(jceInputStream.readString(0, true));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
        new JceDisplayer(sb, i).display(this.f2618nk, "strSoftName");
    }
}
