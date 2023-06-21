package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class asd {
    private asc aMr = new asa();
    private asc aMs = new asa();

    /* renamed from: a */
    public synchronized void m9492a(asc ascVar) {
        if (ascVar != null) {
            this.aMs = this.aMr;
            this.aMr = ascVar;
        }
    }

    /* renamed from: gs */
    public synchronized boolean m9491gs(int i) {
        return this.aMr.m9494b(i, this);
    }

    /* renamed from: NK */
    public synchronized asc m9493NK() {
        return this.aMr;
    }
}
