package com.tencent.securemodule.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes.dex */
public abstract class BaseReceiver extends BroadcastReceiver {
    /* renamed from: f */
    public abstract void mo416f(Context context, Intent intent);

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            mo416f(context, intent);
        } catch (Throwable th) {
        }
    }
}
