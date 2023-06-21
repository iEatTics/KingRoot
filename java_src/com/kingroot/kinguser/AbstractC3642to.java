package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.support.annotation.BinderThread;
import android.support.annotation.MainThread;
/* renamed from: com.kingroot.kinguser.to */
/* loaded from: classes.dex */
public abstract class AbstractC3642to {
    @MainThread
    /* renamed from: I */
    public abstract void mo2133I(Context context);

    @MainThread
    /* renamed from: a */
    public abstract void mo2132a(Intent intent);

    @BinderThread
    /* renamed from: jR */
    public abstract void mo2131jR();

    @BinderThread
    public abstract IBinder onBind(Intent intent);

    @MainThread
    public abstract void onDestroy();

    @MainThread
    public abstract void onStop();
}
