package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import com.kingroot.common.utils.system.monitor.top.TopAppMonitorAccessibilityService;
/* loaded from: classes.dex */
public class abr {
    private static final cce<abr> sInstance = new cce<abr>() { // from class: com.kingroot.kinguser.abr.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: rq */
        public abr create() {
            return new abr();
        }
    };

    /* renamed from: ZH */
    private RunnableC3845wo f1363ZH = new RunnableC3845wo() { // from class: com.kingroot.kinguser.abr.2
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            super.run();
            abr.this.m12760rn();
            abq.m12777qY().setEnable(true);
            abq.m12777qY().m12776qZ();
            abp.m12781qW().setEnable(true);
            TopAppMonitorAccessibilityService.m13129ah(true);
        }
    };

    /* renamed from: ZI */
    private RunnableC3845wo f1364ZI = new RunnableC3845wo() { // from class: com.kingroot.kinguser.abr.3
        @Override // com.kingroot.kinguser.RunnableC3845wo, java.lang.Runnable
        public void run() {
            super.run();
            abr.this.m12759ro();
            abq.m12777qY().setEnable(false);
            abq.m12777qY().stop();
            abp.m12781qW().setEnable(false);
            TopAppMonitorAccessibilityService.m13129ah(false);
        }
    };

    /* renamed from: rk */
    public static abr m12763rk() {
        return sInstance.get();
    }

    /* renamed from: rl */
    public void m12762rl() {
        this.f1363ZH.m1544X(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ai */
    public static void m12768ai(boolean z) {
        abq.m12777qY().m12778ag(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rm */
    public static void m12761rm() {
        abq.m12777qY().m12775ra();
    }

    /* renamed from: aj */
    public void m12767aj(boolean z) {
        abq.m12777qY().m12779af(z);
    }

    /* renamed from: ak */
    public void m12766ak(boolean z) {
        if (z) {
            if (abq.m12777qY().isEnable()) {
                abq.m12777qY().setEnable(false);
            }
        } else if (abp.m12781qW().isEnable()) {
            abq.m12777qY().setEnable(true);
            abq.m12777qY().m12776qZ();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rn */
    public void m12760rn() {
        C3627tf.m2188a(0, C0644a.class, "android.intent.action.SCREEN_OFF", "android.intent.action.SCREEN_ON", "android.intent.action.USER_PRESENT");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ro */
    public void m12759ro() {
        C3627tf.m2184b(C0644a.class);
    }

    /* renamed from: com.kingroot.kinguser.abr$a */
    /* loaded from: classes.dex */
    public static class C0644a extends AbstractC3634th {
        @Override // com.kingroot.kinguser.AbstractC3634th
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_ON".equals(action)) {
                abr.m12768ai(true);
            } else if ("android.intent.action.SCREEN_OFF".equals(action)) {
                abr.m12768ai(false);
            } else if ("android.intent.action.USER_PRESENT".equals(action)) {
                abr.m12761rm();
            }
        }
    }
}
