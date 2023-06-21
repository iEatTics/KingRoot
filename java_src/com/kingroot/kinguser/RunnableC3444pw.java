package com.kingroot.kinguser;

import com.kingcom.module.network.shark.conch.notifyinfo.NotifyPushReceiver;
/* renamed from: com.kingroot.kinguser.pw */
/* loaded from: classes.dex */
public class RunnableC3444pw implements Runnable {

    /* renamed from: yp */
    final /* synthetic */ long f3343yp;

    /* renamed from: zh */
    final /* synthetic */ NotifyPushReceiver f3344zh;

    public RunnableC3444pw(NotifyPushReceiver notifyPushReceiver, long j) {
        this.f3344zh = notifyPushReceiver;
        this.f3343yp = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        cay.akw().akx().m2659gj().mo1790dd(String.valueOf(this.f3343yp));
    }
}
