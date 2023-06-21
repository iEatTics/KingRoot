package com.kingx.cloudsdk;

import com.kingroot.kinguser.bnc;
import com.kingroot.kinguser.bnd;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.kingx.cloudsdk.w */
/* loaded from: classes.dex */
public final class C4051w extends AbstractC4027cb implements Cloneable {
    private static ArrayList<byte[]> bDq;

    /* renamed from: dr */
    private int f4363dr = 0;

    /* renamed from: ds */
    private int f4364ds = 0;

    /* renamed from: dt */
    private int f4365dt = 0;

    /* renamed from: du */
    private ArrayList<byte[]> f4366du = null;

    /* renamed from: dv */
    private int f4367dv = 0;

    /* renamed from: dw */
    private boolean f4368dw = false;

    /* renamed from: dx */
    private int f4369dx = 0;

    /* renamed from: c */
    public final void m1178c(int i) {
        this.f4363dr = 4;
    }

    /* renamed from: d */
    public final void m1177d(int i) {
        this.f4364ds = 0;
    }

    /* renamed from: jW */
    public final void m1176jW(int i) {
        this.f4365dt = 1;
    }

    /* renamed from: A */
    public final void m1180A(ArrayList<byte[]> arrayList) {
        this.f4366du = arrayList;
    }

    /* renamed from: O */
    public final void m1179O(int i) {
        this.f4367dv = 0;
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1166a(bnd bndVar) {
        bndVar.m6246am(this.f4363dr, 0);
        bndVar.m6246am(this.f4364ds, 1);
        bndVar.m6246am(this.f4365dt, 2);
        bndVar.m6251a((Collection) this.f4366du, 3);
        if (this.f4367dv != 0) {
            bndVar.m6246am(this.f4367dv, 4);
        }
        if (this.f4368dw) {
            bndVar.m6248a(this.f4368dw, 5);
        }
        if (this.f4369dx != 0) {
            bndVar.m6246am(this.f4369dx, 6);
        }
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1167a(bnc bncVar) {
        this.f4363dr = bncVar.m6274a(this.f4363dr, 0, true);
        this.f4364ds = bncVar.m6274a(this.f4364ds, 1, true);
        this.f4365dt = bncVar.m6274a(this.f4365dt, 2, true);
        if (bDq == null) {
            bDq = new ArrayList<>();
            bDq.add(new byte[]{0});
        }
        this.f4366du = (ArrayList) bncVar.m6264d(bDq, 3, true);
        this.f4367dv = bncVar.m6274a(this.f4367dv, 4, false);
        boolean z = this.f4368dw;
        this.f4368dw = bncVar.m6260y(5, false);
        this.f4369dx = bncVar.m6274a(this.f4369dx, 6, false);
    }

    @Override // com.kingx.cloudsdk.AbstractC4027cb
    /* renamed from: a */
    public final void mo1165a(StringBuilder sb, int i) {
    }
}
