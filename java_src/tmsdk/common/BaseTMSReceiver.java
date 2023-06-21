package tmsdk.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes.dex */
public abstract class BaseTMSReceiver extends BroadcastReceiver {
    /* renamed from: f */
    public abstract void mo5f(Context context, Intent intent);

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            mo5f(context, intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
