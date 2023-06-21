package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.ga */
/* loaded from: classes.dex */
public class HandlerC3076ga extends Handler {

    /* renamed from: qi */
    final /* synthetic */ C3074fz f2697qi;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC3076ga(C3074fz c3074fz, Looper looper) {
        super(looper);
        this.f2697qi = c3074fz;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f2697qi.handleMessage(message);
    }
}
