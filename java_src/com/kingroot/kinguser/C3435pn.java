package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.app.NotificationCompat;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.pn */
/* loaded from: classes.dex */
public class C3435pn extends bzr {

    /* renamed from: yF */
    final /* synthetic */ cbe f3309yF;

    /* renamed from: yN */
    final /* synthetic */ NotificationCompat.Builder f3310yN;

    /* renamed from: yP */
    final /* synthetic */ C0708ad f3311yP;

    /* renamed from: yQ */
    final /* synthetic */ C3871x f3312yQ;

    /* renamed from: yR */
    final /* synthetic */ String f3313yR;

    /* renamed from: yS */
    final /* synthetic */ String f3314yS;

    /* renamed from: yT */
    final /* synthetic */ String f3315yT;

    /* renamed from: yU */
    final /* synthetic */ C3424pk f3316yU;

    /* renamed from: yW */
    final /* synthetic */ NotificationCompat.BigPictureStyle f3317yW;

    /* renamed from: yr */
    final /* synthetic */ C3683u f3318yr;

    /* renamed from: yu */
    final /* synthetic */ Context f3319yu;

    /* renamed from: yv */
    final /* synthetic */ InterfaceC3443pv f3320yv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3435pn(C3424pk c3424pk, String str, NotificationCompat.Builder builder, String str2, String str3, NotificationCompat.BigPictureStyle bigPictureStyle, Context context, C3683u c3683u, C3871x c3871x, C0708ad c0708ad, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        this.f3316yU = c3424pk;
        this.f3315yT = str;
        this.f3310yN = builder;
        this.f3313yR = str2;
        this.f3314yS = str3;
        this.f3317yW = bigPictureStyle;
        this.f3319yu = context;
        this.f3318yr = c3683u;
        this.f3312yQ = c3871x;
        this.f3311yP = c0708ad;
        this.f3320yv = interfaceC3443pv;
        this.f3309yF = cbeVar;
    }

    @Override // com.kingroot.kinguser.bzr, java.lang.Runnable
    public void run() {
        C3422pj.m2645a(this.f3315yT, new C3436po(this));
    }
}
