package com.kingroot.kinguser;

import java.io.File;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.ik */
/* loaded from: classes.dex */
public class C3186ik extends RunnableC3305mg {

    /* renamed from: rm */
    final /* synthetic */ int f2833rm;

    /* renamed from: rn */
    final /* synthetic */ String f2834rn;

    /* renamed from: ro */
    final /* synthetic */ C3178id f2835ro;

    /* renamed from: sc */
    final /* synthetic */ String f2836sc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3186ik(C3178id c3178id, int i, String str, String str2) {
        this.f2835ro = c3178id;
        this.f2833rm = i;
        this.f2836sc = str;
        this.f2834rn = str2;
    }

    @Override // com.kingroot.kinguser.RunnableC3305mg, java.lang.Runnable
    public void run() {
        int m3562c;
        m3562c = this.f2835ro.m3562c(this.f2833rm, this.f2836sc, this.f2834rn);
        try {
            new File(this.f2836sc).delete();
        } catch (Throwable th) {
        }
        this.f2835ro.m3572a(3, m3562c);
    }
}
