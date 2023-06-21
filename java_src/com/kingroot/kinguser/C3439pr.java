package com.kingroot.kinguser;

import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.pr */
/* loaded from: classes.dex */
public class C3439pr extends bzr {
    final /* synthetic */ int val$id;

    /* renamed from: yF */
    final /* synthetic */ cbe f3332yF;

    /* renamed from: yQ */
    final /* synthetic */ C3871x f3333yQ;

    /* renamed from: yU */
    final /* synthetic */ C3424pk f3334yU;

    /* renamed from: yr */
    final /* synthetic */ C3683u f3335yr;

    /* renamed from: zb */
    final /* synthetic */ InterfaceC3443pv f3336zb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3439pr(C3424pk c3424pk, int i, InterfaceC3443pv interfaceC3443pv, cbe cbeVar, C3871x c3871x, C3683u c3683u) {
        this.f3334yU = c3424pk;
        this.val$id = i;
        this.f3336zb = interfaceC3443pv;
        this.f3332yF = cbeVar;
        this.f3333yQ = c3871x;
        this.f3335yr = c3683u;
    }

    @Override // com.kingroot.kinguser.bzr, java.lang.Runnable
    public void run() {
        StatusBarNotification statusBarNotification;
        StatusBarNotification statusBarNotification2;
        StatusBarNotification statusBarNotification3;
        try {
            Thread.sleep(300L);
        } catch (Throwable th) {
        }
        String str = null;
        int i = 2;
        String packageName = bzu.m5098ge().getPackageName();
        statusBarNotification = this.f3334yU.f3292yL;
        if (statusBarNotification != null && Build.VERSION.SDK_INT >= 18) {
            statusBarNotification2 = this.f3334yU.f3292yL;
            if (TextUtils.equals(packageName, statusBarNotification2.getPackageName())) {
                int i2 = this.val$id;
                statusBarNotification3 = this.f3334yU.f3292yL;
                if (i2 == statusBarNotification3.getId()) {
                    str = "1";
                    i = 1;
                }
            }
        }
        cby mo2618cj = this.f3336zb.mo2618cj("dumpsys notification");
        if (mo2618cj != null && mo2618cj.mStdOut != null) {
            String str2 = mo2618cj.mStdOut;
            String hexString = Integer.toHexString(this.val$id);
            if (str2.contains(packageName) && (str2.contains("id=" + this.val$id) || str2.contains("id=" + hexString))) {
                str = "1";
                i = 1;
            }
        }
        this.f3332yF.mo1789m(String.valueOf(this.f3333yQ.f3936gt), "1", str);
        this.f3334yU.m2636a(this.f3333yQ, this.f3335yr, 1, i);
    }
}
