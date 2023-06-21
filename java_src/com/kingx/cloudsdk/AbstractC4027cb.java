package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.io.Serializable;
/* renamed from: com.kingx.cloudsdk.cb */
/* loaded from: classes.dex */
public abstract class AbstractC4027cb implements Serializable {
    /* renamed from: a */
    public abstract void mo1167a(bnc bncVar);

    /* renamed from: a */
    public abstract void mo1166a(bnd bndVar);

    /* renamed from: a */
    public void mo1165a(StringBuilder sb, int i) {
    }

    public final byte[] toByteArray() {
        bnd bndVar = new bnd();
        mo1166a(bndVar);
        return bndVar.toByteArray();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        mo1165a(sb, 0);
        return sb.toString();
    }
}
