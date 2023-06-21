package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.app.NotificationCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.pl */
/* loaded from: classes.dex */
public class C3426pl extends bzr {

    /* renamed from: yF */
    final /* synthetic */ cbe f3294yF;

    /* renamed from: yM */
    final /* synthetic */ String f3295yM;

    /* renamed from: yN */
    final /* synthetic */ NotificationCompat.Builder f3296yN;

    /* renamed from: yO */
    final /* synthetic */ int f3297yO;

    /* renamed from: yP */
    final /* synthetic */ C0708ad f3298yP;

    /* renamed from: yQ */
    final /* synthetic */ C3871x f3299yQ;

    /* renamed from: yR */
    final /* synthetic */ String f3300yR;

    /* renamed from: yS */
    final /* synthetic */ String f3301yS;

    /* renamed from: yT */
    final /* synthetic */ String f3302yT;

    /* renamed from: yU */
    final /* synthetic */ C3424pk f3303yU;

    /* renamed from: yr */
    final /* synthetic */ C3683u f3304yr;

    /* renamed from: yu */
    final /* synthetic */ Context f3305yu;

    /* renamed from: yv */
    final /* synthetic */ InterfaceC3443pv f3306yv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3426pl(C3424pk c3424pk, String str, NotificationCompat.Builder builder, int i, Context context, C0708ad c0708ad, C3871x c3871x, C3683u c3683u, String str2, String str3, String str4, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        this.f3303yU = c3424pk;
        this.f3295yM = str;
        this.f3296yN = builder;
        this.f3297yO = i;
        this.f3305yu = context;
        this.f3298yP = c0708ad;
        this.f3299yQ = c3871x;
        this.f3304yr = c3683u;
        this.f3300yR = str2;
        this.f3301yS = str3;
        this.f3302yT = str4;
        this.f3306yv = interfaceC3443pv;
        this.f3294yF = cbeVar;
    }

    @Override // com.kingroot.kinguser.bzr, java.lang.Runnable
    public void run() {
        C3422pj.m2645a(this.f3295yM, new C3434pm(this));
    }
}
