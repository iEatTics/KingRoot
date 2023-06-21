package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.cb */
/* loaded from: classes.dex */
public final class C2696cb extends JceStruct implements Cloneable {

    /* renamed from: lo */
    static final /* synthetic */ boolean f2233lo;

    /* renamed from: it */
    public String f2234it = "";

    static {
        f2233lo = !C2696cb.class.desiredAssertionStatus();
    }

    public String getGuid() {
        return this.f2234it;
    }

    /* renamed from: E */
    public void m5027E(String str) {
        this.f2234it = str;
    }

    public C2696cb() {
        m5027E(this.f2234it);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return JceUtil.equals(this.f2234it, ((C2696cb) obj).f2234it);
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
            if (f2233lo) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2234it, 0);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        m5027E(jceInputStream.readString(0, true));
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void display(StringBuilder sb, int i) {
    }
}
