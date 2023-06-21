package com.king.uranus;

import com.kingroot.kinguser.C3322mq;
import com.kingroot.kinguser.C3324mr;
import com.kingroot.kinguser.C3325ms;
/* renamed from: com.king.uranus.q */
/* loaded from: classes.dex */
public final class C0422q extends AbstractC0404cS implements Cloneable {

    /* renamed from: wd */
    static final /* synthetic */ boolean f400wd;

    /* renamed from: bk */
    public String f401bk = "";

    static {
        f400wd = !C0422q.class.desiredAssertionStatus();
    }

    /* renamed from: j */
    public void m13635j(String str) {
        this.f401bk = str;
    }

    public C0422q() {
        m13635j(this.f401bk);
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        return C3325ms.equals(this.f401bk, ((C0422q) obj).f401bk);
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
            if (f400wd) {
                return null;
            }
            throw new AssertionError();
        }
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13632a(C3324mr c3324mr) {
        c3324mr.m2981f(this.f401bk, 0);
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13633a(C3322mq c3322mq) {
        m13635j(c3322mq.m3013b(0, true));
    }

    @Override // com.king.uranus.AbstractC0404cS
    /* renamed from: a */
    public void mo13634a(StringBuilder sb, int i) {
    }
}
