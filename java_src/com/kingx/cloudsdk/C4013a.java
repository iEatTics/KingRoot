package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import com.kingroot.kinguser.bne;
/* renamed from: com.kingx.cloudsdk.a */
/* loaded from: classes.dex */
public final class C4013a extends AbstractC4027cb implements Cloneable {

    /* renamed from: id */
    private int f4129id = 0;

    /* renamed from: aa */
    private int f4127aa = 0;

    /* renamed from: ab */
    private int f4128ab = 0;

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        C4013a c4013a = (C4013a) obj;
        return bne.equals(this.f4129id, c4013a.f4129id) && bne.equals(this.f4127aa, c4013a.f4127aa) && bne.equals(this.f4128ab, c4013a.f4128ab);
    }

    public final int hashCode() {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError();
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4129id, 0);
        bndVar.m6246am(this.f4127aa, 1);
        bndVar.m6246am(this.f4128ab, 2);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4129id = bncVar.m6274a(this.f4129id, 0, true);
        this.f4127aa = bncVar.m6274a(this.f4127aa, 1, true);
        this.f4128ab = bncVar.m6274a(this.f4128ab, 2, true);
    }
}
