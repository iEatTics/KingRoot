package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.p004v4.app.NotificationCompat;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.pq */
/* loaded from: classes.dex */
public class C3438pq extends bzr {

    /* renamed from: yF */
    final /* synthetic */ cbe f3323yF;

    /* renamed from: yN */
    final /* synthetic */ NotificationCompat.Builder f3324yN;

    /* renamed from: yQ */
    final /* synthetic */ C3871x f3325yQ;

    /* renamed from: yU */
    final /* synthetic */ C3424pk f3326yU;

    /* renamed from: yZ */
    final /* synthetic */ String f3327yZ;

    /* renamed from: yr */
    final /* synthetic */ C3683u f3328yr;

    /* renamed from: yu */
    final /* synthetic */ Context f3329yu;

    /* renamed from: yv */
    final /* synthetic */ InterfaceC3443pv f3330yv;

    /* renamed from: za */
    final /* synthetic */ int f3331za;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3438pq(C3424pk c3424pk, String str, Context context, int i, C3871x c3871x, C3683u c3683u, NotificationCompat.Builder builder, InterfaceC3443pv interfaceC3443pv, cbe cbeVar) {
        this.f3326yU = c3424pk;
        this.f3327yZ = str;
        this.f3329yu = context;
        this.f3331za = i;
        this.f3325yQ = c3871x;
        this.f3328yr = c3683u;
        this.f3324yN = builder;
        this.f3330yv = interfaceC3443pv;
        this.f3323yF = cbeVar;
    }

    @Override // com.kingroot.kinguser.bzr, java.lang.Runnable
    public void run() {
        try {
            String m3668al = C3129go.m3668al(this.f3327yZ);
            if (!TextUtils.isEmpty(m3668al)) {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.addFlags(268435456);
                intent.setData(Uri.parse(m3668al));
                if (intent.resolveActivity(bzu.m5098ge().getPackageManager()) != null && cca.akH().m4973a("com.android.vending")) {
                    intent.setClassName("com.android.vending", "com.google.android.finsky.activities.MainActivity");
                }
                this.f3326yU.m2643a(this.f3329yu, this.f3331za + 3, intent, this.f3325yQ, this.f3328yr, this.f3324yN, this.f3330yv, this.f3323yF);
            }
        } catch (Exception e) {
        }
    }
}
