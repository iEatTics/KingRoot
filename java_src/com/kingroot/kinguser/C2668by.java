package com.kingroot.kinguser;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import com.p019qq.taf.jce.JceUtil;
/* renamed from: com.kingroot.kinguser.by */
/* loaded from: classes.dex */
public final class C2668by extends JceStruct implements Cloneable {

    /* renamed from: a */
    static final /* synthetic */ boolean f2153a;

    /* renamed from: id */
    public int f2154id = 0;

    /* renamed from: lp */
    public int f2155lp = 0;

    /* renamed from: lq */
    public int f2156lq = 0;

    static {
        f2153a = !C2668by.class.desiredAssertionStatus();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C2668by c2668by = (C2668by) obj;
        return JceUtil.equals(this.f2154id, c2668by.f2154id) && JceUtil.equals(this.f2155lp, c2668by.f2155lp) && JceUtil.equals(this.f2156lq, c2668by.f2156lq);
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
            if (f2153a) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.f2154id, 0);
        jceOutputStream.write(this.f2155lp, 1);
        jceOutputStream.write(this.f2156lq, 2);
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.f2154id = jceInputStream.read(this.f2154id, 0, true);
        this.f2155lp = jceInputStream.read(this.f2155lp, 1, true);
        this.f2156lq = jceInputStream.read(this.f2156lq, 2, true);
    }
}
